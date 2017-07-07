use File::Slurp 'read_file';

my $home = '/clusterfs/vector/scratch/cdspecht/Joyce_Chery/final/FINAL_ALIGNMENT/';
my $genesFile = '/clusterfs/vector/scratch/cdspecht/Joyce_Chery/final/FINAL_ALIGNMENT/PlastidRemoved_Names';
my $covFile = '/clusterfs/vector/scratch/cdspecht/Joyce_Chery/final/FINAL_ALIGNMENT/LocalBlastRemoveNCBIRemove_PositionCoverage';
my @genes = read_file $genesFile;

foreach my $genes(@genes){
    chomp $genes;
    
    #this will print average coverage to the screen
        my $avgCov = `grep $genes $covFile | awk \'{sum+=\$3}END{print sum/NR}\'`;
        chomp $avgCov;
        print "$genes\t$avgCov\n";
	    }

