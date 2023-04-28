#!/bin/bash

if [[ "$1" == "--date" ]]; then
    echo "Dzisiejsza data to: $(date +%Y-%m-%d)"
elif [[ "$1" == "--logs" && "$2" =~ ^[0-9]+$ ]]; then
    for i in $(seq 1 $2); do
        touch log${i}.txt
        echo "Nazwa pliku: log${i}.txt" >> log${i}.txt
        echo "Nazwa skryptu: skrypt.sh" >> log${i}.txt
        echo "Data utworzenia: $(date)" >> log${i}.txt
    done
elif [[ "$1" == "--logs" ]]; then
    for i in {1..100}
    do
      filename="log$i.txt"
      echo "Nazwa pliku: $filename" >> $filename
      echo "Nazwa skryptu: skrypt.sh" >> $filename
      echo "Data: $(date)" >> $filename
    done
elif [[ $1 == "--help" ]] || [[ $1 == "-h" ]]; then
    echo "Mozliwe opcje:"
    echo "--date -d #wyswietla aktualna date"
    echo "--logs -l <liczba>  (bez podania liczby - 100)"
    echo "--error -e <liczba> (bez podawania liczby - 100)"
    echo "--init #sklonowanie repozytorium"
    echo "--help -h #wyswietla pomoc"
fi

