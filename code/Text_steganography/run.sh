#!/bin/bash

python HC.py -dataset Twitter -generate-num 10000 -idx-gpu 0
python HC.py -dataset IMDB -generate-num 10000 -idx-gpu 0
python HC.py -dataset News -generate-num 10000 -idx-gpu 0
python AC.py -dataset Twitter -generate-num 10000 -idx-gpu 0
python AC.py -dataset IMDB -generate-num 10000 -idx-gpu 0
python AC.py -dataset News -generate-num 10000 -idx-gpu 0
python ADG.py -dataset Twitter -generate-num 10000 -idx-gpu 0
python ADG2.py -dataset Twitter -generate-num 1000 -idx-gpu 0
