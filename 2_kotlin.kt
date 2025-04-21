fun main() {
    print("Введите строку: ")
    val input = readLine() ?: ""
    
    val letters = mutableSetOf<Char>()

    for (char in input) {
        // Проверяем, является ли символ буквой латинского алфавита
        if (char.isLetter()) {
            // Добавляем символ в нижнем регистре в множество
            letters.add(char.lowercaseChar())
        }
    }

    if (letters.size == 26) {
        println("True")
    } else {
        println("False")
    }
}