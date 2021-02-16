#!/bin/bash
#####################################################
#                                                   #
# convert epub to mobi (calibre libraries needed)   #
# sources are in separate directories each          #
#                                                   #
#####################################################

dirs=($(find * -maxdepth 2 -type d))
dirs=(Books/*/)

for dir in "${dirs[@]}"
	do
		name="$(basename "$dir")" 
		ebook-convert "${dir}"*.epub "${name}".mobi
	done
