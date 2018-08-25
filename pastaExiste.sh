#!/bin/bash
# Verifica a existência de uma pasta

clear
if [ -d oficina-bash ]; then
	echo "A pasta existe! :D"
else
	echo "A pasta não existe :-/"
fi
