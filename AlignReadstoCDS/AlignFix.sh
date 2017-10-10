#!/bin/bash -l
#SBATCH --job-name=af_jc
#SBATCH --partition=savio2_htc
#SBATCH --account=co_rosalind
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --mail-user=chodon@berkeley.edu
#SBATCH --mail-type=ALL
#SBATCH --mem-per-cpu=12G
#SBATCH --cpus-per-task=1
#SBATCH --time=72:00:00 

cd /clusterfs/rosalind/users/chodon/joyce

export PERL5LIB=/global/home/users/chodon/bin/vcftools_0.1.12a/perl/:/global/home/users/chodon/perl5/lib/perl5/

source /usr/Modules/init/bash

module load bedtools
module load samtools/0.1.19
module load jdk
module load python

perl AlignFix.pl

exit
