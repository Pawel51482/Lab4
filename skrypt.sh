#!/bin/bash

if [[ "$1" == "--logs" ]]; then
    for i in {1..100}
    do
      filename="log$i.txt"
      echo "Nazwa pliku: $filename" >> $filename
      echo "Nazwa skryptu: skrypt.sh" >> $filename
      echo "Data: $(date)" >> $filename
    done
fi