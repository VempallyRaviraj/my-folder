#!bin/bash

var1=10
var2=20
var3=ravi

echo "$var1+$var2"
echo "$(($var1+$var2+$var3))"

declare -i COUNT=5 #iam declaring as integer
COUNT=COUNT+1

echo "count is: $COUNT"

FRUITS=("APPLE" "BANANA" "PAPAYYA") #THIS IS ARRAY
echo "ALL fruits: ${FRUITS[@]}"
echo "First fruit: ${FRUITS[1]}