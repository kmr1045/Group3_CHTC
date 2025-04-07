#!/bin/bash

sort -m plays.0[0-4].clean > sortedWords

uniq -c sortedWords | sort -nr > countsOfWords

rm plays*
rm inputFileList
rm sortedWords
