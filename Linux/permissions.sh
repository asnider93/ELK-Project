#! /bin/bash

for  file in $(ls ~/Documents/files_for_hashin/);
do
	sha256sum $file
done
