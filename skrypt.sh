#!/bin/bash

if [[ "$1" == "--date" ]] || [[ "$1" == "-d" ]]; then
    echo "Dzisiejsza data to: $(date +%Y-%m-%d)"

elif [[ "$1" == "--logs" && "$2" =~ ^[0-9]+$ ]] || [[ "$1" == "-l" && "$2" =~ ^[0-9]+$ ]]; then
    for i in $(seq 1 $2); do
        touch log${i}.txt
        echo "Nazwa pliku: log${i}.txt" >> log${i}.txt
        echo "Nazwa skryptu: skrypt.sh" >> log${i}.txt
        echo "Data utworzenia: $(date)" >> log${i}.txt
    done
elif [[ "$1" == "--logs" ]] || [[ "$1" == "-l" ]]; then
    for i in {1..100}
    do
        filename="log$i.txt"
        echo "Nazwa pliku: $filename" >> $filename
        echo "Nazwa skryptu: skrypt.sh" >> $filename
        echo "Data: $(date)" >> $filename
    done

elif [[ "$1" == "--error" && "$2" =~ ^[0-9]+$ ]] || [[ "$1" == "-e" && "$2" =~ ^[0-9]+$ ]]; then
    for i in $(seq 1 $2); do
        mkdir -p error${i}
        cd error${i}
        touch error${i}.txt
       # touch error${i}/error${i}.txt
        echo "Nazwa pliku: error${i}.txt" >> error${i}.txt
        echo "Nazwa skryptu: skrypt.sh" >> error${i}.txt
        echo "Data utworzenia: $(date)" >> error${i}.txt
        cd ..
    done
elif [[ "$1" == "--error" ]] || [[ "$1" == "-e" ]]; then
    for i in {1..100}
    do
        filename="error$i.txt"
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

elif [[ "$1" == "--init" ]]; then
    git clone https://github.com/Pawel51482/Lab4.git
    echo "export PATH=\"\${PATH}:$(pwd)/Lab4\"" >> ~/.bashrc
else
    echo "Uzyj --help"
fi