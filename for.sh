#!/bin/bash
# For-loops :-)

for((i = 0; i < 5; i++)); do
	echo "Bash é bem legal :-)"
done

echo "Bora caçar uns .m* :D"

for item in $(find . -iname "*.m*"); do
	echo "ACHEI! -> $item"
done
