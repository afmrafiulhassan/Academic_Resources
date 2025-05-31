using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Problem_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string vowelDigit = "aeiou0123456789";
            Console.Write("Enter the Character: ");
            char c = Convert.ToChar(Console.ReadLine());
            bool flag = false;
            for (int i = 0; i < vowelDigit.Length; i++)
            {
                if (c == vowelDigit[i] && i <= 4)
                {
                    Console.Write("It's a VOWEL!!");
                    flag = true;
                    break;
                }
                else if (c == vowelDigit[i] && i >= 5)
                {
                    Console.WriteLine("It's a DIGIT!!");
                    flag = true;
                    break;
                }

            }
            if (!flag)
            {
                Console.WriteLine("It's a SYMBOL!!");
            }
            Console.ReadLine();
        }
    }
}