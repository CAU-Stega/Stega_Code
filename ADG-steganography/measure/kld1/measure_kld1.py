import torch
import torch.nn.functional as F
import numpy as np
import collections

import sys
sys.path.append('..')
sys.path.append('../..')
import utils
import lm

import os
os.environ["CUDA_VISIBLE_DEVICES"] = "0"


# e.g. [0, 1, 1, 1] looks like 1110=14
def bits2int(bits):
    res = 0
    for i, bit in enumerate(bits):
        res += bit*(2**i)
    return res


def int2bits(inp, num_bits):
    if num_bits == 0:
        return []
    strlist = ('{0:0%db}'%num_bits).format(inp)
    return [int(strval) for strval in reversed(strlist)]


def kl(q, logq, logp):
    res = q*(logq-logp)/0.69315
    res[q == 0] = 0
    return res.sum().item()     # in bits


def near(alist, anum):
    up = len(alist) - 1
    if up == 0:
        return 0
    bottom = 0
    while up - bottom > 1:
        index = int((up + bottom)/2)
        if alist[index] < anum:
            up = index
        elif alist[index] > anum:
            bottom = index
        else:
            return index
    if up - bottom == 1:
        if alist[bottom] - anum < anum - up:
            index = bottom
        else:
            index = up
    return index


