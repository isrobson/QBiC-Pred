#!/bin/bash -e

./prepare.sh

strace -f -e trace=file -o strace.out python3 qbic.py -i mutations/single_mutations_sample_1k.tsv -g testing_resources/tflist_test.txt -c hg19 -o predictons.tsv
cat strace.out | grep .txt > strace_txt.out
sort strace_txt.out | uniq -c | sort -nr > strace_txt_count.out

