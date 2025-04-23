import Foundation

print("Введите строку:", terminator: " ")
if let input = readLine() {
    var letters = Set<Character>()

    for char in input.lowercased() {
        if char.isLetter {
            letters.insert(char)
        }
    }

    if letters.count == 26 {
        print("True")
    } else {
        print("False")
    }
}
