import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class Task2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите строку: ");
        String input = scanner.nextLine();

        Set<Character> letters = new HashSet<>();

        for (char ch : input.toCharArray()) {
            if (Character.isLetter(ch)) {
                letters.add(Character.toLowerCase(ch));
            }
        }

        if (letters.size() == 26) {
            System.out.println("True");
        } else {
            System.out.println("False");
        }
    }
}
