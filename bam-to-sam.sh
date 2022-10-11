  GNU nano 4.6                                                                                       bam-to-sam.sh                                                                                                 
#!/bin/bash
#SBATCH --job-name=sample_42-Aza-l-1_CIRIquant
#SBATCH --time=12:00:00
#SBATCH --mem=4G
#SBATCH --account=rrg-zovoilis

while getopts o:i: flag
do
  	case "${flag}" in
            o) output=${OPTARG};;
            i) input=${OPTARG};;
        esac
done
echo "Converting from Bam file: ""$input";
echo "Converting to Sam file: ""$output";
module load samtools/1.10
echo samtools view -h -o "$output" "$input"
