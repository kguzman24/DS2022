#!/bin/bash

# Convert Delimiters
# To convert TSV to CSV, or vice versa, use a text search+replace
# function such as `awk`, `tr`, or a good IDE/text editor:
read -p "Insert your tsv file to convert " FILENAME
# Use `tr` - "translate"
tr '\t' ',' < FILENAME > FILENAME.csv

# Use `sed` - "stream editor"
sed 's/'$'\t''/,/g' FILENAME.tsv > FILENAME.csv

# Use `awk` - "pattern scanning and processing language"
awk 'BEGIN { FS="\t"; OFS="," } {$1=$1; print}' FILENAME.tsv > FILENAME.csvm
