using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Get_length_using_jagged_array
{
    public class Program
    {
        public static void Main(string[] args)
        {
            int[][,] a = new int[][,]{
                    new int[,] {{1, 3, 4}, { 5, 7, 5}},
                    new int[,] {{1, 2, 3}, {3, 4, 5}}
          };

            for (int i = 0; i < a.Length; i++)
            {
                //Console.Write("array {0} : ", i +1);
                int x = 0;
                for (int j = 0; j < a[i].GetLength(x); j++)
                {
                    int y = 1;
                    // Console.Write(a[i][j] + " ");
                    for (int k = 0; k < 3; k++)
                    {
                        Console.Write(a[i][j, k] + " ");
                    }
                    y++;
                    Console.WriteLine();
                }
                x++;
                Console.WriteLine();
            }
        }
    }
}
