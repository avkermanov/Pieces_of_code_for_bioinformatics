
#works for a fasta file with miltiple records. In the example, first record has header ">gi|1", the next is ">gi|2" and so on
#the extraction allows to get the first record only in the output file

#first add the last header line to the file, otherwise the last record will not be extacted

sed -n '/>gi|1$/,/>gi|2$/p' gi_n.fa | sed -e '$ d' > gi_1.fasta
#if the header is too long, should be replaced before; in general the headers shoud be uniformed to be searched
# through loops or be replaceble with variables

#delete all after specific match including the line with this match (scaffold in this situation)
sed -n '/scaffold/q;p' input_file > output_file

#include all the lines starting with the match specified
sed -n -e '/scaffold/,$p'

#for a given multifasta file splitting into individual fasta files, and naming the files as the fasta sequence title. fasta sequence title should not contain spaces
while read line; do echo $line > tmp.txt; if grep -q ">" tmp.txt;  then finename=$(cat tmp.txt | sed 's/>//'); echo $line > $finename.txt ; else echo $line  >> $finename.txt; fi; rm tmp.txt; done <sequence2.txt 
