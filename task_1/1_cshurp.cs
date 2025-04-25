using System;

class Program
{
    static void Main()
    {
        Console.Write("Введите строку: ");
        string originalString = Console.ReadLine();

        if (string.IsNullOrEmpty(originalString))
        {
            Console.WriteLine(originalString);
            return;
        }

        int countOfChar = 1;
        string newString = "";
        char actualChar = originalString[0];

        for (int i = 1; i < originalString.Length; i++)
        {
            if (originalString[i - 1] == originalString[i])
            {
                countOfChar++;
            }
            else
            {
                newString += originalString[i - 1] + countOfChar.ToString();
                countOfChar = 1;
                actualChar = originalString[i];
            }
        }

        newString += actualChar + countOfChar.ToString();

        if (newString.Length < originalString.Length)
        {
            Console.WriteLine(newString);
        }
        else
        {
            Console.WriteLine(originalString);
        }
    }
}
