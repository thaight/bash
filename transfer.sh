#!/bin/bash

while getopts l:a:t: flag
do
        case "${flag}" in
            l) list=${OPTARG};;
            a) age=${OPTARG};;
            t) tissue=${OPTARG};;
        esac
done
while read -r line
do
        scp -r thaight@cedar.computecanada.ca:/scratch/thaight/GSE12597/"$tissue"/"$age"/"$line"/output/circ/"$line"_denovo.sorted.sam /home/travis/Desktop/GSE125957/sorted_sams/

done < "$list"


