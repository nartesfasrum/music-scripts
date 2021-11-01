for file in *
do
	IFS=';' read -a files <<< "$file"
	artist=${files[0]}
	album=${files[2]}
	song=${files[1]}
	track=${files[3]}
	mp3=".mp3"
	track=${track//$mp3/}
	song=$track"_"$song".mp3"
	echo $artist
	mkdir -p "$artist"/"$album"
	mv $file "$artist"/"$album"

done
