use std::io::{self, Write};

fn main() {
    print!("Введите строку: ");
    io::stdout().flush().unwrap();

    let mut original = String::new();
    io::stdin().read_line(&mut original).unwrap();
    let original = original.trim();

    if original.is_empty() {
        println!("{}", original);
        return;
    }

    let mut new_string = String::new();
    let mut count = 1;
    let chars: Vec<char> = original.chars().collect();
    let mut actual_char = chars[0];

    for i in 1..chars.len() {
        if chars[i - 1] == chars[i] {
            count += 1;
        } else {
            new_string.push(chars[i - 1]);
            new_string.push_str(&count.to_string());
            count = 1;
            actual_char = chars[i];
        }
    }

    new_string.push(actual_char);
    new_string.push_str(&count.to_string());

    if new_string.len() < original.len() {
        println!("{}", new_string);
    } else {
        println!("{}", original);
    }
}