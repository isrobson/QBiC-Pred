#!/bin/bash -e

./prepare.sh

python3 qbic.py -i mutations/single_mutations_sample_1m.tsv -g testing_resources/tflist_test.txt -c hg19 -o predictons_1m.tsv
