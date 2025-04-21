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
        lastElement = element
    }

    println("Количество повторов: $repit")
}