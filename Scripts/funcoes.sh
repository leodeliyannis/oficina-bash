#!/bin/bash

function hello {
	echo "Salve salve \\o/"
}

function troca {
	cp $1 .tmp -f
	mv $2 $1
	mv .tmp $2
}

function roda() {
	arq=$(echo $1 | cut -f1 -d.)
	ext=$(echo $1 | cut -f2 -d.)
	case $ext in
		"cpp")
			g++ -Wall -std=c++11 $1 &&
			echo "### COMPILOU ###" &&
			time ./a.out < $arq.in < my.sol &&
			diff $arq.sol my.sol
		;;
		"py")
			python3 -m py_compile $arq.py &&
			echo "### COMPILOU ###" &&
			time python3 $1 < $arq.in > my.sol &&
			diff $arq.sol my.sol
		;;
	esac
}

hello
roda $1
