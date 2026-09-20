#!/bin/bash

query=$1
subject=$2
output=$3

mkdir -p "$(dirname "$output")"

tblastn -query "$query" -subject "$subject" -outfmt "6 qseqid sseqid pident length qlen qstart qend sstart send evalue bitscore" | awk '$3 > 30 && $4 > (0.9 * $5)' > "$output"

wc -l < "$output"
