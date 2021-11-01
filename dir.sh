for file in *
do
	files=$(echo $file | tr ";" "\n")

	for testFiles in $files
	do
		echo "$testFiles"
	done
done
