import java.util.Scanner;

public class Task1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите строку: ");
        String originalString = scanner.nextLine();

        if (originalString.isEmpty()) {
            System.out.println(originalString);
            return;
        }

        int countOfChar = 1;
        StringBuilder newString = new StringBuilder();
        char actualChar = originalString.charAt(0);

        for (int i = 1; i < originalString.length(); i++) {
            if (originalString.charAt(i - 1) == originalString.charAt(i)) {
                countOfChar++;
            } else {
                newString.append(originalString.charAt(i - 1));
                newString.append(countOfChar);
                countOfChar = 1;
                actualChar = originalString.charAt(i);
            }
        }

        newString.append(actualChar).append(countOfChar);

        if (newString.length() < originalString.length()) {
            System.out.println(newString.toString());
        } else {
            System.out.println(originalString);
        }
    }
}
