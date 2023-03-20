@echo off
setlocal enabledelayedexpansion
echo Inicio de la ejecución

REM Compila el archivo C++ para crear un archivo ejecutable
g++ main.cpp -o mi_programa.exe

REM Itera a través de los 5 archivos de entrada
for %%i in (matriz2x2.txt matriz5x5.txt matriz10x10.txt matriz50x50.txt matriz100x100.txt) do (

  REM Ejecuta el programa 20 veces para cada archivo de entrada
  for /l %%x in (1, 1, 20) do (

    mi_programa.exe < %%i > tiemposCmas.txt
  )
)

echo Fin de la ejecución
goto :eof