use std::io::{self, Write};

fn main() {
    print!("Введите количество чисел: ");
    io::stdout().flush().unwrap();

    let mut count_input = String::new();
    io::stdin().read_line(&mut count_input).unwrap();
    let repets: usize = count_input.trim().parse().unwrap();

    let mut last_element: i32 = -1;
    let mut repit = 0;

    for _ in 0..repets {
        let mut element_input = String::new();
        io::stdin().read_line(&mut element_input).unwrap();
        let element: i32 = element_input.trim().parse().unwrap();

        if element == last_element {
            repit += 1;
        }
        last_element = element;
    }

    println!("Количество повторов: {}", repit);
}