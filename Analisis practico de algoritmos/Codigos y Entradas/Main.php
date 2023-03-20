<?php

function transformarMatriz($matrizOriginal) {
    $matrizResultante = array();
    for ($i = 0; $i < count($matrizOriginal); $i++) {
        for ($j = 0; $j < count($matrizOriginal[$i]); $j++) {
            $valor = $matrizOriginal[$i][$j];
            if ($i == 0 || $i % 2 == 0) {
                $valor++;
            }
            if ($j == 0 || $j % 2 == 0) {
                $valor += 2;
            }
            if ($i % 2 != 0 && $j % 2 != 0) {
                $valor -= 3;
            }
            $matrizResultante[$i][$j] = $valor;
        }
    }
    return $matrizResultante;
}

function imprimirMatriz($matriz) {
    for ($i = 0; $i < count($matriz); $i++) {
        for ($j = 0; $j < count($matriz[$i]); $j++) {
            echo $matriz[$i][$j] . " ";
        }
        echo "\n";
    }
}

$matrizOriginal = array();
$sc = fscanf(STDIN, "%d %d\n", $numFilas, $numColumnas);

for ($i = 0; $i < $numFilas; $i++) {
    $linea = trim(fgets(STDIN));
    $matrizOriginal[$i] = array_map('intval', explode(" ", $linea));
}

$matrizResultante = transformarMatriz($matrizOriginal);
imprimirMatriz($matrizResultante);

?>
