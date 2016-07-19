perl get_intron_size.pl Csinensis_v1.0_gene.gff3 > intronsize
grep 'mRNA' Csinensis_v1.0_gene.gff3 | grep -v 'polypeptide' | awk 'BEGIN{FS="\t"}{print $9"\t"$1"\t"$5-$4}' > mrnaList
paste mrnaList intronsize > Csinensis_intronsize
