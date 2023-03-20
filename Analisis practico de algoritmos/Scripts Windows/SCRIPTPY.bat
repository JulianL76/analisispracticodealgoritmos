@echo off
setlocal enabledelayedexpansion
echo Inicio de la ejecución

REM Crea un archivo Excel y escribe el encabezado
echo Tiempo de ejecución > tiemposPY.csv

REM Itera a través de los 5 archivos de entrada
for %%i in (matriz2x2.txt matriz5x5.txt matriz10x10.txt matriz50x50.txt matriz100x100.txt) do (

  REM Ejecuta el programa 20 veces para cada archivo de entrada
  for /l %%x in (1, 1, 20) do (

    REM Compila y ejecuta el archivo .py
    for /f "tokens=* USEBACKQ" %%F IN (`python mainp.py ^< "%%i"`) DO (
        set "linea=%%F"
        set "time=!linea:*: =!"
        if !time! EQU 0 (
          set time=0.00001
        ) 

        echo !time! >> tiemposPY.csv
    )
  )
)

echo Fin de la ejecución
goto :eof