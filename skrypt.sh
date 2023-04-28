#!/bin/bash

if [[ "$1" == "--logs" && "$2" =~ ^[0-9]+$ ]]; then
    for i in $(seq 1 $2); do
        touch log${i}.txt
        echo "Nazwa pliku: log${i}.txt" >> log${i}.txt
        echo "Nazwa skryptu: skrypt.sh" >> log${i}.txt
        echo "Data utworzenia: $(date)" >> log${i}.txt
    done
fi