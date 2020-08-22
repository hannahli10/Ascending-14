#!/bin/bash

echo "-----start to calculate Letter-----"


if [ -z "$1" ]; then
    echo "Usage: $0 filename."
    exit 1
fi

filename=$1


while read -n 1 c  # read one character at a time 
do
    echo "$c"      # print one char
done < "$filename" | grep '[[:alpha:]]' | sort | uniq -c | sort -nr


echo "-----finish to calculate Letter-----"
