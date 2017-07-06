#!/bin/bash -l
#SBATCH --job-name=calint
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mail-user=chery.joyce@berkeley.edu
#SBATCH --mail-type=ALL
#SBATCH --mem-per-cpu=12G
#SBATCH --time=299:99:00 

cd /clusterfs/vector/scratch/cdspecht/Joyce_Chery/final/

source /usr/Modules/init/bash

module load jdk
module load beagle
module load samtools
module load python

./run_intronSize.sh

exit
