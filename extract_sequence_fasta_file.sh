
#works for a fasta file with miltiple records. In the example, first record has header ">gi|1", the next is ">gi|2" and so on
#the extraction allows to get the first record only in the output file
sed -n '/>gi|1$/,/>gi|2$/p' gi_n.txt | sed -e '$ d > gi_1.fasta
#if the header is too long, should be replaced before
