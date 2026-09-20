#!/bin/bash

query=$1
subject=$2
output=$3

tblastn -query "$query" -subject "$subject" -outfmt "6 qseqid sseqid pident length qlen qstart qend sstart send evalue bitscore"


