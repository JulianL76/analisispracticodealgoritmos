#!/usr/bin/env bash
export PATH=/usr/bin/python3:$PATH
chmod +x pythonrun.sh

echo "Input,Tiempo de ejecución" > tiemposPY.csv

ejecutar_y_guardar_tiempo() {

  for ((i=1;i<=$2;i++)); do
    start_time=$(date +%s.%N)
    time python3 Main.py < "$1" >/dev/null
    end_time=$(date +%s.%N)
    runtime=$(echo "$end_time - $start_time" | bc)
    echo "$1,$runtime" >> tiemposPY.csv
  done
}

ejecutar_y_guardar_tiempo "matriz2x2.txt" 20
ejecutar_y_guardar_tiempo "matriz5x5.txt" 20
ejecutar_y_guardar_tiempo "matriz10x10.txt" 20
ejecutar_y_guardar_tiempo "matriz50x50.txt" 20
ejecutar_y_guardar_tiempo "matriz100x100.txt" 20

