python 02_mk_link_replace.py

#file=$1
file1='01_mk_link_cut.txt'
file2='02_mk_link_replace.txt'
file3='03_mk_link_cut_fap.txt'
echo ""
#cat '02_mk_link_replace.txt'
sed -i 's/\.\ /\.\n/g ' $file2 
sed -i 's/\?\ /\?\n/g ' $file2 
sed -i 's/\!\ /\!\n/g ' $file2 
cat $file2
echo ""

sed 's/fap\/ap/ap/' $file1 > $file3
sed 's/](/]:/' $file3 | sed 's/)$//'
echo ""



