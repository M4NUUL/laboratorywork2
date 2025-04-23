using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        Console.Write("Введите строку: ");
        string input = Console.ReadLine().ToLower();
        HashSet<char> letters = new HashSet<char>();

        foreach (char ch in input)
        {
            if (char.IsLetter(ch))
            {
                letters.Add(ch);
            }
        }

        if (letters.Count == 26)
        {
            Console.WriteLine("True");
        }
        else
        {
            Console.WriteLine("False");
        }
    }
}
