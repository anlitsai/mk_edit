#file=$1
filein='test'
fileout='01_mk_link_cut.txt'
#sed 's/\[/\n\[/g' $filein | rev | cut -d ")" -f2 | rev|sed 's/(/:/' 
#sed 's/\[/\n\[/g' $filein | rev | cut -d ")" -f2 | rev|sed 's/(/:/' 
#sed 's/\[/\n\[/g' $filein | rev | cut -d ")" -f2 | rev > $fileout
#sed -i 's/$/)/' $fileout

sed 's/)/)\n/g' $filein |cut -d "[" -f2 > $fileout
sed -i 's/^/[/' $fileout

echo ""
echo "output file: $fileout"
echo "remember to modify: $fileout"
echo ""

