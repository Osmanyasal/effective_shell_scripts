#!/bin/bash

function PRINT_WORKDIRS(){
	echo "*** SUMMARY ***"
	echo "workdir..:$PWD"
	echo "to..:$to"
}
function WAIT_APPROVAL(){
	read -n 1 -p "continue?[y/n]: " continue && echo
	test $continue != "y" && return 1
	return 0;
}
function CHECK_AND_ADJUST_FROM(){
if [ -z "$from" ]; then
	from=$PWD
elif [ -n "$from" ];then
	cd "$from"
	from=$PWD
fi
}
function CHECK_AND_ADJUST_TO(){
test -z "$to" && to="$HOME/backup"
if [ $"to" = "$HOME/backup" ] && [ ! -d "$HOME/backup" ]; then
    mkdir -p "$HOME/backup"
elif [ -n "$to" ] && [ ! -d "$to" ] ; then
	mkdir -p "$to"
fi
}


# read FROM working directory
read -p "from..[$PWD]: " from
CHECK_AND_ADJUST_FROM
 
# read TO working directory
read -p "to..:[$HOME/backup]: " to
CHECK_AND_ADJUST_TO

# copy files from..:FROM to..:TO
read -p "files..: " files

PRINT_WORKDIRS
WAIT_APPROVAL || exit 1
 
for i in ${files}; do
	cp -r "${from}/${i}" "${to}"
done

exit 0;
