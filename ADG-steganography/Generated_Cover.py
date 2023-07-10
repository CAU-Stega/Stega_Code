import torch

import utils
import lm

import os

os.environ['CUDA_VISIBLE_DEVICES'] = '0'


def main():
    # ===================
    # hyper-parameters
    #====================
    CELL = "lstm"      # rnn, gru, lstm
    DATASET = 'news'   # movie, news, tweet
    WORD_DROP = 10
    MIN_LEN = 5
    MAX_LEN = 200
    EMBED_SIZE = 350
    HIDDEN_DIM = 512
    NUM_LAYERS = 2
    DROPOUT_RATE = 0.0
    MAX_GENERATE_LENGTH = 200
    GENERATE_NUM = 2000

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
            print("{0:15} ".format(var), all_var[var])
    print()

    # ========
    # data
    # ========
    data_path = 'data/' + DATASET + '2020.txt'
    vocabulary = utils.Vocabulary(
                    data_path,
                    max_len = MAX_LEN,
                    min_len = MIN_LEN,
                    word_drop = WORD_DROP
                    )


    # ===============
    # building model
    # ===============

    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    print('device: ', device)
    print()
    model = lm.LM(cell=CELL,
                  vocab_size = vocabulary.vocab_size,
                  embed_size = EMBED_SIZE,
                  hidden_dim = HIDDEN_DIM,
                  num_layers = NUM_LAYERS,
                  dropout_rate = DROPOUT_RATE)
    model.to(device)
    total_params = sum(p.numel() for p in model.parameters())
    print("Total params: {:d}".format(total_params))
    total_trainable_params = sum(p.numel() for p in model.parameters() \
                                 if p.requires_grad)
    print("Trainable_params: {:d}".format(total_trainable_params))
    model.load_state_dict(torch.load('models/' + DATASET + '-' + str(LOAD_EPOCH) + '.pkl', map_location=device))
    print('checkpoint loaded...')
    print()

    print('start generating normal texts....')
    os.makedirs('stego2/' + DATASET, exist_ok=True)

    model.eval()
    with torch.no_grad():
        norm_text = []
        while len(norm_text) < GENERATE_NUM:
            if len(norm_text) % 100 == 0:
                print('the length of norm_text: ', len(norm_text))
            norm_sentence = []
            x = torch.LongTensor([[vocabulary.w2i['_BOS']]]).to(device)
            samp = model.sample(x)
            norm_sentence.append(vocabulary.i2w[samp.reshape(-1).cpu().numpy()[0]])
            for i in range(MAX_GENERATE_LENGTH - 1):
                if '_EOS' in norm_sentence:
                    break
                x = torch.cat([x, samp], dim = 1)
                samp = model.sample(x)
                norm_sentence.append(vocabulary.i2w[samp.reshape(-1).cpu().numpy()[0]])

            # check
            if '_EOS' in norm_sentence:
                norm_sentence.remove('_EOS')
            if (len(norm_sentence) <= MAX_LEN) and (len(norm_sentence) >= MIN_LEN):
                norm_text.append(norm_sentence)

        # write files
        with open('stego2/' + DATASET + '/No_embed_test.txt', 'w', encoding='utf8') as f:
            for sentence in norm_text:
                f.write(' '.join(sentence) + '\n')
            

if __name__ == '__main__':
    main()
