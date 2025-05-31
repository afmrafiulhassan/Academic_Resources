using System;

class Fun
{
    private int[] arr;
    private int size;

    public Fun(int capacity)
    {
        arr = new int[capacity];
        size = 0;
    }

    public void insert(int item)
    {
        if (size < arr.Length)
        {
            arr[size] = item;
            size++;
            sort();
        }
        else
        {
            Console.WriteLine("Array is full. Cannot insert more items.");
        }
    }

    public void sort()
    {
        Array.Sort(arr, 0, size);
    }

    public int binarySearch(int item)
    {
        int left = 0;
        int right = size - 1;

        while (left <= right)
        {
            int middle = left + (right - left) / 2;

            if (arr[middle] == item)
            {
                return middle;
            }
            else if (arr[middle] < item)
            {
                left = middle + 1;
            }
            else
            {
                right = middle - 1;
            }
        }

        return -1;
    }
}

class Kid
{
    private int[] items;
    private int currentItem;
    private Fun fun;

    public Kid(Fun fun, int itemCount)
    {
        items = new int[itemCount];
        currentItem = 0;
        this.fun = fun;
    }

    public void item(int item)
    {
        items[currentItem] = item;
        currentItem++;
    }

    public void search()
    {
        foreach (int item in items)
        {
            int position = fun.binarySearch(item);
            if (position != -1)
            {
                Console.WriteLine($"Item {item} found at position {position}.");
                Console.WriteLine("Enter next item to find.");
            }
            else
            {
                Console.WriteLine($"Item {item} not found.");
                Console.WriteLine("Enter next item to find.");
            }
        }

        Console.WriteLine("Better luck next time.");
    }
}

class Program
{
    static void Main()
    {
        Fun fun = new Fun(10);
        Kid kid = new Kid(fun, 3);

        // Insert items into the array
        fun.insert(10);
        fun.insert(20);
        fun.insert(30);

        // Specify items to search for
        kid.item(20);
        kid.item(40);
        kid.item(10);

        // Search for items and display the results
        kid.search();
    }
}