def main():
    # ======================
    # hyperparameters
    # ======================'
    CELL = "lstm"                   # rnn, gru, lstm
    DATASET = 'tweet'				# movie, news, tweet
    WORD_DROP = 10
    MIN_LEN = 5
    MAX_LEN = 200
    EMBED_SIZE = 350
    HIDDEN_DIM = 512
    NUM_LAYERS = 2
    DROPOUT_RATE = 0.0
    MAX_GENERATE_LENGTH = 200
    GENERATE_NUM = 1000

    if DATASET == 'movie':
        LOAD_EPOCH = 6
    elif DATASET == 'news':
        LOAD_EPOCH = 10
    elif DATASET == 'tweet':
        LOAD_EPOCH = 6
    else:
        raise Exception

    all_var = locals()
    print()
    for var in all_var:
        if var != "var_name":
            print("{0:15}   ".format(var), all_var[var])
    print()

    # ======================
    # data
    # ======================
    data_path = '../../data/' + DATASET + '2020.txt'
    vocabulary = utils.Vocabulary(
        data_path,
        max_len=MAX_LEN,
        min_len=MIN_LEN,
        word_drop=WORD_DROP
    )

    # ======================
    # building model
    # ======================
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    print(device)
    model = lm.LM(
        cell=CELL,
        vocab_size=vocabulary.vocab_size,
        embed_size=EMBED_SIZE,
        hidden_dim=HIDDEN_DIM,
        num_layers=NUM_LAYERS,
        dropout_rate=DROPOUT_RATE
    )
    model.to(device)
    total_params = sum(p.numel() for p in model.parameters())
    print("Total params: {:d}".format(total_params))
    total_trainable_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print("Trainable params: {:d}".format(total_trainable_params))
    model.load_state_dict(torch.load('../../models/' + DATASET + '-' + str(LOAD_EPOCH) + '.pkl', map_location=device))
    print('checkpoint loaded')
    print()

    # ======================
    # start steganography
    # ======================
    # read bit streams
    with open('../../bit_stream/bit_stream.txt', 'r', encoding='utf8') as f:
        bit_stream = f.read().strip()
        bit_stream += bit_stream
    bit_index = int(torch.randint(0, high=1000, size=(1,)))

    model.eval()
    with torch.no_grad():
            all_kl = []
            stega_text = []
            stega_bits = []
            while len(stega_text) < 10:
                stega_sentence = []
                stega_bit = ''
                x = torch.LongTensor([[vocabulary.w2i['_BOS']]]).to(device)
                samp = model.sample(x)
                stega_sentence.append(vocabulary.i2w[samp.reshape(-1).cpu().numpy()[0]])
                x = torch.cat([x, samp], dim=1)

                for i in range(MAX_GENERATE_LENGTH - 1):
                    print(len(stega_text), i)
                    if '_EOS' in stega_sentence:
                        break
                    # conditional probability distribution
                    logits = model(x, logits=True)
                    logits = logits[:, -1, :].reshape(-1)
                    logits[1] = -1e20
                    log_prob = F.log_softmax(logits)
                    prob = F.softmax(logits)

                    def split2(prob, indices, k):
                        prob = prob / prob.sum()
                        if prob[0] > 0.5:
                            return None
                        bit = 1
                        while (1 / 2 ** (bit + 1)) > prob[0]:
                            bit += 1
                        mean = 1 / 2 ** bit
                        # dp
                        prob = prob.tolist()
                        indices = indices.tolist()
                        result = []
                        for i in range(2 ** bit):
                            result.append([[], [], []])
                        for i in range(2 ** bit - 1):
                            result[i][0].append(prob[0])
                            result[i][1].append(indices[0])
                            result[i][2] = k + bit
                            del (prob[0])
                            del (indices[0])
                            while sum(result[i][0]) < mean:
                                delta = mean - sum(result[i][0])
                                index = near(prob, delta)
                                if prob[index] - delta < delta:
                                    result[i][0].append(prob[index])
                                    result[i][1].append(indices[index])
                                    del (prob[index])
                                    del (indices[index])
                                else:
                                    break
                            mean = sum(prob) / (2 ** bit - i - 1)
                        result[2 ** bit - 1][0].extend(prob)
                        result[2 ** bit - 1][1].extend(indices)
                        result[2 ** bit - 1][2] = k + bit
                        return result

                    queue = collections.deque()
                    queue.append((torch.LongTensor(list(range(prob.shape[0]))), 0))
                    f = []
                    while len(queue) > 0:
                        indices, k = queue.popleft()
                        p = prob[indices]
                        p, ind = p.sort(descending=True)
                        indices = indices[ind]
                        result = split2(p, indices, k)
                        if result is None:
                            f.append((indices, k))
                        else:
                            for _ in range(len(result)):
                                queue.append((torch.LongTensor(result[_][1]), result[_][2]))

                    q = prob.clone()
                    q[:] = 0
                    for ind, k in f:
                        q[ind] = prob[ind] / prob[ind].sum() * 0.5**k

                    prob, indices = prob.sort(descending=True)
                    # start recursion
                    bit_tmp = 0
                    while prob[0] <= 0.5:
                        # embedding bit
                        bit = 1
                        while (1 / 2 ** (bit + 1)) > prob[0]:
                            bit += 1
                        mean = 1 / 2 ** bit
                        # dp
                        prob = prob.tolist()
                        indices = indices.tolist()
                        result = []
                        for i in range(2 ** bit):
                            result.append([[], []])
                        for i in range(2 ** bit - 1):
                            result[i][0].append(prob[0])
                            result[i][1].append(indices[0])
                            del (prob[0])
                            del (indices[0])
                            while sum(result[i][0]) < mean:
                                delta = mean - sum(result[i][0])
                                index = near(prob, delta)
                                if prob[index] - delta < delta:
                                    result[i][0].append(prob[index])
                                    result[i][1].append(indices[index])
                                    del (prob[index])
                                    del (indices[index])
                                else:
                                    break
                            mean = sum(prob) / (2 ** bit - i - 1)
                        result[2 ** bit - 1][0].extend(prob)
                        result[2 ** bit - 1][1].extend(indices)
                        # read secret message
                        bit_embed = [int(_) for _ in bit_stream[bit_index + bit_tmp:bit_index + bit_tmp + bit]]
                        int_embed = bits2int(bit_embed)
                        # updating
                        prob = torch.FloatTensor(result[int_embed][0]).to(device)
                        indices = torch.LongTensor(result[int_embed][1]).to(device)
                        prob = prob / prob.sum()
                        prob, _ = prob.sort(descending=True)
                        indices = indices[_]
                        bit_tmp += bit

                    # terminate
                    gen = int(indices[int(torch.multinomial(prob, 1))])
                    stega_sentence += [vocabulary.i2w[gen]]

                    if vocabulary.i2w[gen] == '_EOS':
                        break
                    x = torch.cat([x, torch.LongTensor([[gen]]).to(device)], dim=1).to(device)
                    stega_bit += bit_stream[bit_index:bit_index + bit_tmp]
                    bit_index += bit_tmp
                    all_kl.append(kl(q, q.log(), log_prob))

                # check
                if '_EOS' in stega_sentence:
                    stega_sentence.remove('_EOS')
                if (len(stega_sentence) <= MAX_LEN) and (len(stega_sentence) >= MIN_LEN):
                    stega_text.append(stega_sentence)
                    stega_bits.append(stega_bit)

            print(np.mean(all_kl))


if __name__ == '__main__':
    main()
