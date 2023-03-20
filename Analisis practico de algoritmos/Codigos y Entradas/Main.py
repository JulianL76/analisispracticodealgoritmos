def transformarMatriz(matrizOriginal):
    matrizResultante = [[0 for j in range(len(matrizOriginal[0]))] for i in range(len(matrizOriginal))]
    for i in range(len(matrizOriginal)):
        for j in range(len(matrizOriginal[i])):
            valor = matrizOriginal[i][j]
            if i == 0 or i % 2 == 0:
                valor += 1
            if j == 0 or j % 2 == 0:
                valor += 2
            if i % 2 != 0 and j % 2 != 0:
                valor -= 3
            matrizResultante[i][j] = valor
    return matrizResultante

def imprimirMatriz(matriz):
    for i in range(len(matriz)):
        for j in range(len(matriz[i])):
            print(matriz[i][j], end=" ")
        print()

matrizResultante = []
numFilas, numColumnas = map(int, input().split())
matrizOriginal = [[0 for j in range(numColumnas)] for i in range(numFilas)]

for i in range(numFilas):
    fila = input().split()
    for j in range(numColumnas):
        matrizOriginal[i][j] = int(fila[j])

matrizResultante = transformarMatriz(matrizOriginal)
imprimirMatriz(matrizResultante)
