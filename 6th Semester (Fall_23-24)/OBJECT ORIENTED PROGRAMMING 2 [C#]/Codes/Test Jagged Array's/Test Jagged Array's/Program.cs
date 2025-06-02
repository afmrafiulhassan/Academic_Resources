using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jagged_array
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[][] jagged_array = new int[3][];
            jagged_array[0] = new int[] { 1, 2, 3, 3 };
            jagged_array[1] = new int[] { 4, 5, 6, 7 };
            jagged_array[2] = new int[] { 4, 5, 3 };
            for (int i = 0; i < jagged_array.Length; i++)
            {
                //Print the row number
                Console.WriteLine("Row {0}", i);
                for (int j = 0; j < jagged_array[i].Length; j++)
                {
                    Console.WriteLine("{0}", jagged_array[i][j]);
                }
                Console.WriteLine();
            }
            Console.ReadLine();
        }
    }
}