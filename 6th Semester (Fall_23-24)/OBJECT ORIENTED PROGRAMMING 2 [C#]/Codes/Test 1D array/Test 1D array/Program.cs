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
            // ** Array in c# ***
            //Let's declare and intialize a single dimensional array
            int[] a = new int[5] { 1, 2, 3, 4, 5 };
            int[] arr = { 1, 3, 5, 7, 9 };
            // we can also wrtie like int[] a = new int[] {1, 2, 3, 4, 5};
            // we can even also write like int[] = {1, 2, 3, 4, 5};
            //array_name.Length will return the size of the array                    

            // printing the elements of the first array
            for (int i = 0; i < a.Length; i++)
            {
                Console.WriteLine(a[i]);
            }

            // printing the elements of the second array 
            for (int i = 0; i < a.Length; i++)
            {
                Console.WriteLine(arr[i]);
            }
        }
    }
}