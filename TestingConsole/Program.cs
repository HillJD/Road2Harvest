using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace TestingConsole
{
    class Program
    {
        static void Main(string[] args)
        {

            // Add 3 objects to a List.
            List<Test> list = new List<Test>();
            list.Add(new Test(1, 2));
            list.Add(new Test(3, 4));
            list.Add(new Test(5, 6));

            foreach (var s in list)
            {
                Console.WriteLine(s.ToString());
            }
            Console.Read();
        }
        public struct PhoneBook
        {
            public String name;
            public String telephone;
            public String email;
        }

    }
}
