#!/bin/bash -l
#SBATCH --job-name=Align
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --gid=vector_spechtlab
#SBATCH --mail-user=chery.joyce@berkeley.edu
#SBATCH --mail-type=ALL
#SBATCH --mem-per-cpu=20G
#SBATCH --time=299:99:00 

cd /clusterfs/vector/scratch/cdspecht/Joyce_Chery/final/FINAL_ALIGNMENT/

export PERL5LIB=/global/home/users/cdspecht/bin/vcftools_0.1.12b/perl/

source /usr/Modules/init/bash

module load bedtools
module load samtools
module load jdk
module load python

perl Alignfix.pl

exit
