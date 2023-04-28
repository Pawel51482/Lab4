#!/bin/bash

if [[ "$1" == "--error" && "$2" =~ ^[0-9]+$ ]]; then
    for i in $(seq 1 $2); do
        mkdir -p error${i}
        touch error${i}/error${i}.txt
        echo "Nazwa pliku: log${i}.txt" >> log${i}.txt
        echo "Nazwa skryptu: skrypt.sh" >> log${i}.txt
        echo "Data utworzenia: $(date)" >> log${i}.txt
    done
elif [[ "$1" == "--error" ]]; then
    for i in {1..100}
    do
      filename="error$i.txt"
      echo "Nazwa pliku: $filename" >> $filename
      echo "Nazwa skryptu: skrypt.sh" >> $filename
      echo "Data: $(date)" >> $filename
    done
elif [[ "$1" == "-e" && "$2" =~ ^[0-9]+$ ]]; then
    for i in $(seq 1 $2); do
        mkdir -p error${i}
        touch error${i}/error${i}.txt
        echo "Nazwa pliku: log${i}.txt" >> log${i}.txt
        echo "Nazwa skryptu: skrypt.sh" >> log${i}.txt
        echo "Data utworzenia: $(date)" >> log${i}.txt
    done
elif [[ "$1" == "-e" ]]; then
    for i in {1..100}
    do
      filename="error$i.txt"
      echo "Nazwa pliku: $filename" >> $filename
      echo "Nazwa skryptu: skrypt.sh" >> $filename
      echo "Data: $(date)" >> $filename
    done
fi