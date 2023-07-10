#!/bin/bash

# Language_Models=(LSTM)
# Corpora=(IMDB IMDB)
# Algorithms=(HC AC)
# Payloads=(1 2 3 4 5 6 7 8)
# 
# for lm in ${Language_Models[*]}
#     do
#     for corpus in ${Corpora[*]}
#         do
#         for al in ${Algorithms[*]}
#             do
#             for bpw in ${Payloads[*]}
#                 do
#                 python main.py \
                    # -save-dir snapshot/single/${lm}/${corpus}/${al}_${bpw}bpw/ \
                    # -train-cover-dir /data/Text_data/cover/single_data/actual_cover_data/${corpus}_train.txt \
                    # -train-stego-dir /data/Text_data/stego/single_data/${lm}/${corpus}/${al}/TRN/stego_${bpw}bpw.txt \
                    # -idx-gpu 3
# 
                #  python main.py 
                #     -save-dir snapshot/single/${lm}/${corpus}/${al}_${bpw}bpw/ \
                #     -train-cover-dir /data/Text_data/cover/single_data/actual_cover_data/${corpus}_train.txt \
                #     -train-stego-dir /data/Text_data/stego/single_data/${lm}/${corpus}/${al}/TRN/stego_${bpw}bpw.txt \
                #     -test-cover-dir /data/Text_data/cover/single_data/actual_cover_data/${corpus}_test.txt \
                #     -test-stego-dir /data/Text_data/stego/single_data/${lm}/${corpus}/${al}/TST/stego_${bpw}bpw.txt \
                #     -test True \
                #     -idx-gpu 3 
#                 done
#             done
#         done
#     done




# python main.py -save-dir snapshot/single/LSTM/IMDB/HC_1bpw/ -train-cover-dir /data/Text_data/cover/single_data/actual_cover_data/IMDB_train.txt -train-stego-dir /data/Text_data/stego/single_data/LSTM/IMDB/HC/TRN/stego_1bpw.txt -idx-gpu 0

# python main.py -save-dir snapshot/single/LSTM/IMDB/ADG/ -train-cover-dir /hotdata/Text_data/cover/single_data/actual_cover_data/IMDB_train.txt -train-stego-dir /hotdata/Text_data/stego/single_data/LSTM/IMDB/ADG/stego_train.txt -idx-gpu 0 

# python main.py -save-dir snapshot/single/LSTM/IMDB/ADG/ -train-cover-dir /hotdata/Text_data/cover/single_data/actual_cover_data/IMDB_train.txt -train-stego-dir /hotdata/Text_data/stego/single_data/LSTM/IMDB/ADG/stego_train.txt -test-cover-dir /hotdata/Text_data/cover/single_data/actual_cover_data/IMDB_test.txt -test-stego-dir /hotdata/Text_data/stego/single_data/LSTM/IMDB/ADG/stego_test.txt -test True -idx-gpu 0 


# python main.py -save-dir snapshot/single/LSTM/IMDB/ADG/ -train-cover-dir /hotdata/Text_data/cover/single_data/actual_cover_data/IMDB_train.txt -train-stego-dir /hotdata/Text_data/stego/single_data/LSTM/IMDB/ADG/stego_train.txt -idx-gpu 0 


# python main.py -save-dir snapshot/single/LSTM/IMDB/ADG/ -train-cover-dir /hotdata/Text_data/cover/single_data/actual_cover_data/IMDB_train.txt -train-stego-dir /hotdata/Text_data/stego/single_data/LSTM/IMDB/ADG/stego_train.txt -test-cover-dir /hotdata/Text_data/cover/single_data/actual_cover_data/IMDB_test.txt -test-stego-dir /hotdata/Text_data/stego/single_data/LSTM/IMDB/ADG/stego_test.txt -test True -idx-gpu 0 

python main.py \
    -save-dir snapshot/single/LSTM/IMDB/AC_3bpw/ \
    -train-cover-dir /data/Text_data/cover/single_data/actual_cover_data/IMDB_train.txt \
    -train-stego-dir /data/Text_data/stego/single_data/LSTM/IMDB/AC/TRN/stego_3bpw.txt \
    -idx-gpu 0


