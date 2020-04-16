
#works for a fasta file with miltiple records. In the example, first record has header ">gi|1", the next is ">gi|2" and so on
#the extraction allows to get the first record only in the output file

#first add the last header line to the file, otherwise the last record will not be extacted
echo >gi|n >> gi_n.txt
sed -n '/>gi|1$/,/>gi|2$/p' gi_n.txt | sed -e '$ d' > gi_1.fasta
#if the header is too long, should be replaced before; in general the headers shoud be uniformed to be searched
# through loops or be replaceble with variables
