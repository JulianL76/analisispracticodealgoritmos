#!/usr/bin/env bash
export PATH=/usr/bin/php:$PATH
chmod +x phprun.sh

echo "Input,Tiempo de ejecución" > tiemposPHP.csv

ejecutar_y_guardar_tiempo() {

  for ((i=1;i<=$2;i++)); do
    start_time=$(date +%s.%N)
    time php Main.php < "$1" >/dev/null
    end_time=$(date +%s.%N)
    runtime=$(echo "$end_time - $start_time" | bc)
    echo "$1,$runtime" >> tiemposPHP.csv
  done
}

ejecutar_y_guardar_tiempo "matriz2x2.txt" 20
ejecutar_y_guardar_tiempo "matriz5x5.txt" 20
ejecutar_y_guardar_tiempo "matriz10x10.txt" 20
ejecutar_y_guardar_tiempo "matriz50x50.txt" 20
ejecutar_y_guardar_tiempo "matriz100x100.txt" 20