python main.py \
    -save-dir snapshot/single/LSTM/IMDB/AC_3bpw/ \
    -train-cover-dir /data/Text_data/cover/single_data/actual_cover_data/IMDB_train.txt \
    -train-stego-dir /data/Text_data/stego/single_data/LSTM/IMDB/AC/TRN/stego_3bpw.txt \
    -test-cover-dir /data/Text_data/cover/single_data/actual_cover_data/IMDB_test.txt \
    -test-stego-dir /data/Text_data/stego/single_data/LSTM/IMDB/AC/TST/stego_3bpw.txt \
    -test True \
    -idx-gpu 0




python main.py -save-dir snapshot/single/LS_CNN/News/AC_3bpw/ -train-cover-dir ../ContrastiveData/News/AC/0.txt -train-stego-dir ../ContrastiveData/News/AC/3.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/News/AC_3bpw/ -train-cover-dir ../ContrastiveData/News/AC/0.txt -train-stego-dir ../ContrastiveData/News/AC/3.txt -test-cover-dir ../ContrastiveData/News/AC/0_test.txt -test-stego-dir ../ContrastiveData/News/AC/3_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/LS_CNN/News/ADG3_xbpw/ -train-cover-dir ../ContrastiveData/News/ADG3/0.txt -train-stego-dir ../ContrastiveData/News/ADG3/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/News/ADG3_xbpw/ -train-cover-dir ../ContrastiveData/News/ADG3/0.txt -train-stego-dir ../ContrastiveData/News/ADG3/x.txt -test-cover-dir ../ContrastiveData/News/ADG3/0_test.txt -test-stego-dir ../ContrastiveData/News/ADG3/x_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/LS_CNN/News/ADG2_1.778bpw/ -train-cover-dir ../ContrastiveData/News/ADG2/0.txt -train-stego-dir ../ContrastiveData/News/ADG2/1.778bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/News/ADG2_1.778bpw/ -train-cover-dir ../ContrastiveData/News/ADG2/0.txt -train-stego-dir ../ContrastiveData/News/ADG2/1.778bpw.txt -test-cover-dir ../ContrastiveData/News/ADG2/0_test.txt -test-stego-dir ../ContrastiveData/News/ADG2/1.778bpw_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/LS_CNN/IMDB/ADG2_1.765bpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG2/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG2/1.765bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/IMDB/ADG2_1.765bpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG2/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG2/1.765bpw.txt -test-cover-dir ../ContrastiveData/IMDB/ADG2/0_test.txt -test-stego-dir ../ContrastiveData/IMDB/ADG2/1.765bpw_test.txt -test True -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense/IMDB/ADG2_1.765bpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG2/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG2/1.765bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense/IMDB/ADG2_1.765bpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG2/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG2/1.765bpw.txt -test-cover-dir ../ContrastiveData/IMDB/ADG2/0_test.txt -test-stego-dir ../ContrastiveData/IMDB/ADG2/1.765bpw_test.txt -test True -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/IMDB/ADG2_1.765bpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG2/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG2/1.765bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/IMDB/ADG2_1.765bpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG2/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG2/1.765bpw.txt -test-cover-dir ../ContrastiveData/IMDB/ADG2/0_test.txt -test-stego-dir ../ContrastiveData/IMDB/ADG2/1.765bpw_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/LS_CNN/IMDB/ADG2_xbpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG2/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG2/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/IMDB/ADG2_xbpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG2/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG2/x.txt -test-cover-dir ../ContrastiveData/IMDB/ADG2/0_test.txt -test-stego-dir ../ContrastiveData/IMDB/ADG2/x_test.txt -test True -idx-gpu 0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             -test True -idx-gpu 0



python main.py -save-dir snapshot/single/LS_CNN/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -test-cover-dir ../ContrastiveData/Twitter/ADG/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/ADG/x_test.txt -test True -idx-gpu 0



