import java.util.Scanner;

public class Task3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите количество чисел: ");
        int repets = scanner.nextInt();

        int lastElement = -1;
        int repit = 0;

        for (int i = 0; i < repets; i++) {
            int element = scanner.nextInt();
            if (element == lastElement) {
                repit++;
            }
            lastElement = element;
        }

        System.out.println("Количество повторов: " + repit);
    }
}
