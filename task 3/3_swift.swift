import Foundation

print("Введите количество чисел:", terminator: " ")
if let input = readLine(), let repets = Int(input) {
    var lastElement = -1
    var repit = 0

    for _ in 0..<repets {
        if let elementStr = readLine(), let element = Int(elementStr) {
            if element == lastElement {
                repit += 1
            }
            lastElement = element
        }
    }

    print("Количество повторов: \(repit)")
}
