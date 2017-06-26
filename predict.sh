#!/bin/sh

echo "================================"
echo "   Predict your future now!     "
echo "================================"


echo "get ready for some questions"
dir=`pwd`
file=$dir"/predictions.txt"
if [ -f "$file" ]; then
	echo "exists"
	rm $file
fi
touch $file


if [ $# != 0 ]; then
	echo "please enable appropriate permissions"
else
	echo "describe your favourite animal in one word"
	read life; echo "your life is "$life >> "$file"

	echo "how many legs does your favourite animal have ?"
	read children; echo "you will have "$children" children" >> "$file"

	echo "which is your favourite place?"
	read house; echo "your BESTIE will built a house at "$house >> "$file"

	echo "describe your favourite vehicle"
	read personality; echo "your are very "$personality >> "$file"

	echo "which is your favourite game/tv series?"
	read job; echo "your job will be as fun as "$job >> "$file"

	echo "=============================="
	echo "  here comes the predictions  "
	echo "=============================="
	cat $file
fi

