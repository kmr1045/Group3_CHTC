#!/bin/bash
file=$1

echo "Processing $file"
wc -l $file

tr '[:upper:]' '[:lower:]' < $file > step1
wc -l step1
sed -e 's/[[:punct:]]//g' step1 > step2
wc -l step2
tr -s '[:space:]' '\n' < step2 > step3
wc -l step3
grep -v "^[[:space:]]*$" step3 > step4
wc -l step4
sort step4 > $file.clean

echo "Finished $file -> $file.clean"

rm step*
