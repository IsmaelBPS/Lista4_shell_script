#!/usr/bin/env bash

# r - Digite o nome de um arquivo que será processado.
# a - Remova todas as letras do arquivo.
# b - Remova todos os dígitos do arquivo.
# c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por ~.
# q - Saia do script.

menu="
r - Digite o nome de um arquivo que será processado.
a - Remova todas as letras do arquivo.
b - Remova todos os dígitos do arquivo.
c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por ~.
q - Saia do script.
"
arq=""
while true;
do
    echo "$menu"
    read -p "Menu escolhido: " choice

   case "${choice}" in
       "r"|"R")
            read -p "Arquivo: " arq_in
            arq="$arq_in"
       ;;
       "a"|"A")
            sed 's/[a-zA-Z]*//g' "$arq" > "new_arq"
            echo "$(<new_arq)" > "$arq"
            rm "new_arq"
       ;;
       "b"|"B")
            sed 's/[0-9]*//g' "$arq" > "new_arq"
            echo "$(<new_arq)" > "$arq"
            rm "new_arq"
       ;;
       "c"|"C")
            sed 's/[^A-Za-z0-9_.;]/~/g' "$arq" > "new_arq"
            echo "$(<new_arq)" > "$arq"
            rm "new_arq"
       ;;
       "q"|"Q")
            exit 0
       ;;
       *)
            echo "Escolha inválida"
       ;;
   esac
   



done
