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
            //declaring a 2d array with 2 rows and 5 columns
            //in c#, for n dimensional array, we need to put n-1 commas
            // int the square bracket
            // like for 3d array, we need to put two comma's in the 
            //square brackets [,,]
            int[,] a = new int[2, 5] { { 1, 2, 3, 4, 5 }, { 1, 3, 5, 7, 9 } };
            //can also be wrttien like 
            // int[,] a = {{1, 2, 3, 4, 5}, {1, 3, 5, 7, 9}}; 

            // Now print the 2d array

            for (int i = 0; i < a.GetLength(0); i++)
            {
                Console.Write("Row {0} : ", i + 1);
                for (int j = 0; j < a.GetLength(1); j++)
                {
                    Console.Write(a[i, j] + " ");
                }
                Console.WriteLine();
            }
            // Console.WriteLine(a.Length);
            //note that, for multidimensional array in c# array_name.Length will give the total
            // number the elements present in the array
        }
    }
}