x="ABCDEF,BBCCDD"
for y in `echo $x | sed 's/,/ /g'`; do echo -e "$y\c" | sed 's/\(..\)../\1QW/'; echo -e ",\c"; done | sed 's/,$//'

