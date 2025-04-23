const readline = require('readline').createInterface({
   input: process.stdin,
   output: process.stdout
 });
 
 readline.question("Введите строку: ", (input) => {
   const letters = new Set();
 
   for (let char of input) {
     if (/[a-z]/.test(char)) {
       letters.add(char.toLowerCase());
     }
   }
 
   if (letters.size === 26) {
     console.log("True");
   } else {
     console.log("False");
   }
 
   readline.close();
 });
 