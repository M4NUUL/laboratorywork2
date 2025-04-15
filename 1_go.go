package main

import (
	"fmt"
)

func main() {
	countOfChar := 1
	newString := ""
	var originalString string
	fmt.Scanln(&originalString)
	actualChar := originalString[0]

	for i := 1; i < len(originalString); i++ {
		if originalString[i-1] == originalString[i] {
			countOfChar++
		} else {
			newString += string(originalString[i-1])
			newString += fmt.Sprint(countOfChar)
			countOfChar = 1
			actualChar = originalString[i]
		}
	}

	newString += string(actualChar)
	newString += fmt.Sprint(countOfChar)

	if len(newString) < len(originalString) {
		fmt.Println(newString)
	} else {
		fmt.Println(originalString)
	}
}