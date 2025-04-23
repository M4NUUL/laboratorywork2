import * as readline from 'readline';

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Введите строку: ', (originalString) => {
  if (originalString.length === 0) {
    console.log(originalString);
    rl.close();
    return;
  }

  let newString = '';
  let countOfChar = 1;
  let actualChar = originalString[0];

  for (let i = 1; i < originalString.length; i++) {
    if (originalString[i - 1] === originalString[i]) {
      countOfChar++;
    } else {
      newString += originalString[i - 1] + countOfChar;
      countOfChar = 1;
      actualChar = originalString[i];
    }
  }

  newString += actualChar + countOfChar;

  if (newString.length < originalString.length) {
    console.log(newString);
  } else {
    console.log(originalString);
  }

  rl.close();
});
