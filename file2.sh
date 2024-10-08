x="ABCDEF,BBCCDD"
for y in `echo $x | sed 's/,/ /g'`; 
do echo -e "$y\c"
done
