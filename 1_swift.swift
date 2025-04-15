import Foundation

print("Введите строку:", terminator: " ")
if let originalString = readLine(), !originalString.isEmpty {
    var newString = ""
    var countOfChar = 1
    var actualChar = originalString.first!

    for i in 1..<originalString.count {
        let current = originalString[originalString.index(originalString.startIndex, offsetBy: i)]
        let previous = originalString[originalString.index(originalString.startIndex, offsetBy: i - 1)]

        if current == previous {
            countOfChar += 1
        } else {
            newString += "\(previous)\(countOfChar)"
            countOfChar = 1
            actualChar = current
        }
    }

    newString += "\(actualChar)\(countOfChar)"

    if newString.count < originalString.count {
        print(newString)
    } else {
        print(originalString)
    }
}