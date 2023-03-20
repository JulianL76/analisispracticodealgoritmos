@echo off
setlocal enabledelayedexpansion
echo Inicio de la ejecución

REM Crea un archivo Excel y escribe el encabezado
echo Tiempo de ejecución > tiemposJS.csv

REM Itera a través de los 5 archivos de entrada
for %%i in (matriz2x2.txt matriz5x5.txt matriz10x10.txt matriz50x50.txt matriz100x100.txt) do (

  REM Crea un archivo para guardar todas las salidas
  echo Salida para %%i > salidasJS.txt

  REM Ejecuta el programa 20 veces para cada archivo de entrada
  for /l %%x in (1, 1, 20) do (

    REM Compila y ejecuta el archivo .js
    node Main.js < %%i >> salidasJS.txt
  )

  REM Agrega las salidas del archivo actual a la hoja de cálculo
  type salidasJS.txt >> tiemposJS.csv

  REM Borra el archivo de salidas para el siguiente archivo de entrada
  del salidasJS.txt
)

echo Fin de la ejecución
goto :eof
