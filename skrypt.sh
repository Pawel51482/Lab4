#!/bin/bash

if [[ $1 == "--help" ]]; then
    echo "Mozliwe opcje:"
    echo "--date -d #wyswietla aktualna date"
    echo "--logs -l <liczba>  (bez podania liczby - 100)"
    echo "--error -e <liczba> (bez podawania liczby - 100)"
    echo "--init #sklonowanie repozytorium"
    echo "--help -h #wyswietla pomoc"
fi
