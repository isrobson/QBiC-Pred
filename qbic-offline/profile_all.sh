#!/bin/bash -e

./prepare.sh

for i in .5 1 2 4
do 
  for j in 8 16 32
  do
    for p in 1.0 0.1 0.01 0.0001
    do
      python3 qbic.py -i 'mutations/single_mutations_sample_$im.tsv' -g 'testing_resources/tflist_$j.txt' -c hg19 -o 'predictions_$im.tsv' -v $p
    done # for p
  done # for j
done  # for i 

