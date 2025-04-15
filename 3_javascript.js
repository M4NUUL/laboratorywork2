const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

let repets = 0;
let count = 0;
let numbersEntered = 0;
let lastElement = -1;
let repit = 0;

rl.question("Введите количество чисел: ", (answer) => {
  repets = parseInt(answer);
  askNumber();
});

function askNumber() {
  if (numbersEntered >= repets) {
    console.log(`Количество повторов: ${repit}`);
    rl.close();
    return;
  }

  rl.question("", (numStr) => {
    const num = parseInt(numStr);
    if (num === lastElement) {
      repit++;
    }
    lastElement = num;
    numbersEntered++;
    askNumber();
  });
}
