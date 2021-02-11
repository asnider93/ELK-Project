#! /bin/bash

my_list=(
	"/etc/shadow"
	"/etc/passwd"
)

for list in ${my_list[@]}
do
	ls -hal $list
done
