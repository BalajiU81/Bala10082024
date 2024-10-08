#!/bin/bash
sed -n '5,$ p' samplefile.txt | while read line
do
output=`grep -i 'welcome' | sed "s/give/learning/I"`
echo $output
done
