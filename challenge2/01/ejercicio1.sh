#!/bin/bash


if [[ $0 == "ejercicio1.sh" ]]; then
	text="Me encanta bash!!"
else
	text="${1:-\`Que me gusta bash!!!!\`}"
fi


create(){
	mkdir foo
	echo "file created"
	mkdir foo 
	mkdir foo/{dummy,empty} 
	echo "$text" >>foo/dummy/file1.txt 
	touch foo/dummy/file2.txt
	find .
}



if [[  -e foo ]]; then 
	echo -n "do you want destroy the dir tree you already have? [y/n]"
	read -n 1 answ
	echo $answ 
	
	if [ $answ == "n" ]; then 
		echo "Ok, nothing was made"
	else
		echo "Time to delete and create"
		rm -rf foo
		create
	fi
else
	echo "Hey! nothing was here! Let's created"
	create
fi
