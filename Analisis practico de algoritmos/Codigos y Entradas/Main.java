import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int[][] matrizResultante = new int[0][0];

        int numFilas = sc.nextInt();
        int numColumnas = sc.nextInt();
        int[][] matrizOriginal = new int[numFilas][numColumnas];

        for (int i = 0; i < numFilas; i++) {
            for (int j = 0; j < numColumnas; j++) {
                matrizOriginal[i][j] = sc.nextInt();
            }
        }
        matrizResultante = transformarMatriz(matrizOriginal);
        imprimirMatriz(matrizResultante);

    }

    public static void imprimirMatriz(int[][] matriz) {
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[i].length; j++) {
                System.out.print(matriz[i][j] + " ");
            }
            System.out.println();
        }
    }

    public static int[][] transformarMatriz(int[][] matrizOriginal) {
        int[][] matrizResultante = new int[matrizOriginal.length][matrizOriginal[0].length];
        for (int i = 0; i < matrizOriginal.length; i++) {
            for (int j = 0; j < matrizOriginal[i].length; j++) {
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
}
