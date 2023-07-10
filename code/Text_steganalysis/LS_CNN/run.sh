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
    -idx-gpu 3


python main.py \
    -save-dir snapshot/single/LSTM/IMDB/AC_3bpw/ \
    -train-cover-dir /data/Text_data/cover/single_data/actual_cover_data/IMDB_train.txt \
    -train-stego-dir /data/Text_data/stego/single_data/LSTM/IMDB/AC/TRN/stego_3bpw.txt \
    -test-cover-dir /data/Text_data/cover/single_data/actual_cover_data/IMDB_test.txt \
    -test-stego-dir /data/Text_data/stego/single_data/LSTM/IMDB/AC/TST/stego_3bpw.txt \
    -test True \
    -idx-gpu 3