import * as readline from 'readline';

const rl3 = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

let repets = 0;
let count = 0;
let lastElement = -1;
let repit = 0;

rl3.question('Введите количество чисел: ', (num) => {
  repets = parseInt(num);
  askNumber();
});

function askNumber() {
  if (count >= repets) {
    console.log(`Количество повторов: ${repit}`);
    rl3.close();
    return;
  }

  rl3.question('', (input) => {
    const element = parseInt(input);
    if (element === lastElement) {
      repit++;
    }
    lastElement = element;
    count++;
    askNumber();
  });
}
