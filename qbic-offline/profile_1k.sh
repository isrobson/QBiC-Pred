#!/bin/bash -e

./prepare.sh

python3 qbic.py -i mutations/single_mutations_sample_1k.tsv -g testing_resources/tflist_test.txt -c hg19 -o predictions_1k.tsv
