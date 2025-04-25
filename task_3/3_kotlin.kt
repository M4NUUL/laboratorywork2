import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)
    print("Введите количество чисел: ")
    val range = scanner.nextInt()
    var countOfRepits = 0
    var lastElement = -1

    repeat(range) {
        val element = scanner.nextInt()
        if (element == lastElement) {
            countOfRepits++
        }
        lastElement = element
    }

    println("Количество повторов: $countOfRepits")
}