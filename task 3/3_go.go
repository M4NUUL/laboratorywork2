package main

import (
	"fmt"
)

func main() {
	var repets int
	fmt.Print("Введите количество чисел: ")
	fmt.Scanln(&repets)

	lastElement := -1
	repit := 0

	for i := 0; i < repets; i++ {
		var element int
		fmt.Scanln(&element)

		if element == lastElement {
			repit++
		}

		lastElement = element
	}

	fmt.Printf("Количество повторов: %d\n", repit)
}
