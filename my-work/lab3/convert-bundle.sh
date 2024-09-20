#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzvf lab3-bundle.tar.gz

awk '!/^[[:space:]]*$/'  lab3_data.tsv

# Use `tr` - "translate"
tr '\t' ',' < lab3_data.tsv > lab3_data.csv

#exclude header and start counting at row 1
LINES=$(tail -n +3 lab3_data.csv | wc -l) 
echo "Number of lines: $LINES"
tar -czvf converted-archive.tar.gz lab3_data.csv
