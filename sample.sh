#! /bin/bash

echo "Hello Raju Palakurla"
searchtext=",yyyy-mm-dd"
replacetext=","$1
rm test2.csv
echo "$0 file name"
echo "search text : $searchtext"
echo "replace text : $replacetext"
#sed -i 's/$searchtext/$replacetext/' test.csv
#awk '{sub("${searchtext}","${replacetext}")}1;' "test.csv" > foobar && mv foobar "test2.csv"; 
#awk '{sub("$searchtext","$replacetext"); print $0;}' test.csv > test2.csv
#sed -i /$searchtext/$replacetext test.csv >> test2.csv

#awk 'BEGIN{FS=OFS=","} {gsub(/yyyy\-mm\-dd/,"2020-10-20",$3)} 1' test.csv > test2.csv # working

#awk 'BEGIN { re = "[2020-10-23]" } { gsub(/yyyy\-mm\-dd/, re); print }'

#awk -v docpath="$searchtext" -v sitepath="$replacetext" '{ gsub( /docpath/, sitepath ) } { print }' test.csv
#awk -v pat="$searchtext" 'match($0, pat)' test.csv
awk -v pat="$searchtext" -v rep="$replacetext" '{gsub(pat, rep)} 1' test.csv > test2.csv

echo "printing new file content"
cat test2.csv