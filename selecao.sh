#!/bin/bash
# If-else: selecionando o que faremos

echo "Digite duas palavras:"

read word1 word2

if [ $word1 == $word2 ]; then
	echo "As strings são iguais"
else
	echo "As strings são diferentes"
fi
