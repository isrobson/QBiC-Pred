#!/bin/bash -e

./prepare.sh

for i in '.5' 1 2 4
do 
  for j in 8 16 32
  do
    for p in '1.0' '0.1' '0.01' '0.0001'
    do
      # unique profile tag -- file names
      rm profile_run_id.csv
      touch profile_run_id.csv
      echo "${i}m_${j}_${p}" >> profile_run_id.csv
 
      # debug profile tag
      #cat profile_run_id.csv
 
      # dry run
      #echo "qbic.py -i mutations/single_mutations_sample_${i}m.tsv -g testing_resources/tflist_${j}.txt -c hg19 -o predictions_${i}m.tsv -v $p"
      
      python qbic.py -i mutations/single_mutations_sample_${i}m.vcf -g testing_resources/tflist_${j}.txt -c hg19 -o predictions_${i}m_${j}_${p}.tsv -v $p
    done # for p
  done # for j
done  # for i 

