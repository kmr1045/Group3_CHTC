#!/bin/bash

nProcessors=5
data="plays"

wget https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar

tar -xvf shakespeare.tar

cat shakespeare/*/* > $data

rm -rf shakespeare
rm *.tar

split -n l/5 -d $data "$data."

ls -1  $data.* > inputFileList

rm $data
