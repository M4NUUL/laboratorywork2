use std::collections::HashSet;
use std::io::{self, Write};

fn main() {
    print!("Введите строку: ");
    io::stdout().flush().unwrap();

    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let input = input.to_lowercase();

    let mut letters = HashSet::new();

    for c in input.chars() {
        if c.is_alphabetic() {
            letters.insert(c);
        }
    }

    if letters.len() == 26 {
        println!("True");
    } else {
        println!("False");
    }
}