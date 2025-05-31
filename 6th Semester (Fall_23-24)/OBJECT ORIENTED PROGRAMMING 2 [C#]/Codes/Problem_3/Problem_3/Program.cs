using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Problem_3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            for (int i = 1; i <= 5; i++)
            {

                for (int a = 1; a <= 5 - i; a++)
                {
                    Console.Write("     ");
                }

                for (int j = 1; j <= (2 * i - 1); j++)
                {

                    Console.Write("*    ");
                }
                Console.WriteLine();
            }

            for (int i = 1; i <= 5 - 1; i++)
            {
                for (int a = 1; a <= i; a++)
                {
                    Console.Write("     ");
                }
                for (int j = 1; j <= 2 * (5 - i) - 1; j++)
                {
                    Console.Write("*    ");
                }
                Console.WriteLine();
            }

            Console.ReadLine();
        }
    }
}