#! /bin/bash

thisDirs=$(ls)

for thisDir in $thisDirs; do
	if [[ -d $thisDir ]]; then
		rm -rf $thisDir/*
	fi
done