python main.py -save-dir snapshot/single/LS_CNN/Twitter/HC_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/HC/0.txt -train-stego-dir ../ContrastiveData/Twitter/HC/1.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/Twitter/HC_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/HC/0.txt -train-stego-dir ../ContrastiveData/Twitter/HC/1.txt -test-cover-dir ../ContrastiveData/Twitter/HC/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/HC/1_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/BiLSTM_Dense/Twitter/HC_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/HC/0.txt -train-stego-dir ../ContrastiveData/Twitter/HC/1.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense/Twitter/HC_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/HC/0.txt -train-stego-dir ../ContrastiveData/Twitter/HC/1.txt -test-cover-dir ../ContrastiveData/Twitter/HC/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/HC/1_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BiLSTM_Dense/Twitter/AC_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/AC/0.txt -train-stego-dir ../ContrastiveData/Twitter/AC/1.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense/Twitter/AC_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/AC/0.txt -train-stego-dir ../ContrastiveData/Twitter/AC/1.txt -test-cover-dir ../ContrastiveData/Twitter/AC/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/AC/1_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BiLSTM_Dense/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -test-cover-dir ../ContrastiveData/Twitter/ADG/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/ADG/x_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BiLSTM_Dense/IMDB/HC2_2bpw/ -train-cover-dir ../ContrastiveData/IMDB/HC/0.txt -train-stego-dir ../ContrastiveData/IMDB/HC/2.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense/IMDB/ADG_xbpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG/x.txt -test-cover-dir ../ContrastiveData/IMDB/ADG/0_test.txt -test-stego-dir ../ContrastiveData/IMDB/ADG/x_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BiLSTM_Dense/News/ADG3_xbpw/ -train-cover-dir ../ContrastiveData/News/ADG3/0.txt -train-stego-dir ../ContrastiveData/News/ADG3/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense/News/ADG3_xbpw/ -train-cover-dir ../ContrastiveData/News/ADG3/0.txt -train-stego-dir ../ContrastiveData/News/ADG3/x.txt -test-cover-dir ../ContrastiveData/News/ADG3/0_test.txt -test-stego-dir ../ContrastiveData/News/ADG3/x_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/LS_CNN/News/ADG3_xbpw/ -train-cover-dir ../ContrastiveData/News/ADG3/0.txt -train-stego-dir ../ContrastiveData/News/ADG3/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/News/ADG3_xbpw/ -train-cover-dir ../ContrastiveData/News/ADG3/0.txt -train-stego-dir ../ContrastiveData/News/ADG3/x.txt -test-cover-dir ../ContrastiveData/News/ADG3/0_test.txt -test-stego-dir ../ContrastiveData/News/ADG3/x_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/BERT/Twitter/HC_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/HC/0.txt -train-stego-dir ../ContrastiveData/Twitter/HC/1.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/Twitter/HC_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/HC/0.txt -train-stego-dir ../ContrastiveData/Twitter/HC/1.txt -test-cover-dir ../ContrastiveData/Twitter/HC/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/HC/1_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/BERT/IMDB/AC_1bpw/ -train-cover-dir ../ContrastiveData/IMDB/AC/0.txt -train-stego-dir ../ContrastiveData/IMDB/AC/1.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/IMDB/AC_1bpw/ -train-cover-dir ../ContrastiveData/IMDB/AC/0.txt -train-stego-dir ../ContrastiveData/IMDB/AC/1.txt -test-cover-dir ../ContrastiveData/IMDB/AC/0_test.txt -test-stego-dir ../ContrastiveData/IMDB/AC/1_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BERT/IMDB/HC2_1bpw/ -train-cover-dir ../ContrastiveData/IMDB/HC2/0.txt -train-stego-dir ../ContrastiveData/IMDB/HC2/1.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/IMDB/HC2_1bpw/ -train-cover-dir ../ContrastiveData/IMDB/HC2/0.txt -train-stego-dir ../ContrastiveData/IMDB/HC2/1.txt -test-cover-dir ../ContrastiveData/IMDB/HC2/0_test.txt -test-stego-dir ../ContrastiveData/IMDB/HC2/1_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/BERT/IMDB/ADG_xbpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/IMDB/ADG_xbpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG/x.txt -test-cover-dir ../ContrastiveData/IMDB/ADG/0_test.txt -test-stego-dir ../ContrastiveData/IMDB/ADG/x_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BERT/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -test-cover-dir ../ContrastiveData/Twitter/ADG/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/ADG/x_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BERT/News/ADG3_xbpw/ -train-cover-dir ../ContrastiveData/News/ADG3/0.txt -train-stego-dir ../ContrastiveData/News/ADG3/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/News/ADG3_xbpw/ -train-cover-dir ../ContrastiveData/News/ADG3/0.txt -train-stego-dir ../ContrastiveData/News/ADG3/x.txt -test-cover-dir ../ContrastiveData/News/ADG3/0_test.txt -test-stego-dir ../ContrastiveData/News/ADG3/x_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/LS_CNN_DualCL/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN_DualCL/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -test-cover-dir ../ContrastiveData/Twitter/ADG/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/ADG/x_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/LS_CNN_DualCL/Twitter/VLC2_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/VLC/0.txt -train-stego-dir ../ContrastiveData/Twitter/VLC/1.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN_DualCL/Twitter/VLC2_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/VLC/0.txt -train-stego-dir ../ContrastiveData/Twitter/VLC/1.txt -test-cover-dir ../ContrastiveData/Twitter/VLC/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/VLC/1_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/BiLSTM_Dense_DualCL/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense_DualCL/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -test-cover-dir ../ContrastiveData/Twitter/ADG/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/ADG/x_test.txt -test True -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense_DualCL/IMDB/ADG_xbpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense_DualCL/IMDB/ADG_xbpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG/x.txt -test-cover-dir ../ContrastiveData/IMDB/ADG/0_test.txt -test-stego-dir ../ContrastiveData/IMDB/ADG/x_test.txt -test True -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense_DualCL/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense_DualCL/Twitter/ADG_xbpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG/x.txt -test-cover-dir ../ContrastiveData/Twitter/ADG/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/ADG/x_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/BERT_DualCL/Twitter/AC_4bpw/ -train-cover-dir ../ContrastiveData/Twitter/AC/0.txt -train-stego-dir ../ContrastiveData/Twitter/AC/4.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT_DualCL/Twitter/AC_4bpw/ -train-cover-dir ../ContrastiveData/Twitter/AC/0.txt -train-stego-dir ../ContrastiveData/Twitter/AC/4.txt -test-cover-dir ../ContrastiveData/Twitter/AC/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/AC/4_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BERT_DualCL/Twitter/AC2_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/AC/0.txt -train-stego-dir ../ContrastiveData/Twitter/AC/1.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT_DualCL/Twitter/AC2_1bpw/ -train-cover-dir ../ContrastiveData/Twitter/AC/0.txt -train-stego-dir ../ContrastiveData/Twitter/AC/1.txt -test-cover-dir ../ContrastiveData/Twitter/AC/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/AC/1_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/BERT/Twitter/ADG2_1.753bpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG2/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG2/1.753bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/Twitter/ADG2_1.753bpw/ -train-cover-dir ../ContrastiveData/Twitter/ADG2/0.txt -train-stego-dir ../ContrastiveData/Twitter/ADG2/1.753bpw.txt -test-cover-dir ../ContrastiveData/Twitter/ADG2/0_test.txt -test-stego-dir ../ContrastiveData/Twitter/ADG2/1.753bpw_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/BERT/IMDB/ADG2_1.765bpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG2/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG2/1.765bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/IMDB/ADG2_1.765bpw/ -train-cover-dir ../ContrastiveData/IMDB/ADG2/0.txt -train-stego-dir ../ContrastiveData/IMDB/ADG2/1.765bpw.txt -test-cover-dir ../ContrastiveData/IMDB/ADG2/0_test.txt -test-stego-dir ../ContrastiveData/News/ADG2/1.765bpw_test.txt -test True -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/News/ADG2_1.778bpw/ -train-cover-dir ../ContrastiveData/News/ADG2/0.txt -train-stego-dir ../ContrastiveData/News/ADG2/1.778bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/News/ADG2_1.778bpw/ -train-cover-dir ../ContrastiveData/News/ADG2/0.txt -train-stego-dir ../ContrastiveData/News/ADG2/1.778bpw.txt -test-cover-dir ../ContrastiveData/News/ADG2/0_test.txt -test-stego-dir ../ContrastiveData/News/ADG2/1.778bpw_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/LS_CNN/Twitter/ADG2_4.811bpw/ -train-cover-dir ../BaselineData/Twitter/ADG2/0.txt -train-stego-dir ../BaselineData/Twitter/ADG2/4.811bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/Twitter/ADG2_4.811bpw/ -train-cover-dir ../BaselineData/Twitter/ADG2/0.txt -train-stego-dir ../BaselineData/Twitter/ADG2/4.811bpw.txt -test-cover-dir ../BaselineData/Twitter/ADG2/0_test.txt -test-stego-dir ../BaselineData/Twitter/ADG2/4.811bpw_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/LS_CNN/IMDB/ADG2_5.081bpw/ -train-cover-dir ../BaselineData/IMDB/ADG2/0.txt -train-stego-dir ../BaselineData/IMDB/ADG2/5.081bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/IMDB/ADG2_5.081bpw/ -train-cover-dir ../BaselineData/IMDB/ADG2/0.txt -train-stego-dir ../BaselineData/IMDB/ADG2/5.081bpw.txt -test-cover-dir ../BaselineData/IMDB/ADG2/0_test.txt -test-stego-dir ../BaselineData/IMDB/ADG2/5.081bpw_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/LS_CNN/News/ADG2_5.408bpw/ -train-cover-dir ../BaselineData/News/ADG2/0.txt -train-stego-dir ../BaselineData/News/ADG2/5.408bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/LS_CNN/News/ADG2_5.408bpw/ -train-cover-dir ../BaselineData/News/ADG2/0.txt -train-stego-dir ../BaselineData/News/ADG2/5.408bpw.txt -test-cover-dir ../BaselineData/News/ADG2/0_test.txt -test-stego-dir ../BaselineData/News/ADG2/5.408bpw_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/BiLSTM_Dense/Twitter/ADG2_4.811bpw/ -train-cover-dir ../BaselineData/Twitter/ADG2/0.txt -train-stego-dir ../BaselineData/Twitter/ADG2/4.811bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense/Twitter/ADG2_4.811bpw/ -train-cover-dir ../BaselineData/Twitter/ADG2/0.txt -train-stego-dir ../BaselineData/Twitter/ADG2/4.811bpw.txt -test-cover-dir ../BaselineData/Twitter/ADG2/0_test.txt -test-stego-dir ../BaselineData/Twitter/ADG2/4.811bpw_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BiLSTM_Dense/IMDB/ADG2_5.081bpw/ -train-cover-dir ../BaselineData/IMDB/ADG2/0.txt -train-stego-dir ../BaselineData/IMDB/ADG2/5.081bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense/IMDB/ADG2_5.081bpw/ -train-cover-dir ../BaselineData/IMDB/ADG2/0.txt -train-stego-dir ../BaselineData/IMDB/ADG2/5.081bpw.txt -test-cover-dir ../BaselineData/IMDB/ADG2/0_test.txt -test-stego-dir ../BaselineData/IMDB/ADG2/5.081bpw_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BiLSTM_Dense/News/ADG2_5.408bpw/ -train-cover-dir ../BaselineData/News/ADG2/0.txt -train-stego-dir ../BaselineData/News/ADG2/5.408bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BiLSTM_Dense/News/ADG2_5.408bpw/ -train-cover-dir ../BaselineData/News/ADG2/0.txt -train-stego-dir ../BaselineData/News/ADG2/5.408bpw.txt -test-cover-dir ../BaselineData/News/ADG2/0_test.txt -test-stego-dir ../BaselineData/News/ADG2/5.408bpw_test.txt -test True -idx-gpu 0


