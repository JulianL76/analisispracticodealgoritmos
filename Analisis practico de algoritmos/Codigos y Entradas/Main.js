const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

let matrizResultante = [];

rl.question("", function() {
  rl.on('line', function(line) {
    const valores = line.split(" ").map(Number);
    matrizResultante.push(valores);
  });
});

rl.on('close', function() {
  matrizResultante = transformarMatriz(matrizResultante);
  imprimirMatriz(matrizResultante);
});

function imprimirMatriz(matriz) {
  for (let i = 0; i < matriz.length; i++) {
    for (let j = 0; j < matriz[i].length; j++) {
      process.stdout.write(matriz[i][j] + " ");
    }
    console.log();
  }
}

function transformarMatriz(matrizOriginal) {
  let matrizResultante = new Array(matrizOriginal.length).fill().map(() => new Array(matrizOriginal[0].length));

  for (let i = 0; i < matrizOriginal.length; i++) {
    for (let j = 0; j < matrizOriginal[i].length; j++) {
      let valor = matrizOriginal[i][j];
      if (i === 0 || i % 2 === 0) {
        valor++;
      }
      if (j === 0 || j % 2 === 0) {
        valor += 2;
      }
      if (i % 2 !== 0 && j % 2 !== 0) {
        valor -= 3;
      }
      matrizResultante[i][j] = valor;
    }
  }
  return matrizResultante;
}
