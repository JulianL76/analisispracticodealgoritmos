#include <iostream>
using namespace std;

void imprimirMatriz(int **matriz, int filas, int columnas) {
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            cout << matriz[i][j] << " ";
        }
        cout << endl;
    }
}

int** transformarMatriz(int **matrizOriginal, int filas, int columnas) {
    int** matrizResultante = new int*[filas];
    for (int i = 0; i < filas; i++) {
        matrizResultante[i] = new int[columnas];
        for (int j = 0; j < columnas; j++) {
            int valor = matrizOriginal[i][j];
            if (i == 0 || i % 2 == 0) {
                valor++;
            }
            if (j == 0 || j % 2 == 0) {
                valor += 2;
            }
            if (i % 2 != 0 && j % 2 != 0) {
                valor -= 3;
            }
            matrizResultante[i][j] = valor;
        }
    }
    return matrizResultante;
}

int main() {
    int numFilas, numColumnas;
    cin >> numFilas >> numColumnas;
    int** matrizOriginal = new int*[numFilas];
    for (int i = 0; i < numFilas; i++) {
        matrizOriginal[i] = new int[numColumnas];
        for (int j = 0; j < numColumnas; j++) {
            cin >> matrizOriginal[i][j];
        }
    }
    int** matrizResultante = transformarMatriz(matrizOriginal, numFilas, numColumnas);
    imprimirMatriz(matrizResultante, numFilas, numColumnas);
    for (int i = 0; i < numFilas; i++) {
        delete[] matrizOriginal[i];
        delete[] matrizResultante[i];
    }
    delete[] matrizOriginal;
    delete[] matrizResultante;
    return 0;
}
