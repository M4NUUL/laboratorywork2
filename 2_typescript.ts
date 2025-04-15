import * as readline from 'readline';

const rl2 = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl2.question('Введите строку: ', (input) => {
  const set = new Set<string>();

  for (const char of input.toLowerCase()) {
    if (/[a-z]/.test(char)) {
      set.add(char);
    }
  }

  if (set.size === 26) {
    console.log("True");
  } else {
    console.log("False");
  }

  rl2.close();
});
