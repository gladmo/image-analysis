#! /bin/bash

imgPath=/Users/mo/Go/src/github.com/gladmo/graphics/test/test/data/20170924/20

waterMark=/Users/mo/Go/src/image-handler/test/1.png
imgs=$(ls $imgPath)

for img in $imgs; do
	if [[ -f $imgPath/$img ]]; then
		res=$(./image-handler $imgPath/$img $waterMark)
		if [[ "$?" -ne "0" ]]; then
			echo $res
			echo $imgPath/$img
		else
			# stat in linux
			echo {"size": $(stat -c '%s'), "time":$res}
		fi
	fi
done