#! /bin/bash

thisDirs=$(ls)

for thisDir in $thisDirs; do
	if [[ -d $thisDir ]]; then
		tempDir=$(ls $thisDir)
		for temp in $tempDir; do
			if [[ -f $thisDir/$temp ]]; then
				./check-img $thisDir $thisDir/$temp
			fi
		done
	fi
done