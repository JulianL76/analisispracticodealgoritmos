@echo off
setlocal enabledelayedexpansion
echo Inicio de la ejecución

REM Itera a través de los 5 archivos de entrada
for %%i in (matriz2x2.txt matriz5x5.txt matriz10x10.txt matriz50x50.txt matriz100x100.txt) do (

  REM Ejecuta el programa 20 veces para cada archivo de entrada
  for /l %%x in (1, 1, 20) do (

    java Main.java < %%i > tiemposwindows.txt
  )
)

echo Fin de la ejecución
goto :eof

