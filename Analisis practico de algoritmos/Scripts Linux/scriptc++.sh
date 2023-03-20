#!/usr/bin/env bash
export PATH=/usr/bin/g++:$PATH
chmod +x scriptc++.sh

echo "Input,Tiempo de ejecución" > tiemposC++.csv

ejecutar_y_guardar_tiempo() {

  for ((i=1;i<=$2;i++)); do
    start_time=$(date +%s.%N)
    time ./Main < "$1" >/dev/null
    end_time=$(date +%s.%N)
    runtime=$(echo "$end_time - $start_time" | bc)
    echo "$1,$runtime" >> tiemposC++.csv
  done
}

g++ -o Main Main.cpp

ejecutar_y_guardar_tiempo "matriz2x2.txt" 20
ejecutar_y_guardar_tiempo "matriz5x5.txt" 20
ejecutar_y_guardar_tiempo "matriz10x10.txt" 20
ejecutar_y_guardar_tiempo "matriz50x50.txt" 20
ejecutar_y_guardar_tiempo "matriz100x100.txt" 20
