fun main() {
    print("Введите количество чисел: ")
    val repets = readLine()?.toIntOrNull() ?: return
    var lastElement = -1
    var repit = 0

    repeat(repets) {
        val element = readLine()?.toIntOrNull() ?: 0
        if (element == lastElement) {
            repit++
        }
        lastElemefun main() {
    print("Enter the number of inputs: ")
    val totalNumbers = readLine()?.toIntOrNull()

    var lastElement: Int? = null
    var repeatCount = 0

    repeat(totalNumbers) {
        print("Enter a number: ")
        val element = readLine()?.toIntOrNull()

        if (element == lastElement) {
            repeatCount++
        }
        lastElement = element
    }

    println("Number of repetitions: $repeatCount")
}nt = element
    }

    println("Количество повторов: $repit")
}