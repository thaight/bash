#!/bin/bash
#SBATCH --job-name=sample_42-Aza-l-1_CIRIquant
#SBATCH --time=00:30:00
#SBATCH --mem=4G
#SBATCH --account=rrg-zovoilis

while getopts i:o: flag
do
  	case "${flag}" in
            i) input=${OPTARG};;
            o) output=${OPTARG};;
        esac
done
module load samtools/1.10
echo "Converting from Bam file: ""$input";
echo "Converting to Sam file: ""$output";
samtools view -h -o "$output" "$input"