python main.py -save-dir snapshot/single/BERT/Twitter/ADG2_4.811bpw/ -train-cover-dir ../BaselineData/Twitter/ADG2/0.txt -train-stego-dir ../BaselineData/Twitter/ADG2/4.811bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/Twitter/ADG2_4.811bpw/ -train-cover-dir ../BaselineData/Twitter/ADG2/0.txt -train-stego-dir ../BaselineData/Twitter/ADG2/4.811bpw.txt -test-cover-dir ../BaselineData/Twitter/ADG2/0_test.txt -test-stego-dir ../BaselineData/Twitter/ADG2/4.811bpw_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BERT/IMDB/ADG2_5.081bpw/ -train-cover-dir ../BaselineData/IMDB/ADG2/0.txt -train-stego-dir ../BaselineData/IMDB/ADG2/5.081bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/IMDB/ADG2_5.081bpw/ -train-cover-dir ../BaselineData/IMDB/ADG2/0.txt -train-stego-dir ../BaselineData/IMDB/ADG2/5.081bpw.txt -test-cover-dir ../BaselineData/IMDB/ADG2/0_test.txt -test-stego-dir ../BaselineData/IMDB/ADG2/5.081bpw_test.txt -test True -idx-gpu 0

python main.py -save-dir snapshot/single/BERT/News/ADG2_5.408bpw/ -train-cover-dir ../BaselineData/News/ADG2/0.txt -train-stego-dir ../BaselineData/News/ADG2/5.408bpw.txt -idx-gpu 0
python main.py -save-dir snapshot/single/BERT/News/ADG2_5.408bpw/ -train-cover-dir ../BaselineData/News/ADG2/0.txt -train-stego-dir ../BaselineData/News/ADG2/5.408bpw.txt -test-cover-dir ../BaselineData/News/ADG2/0_test.txt -test-stego-dir ../BaselineData/News/ADG2/5.408bpw_test.txt -test True -idx-gpu 0