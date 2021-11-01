for file in *
do
	fileFixed=${file//"_-_"/";"}
	cp $file /media/nima/baccup/hfix/$fileFixed
done
