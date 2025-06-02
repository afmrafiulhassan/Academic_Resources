using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace HelloWorld
{
    public class Program
    {
        public static void Main(string[] args)
        {
            //  jagged array in c#
            // following is an example of a single dimensional jagged array
            // jagged array means arrays inside an arrays

            int[][] a = new int[2][]{
                    new int[] {1, 3, 5, 7},
                    new int[] {1, 2, 3, 4, 5}
          };

            for (int i = 0; i < a.Length; i++)
            {
                Console.Write("array {0} : ", i + 1);
                for (int j = 0; j < a[i].Length; j++)
                {
                    Console.Write(a[i][j] + " ");
                }
                Console.WriteLine();
            }
        }
    }
}