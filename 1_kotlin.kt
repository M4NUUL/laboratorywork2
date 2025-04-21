fun main() {
    print("Введите строку: ")
    val originalString = readLine() ?: ""
    if (originalString.isEmpty()) {
        println(originalString)
        return
    }

    var countOfChar = 1
    var newString = ""
    var actualChar = originalString[0]

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

    newString += actualChar
    newString += countOfChar.toString()

    
    if (newString.length < originalString.length) {
        println(newString)
    } else {
        println(originalString)
    }
}