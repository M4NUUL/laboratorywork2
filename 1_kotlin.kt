fun main() {
    // Считываем исходную строку
    print("Введите строку: ")
    val originalString = readLine() ?: ""
    if (originalString.isEmpty()) {
        println(originalString)
        return
    }

    var countOfChar = 1
    var newString = ""
    var actualChar = originalString[0]

    // Проходим по символам начиная со второго
    for (i in 1 until originalString.length) {
        if (originalString[i - 1] == originalString[i]) {
            countOfChar++ // Увеличиваем счётчик, если символы одинаковые
        } else {
            newString += originalString[i - 1]
            newString += countOfChar.toString()
            countOfChar = 1 // Сбрасываем счётчик
            actualChar = originalString[i]
        }
    }

    // Добавляем последний символ и его количество
    newString += actualChar
    newString += countOfChar.toString()

    
    if (newString.length < originalString.length) {
        println(newString)
    } else {
        println(originalString)
    }
}