using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Problem_2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter a Decimal Number: ");
            int num = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Binary of " + num + " is : " + Convert.ToString(num, 2));
            Console.ReadLine();
        }
    }
}