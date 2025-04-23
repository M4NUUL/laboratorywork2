import { createInterface } from "node:readline";

const rl = createInterface({
  input: process.stdin,
  output: process.stdout
});

const numbers: number[] = [];

const inputNumber = (n: number) => {
  rl.question("Write your number >>> ", (answer) => {
    numbers.push(Number.parseInt(answer));

    !!n ? inputNumber(n - 1) : rl.close();
  });
};

rl.question("Enter numbers >>> ", (answer) => {
  const n = Number.parseInt(answer);

  inputNumber(n - 1);
});

rl.on("close", () => {
  const result = numbers.reduce<{ count: number; prev?: number }>(
    ({ count, prev }, value) => ({ count: prev === value ? count + 1 : count, prev: value }),
    {
      count: 0
    }
  ).count;

  console.log(`Repeats: ${result}`);
});
