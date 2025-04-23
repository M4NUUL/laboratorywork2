using System;

class Program
{
    static void Main()
    {
        Console.Write("Введите количество чисел: ");
        int repets = int.Parse(Console.ReadLine());
        int lastElement = -1;
        int repit = 0;

        for (int i = 0; i < repets; i++)
        {
            int element = int.Parse(Console.ReadLine());

            if (element == lastElement)
            {
                repit++;
            }

            lastElement = element;
        }

        Console.WriteLine($"Количество повторов: {repit}");
    }
}
