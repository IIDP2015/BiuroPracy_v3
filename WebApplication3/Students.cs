using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    [Serializable]
    public class Student
    {
        public string Name { get; set; }
        public int Age { get; set; }
        public string Surname { get; set; }
        public bool Active { get; set; }

        public IEnumerable<Student> Get()
        {
            var result = new List<Student>();
            result.Add(new Student
            {
                Active = true,
                Age = 32,
                Name = "Illia",
                Surname = "Khvost"
            });

            result.Add(new Student
            {
                Active = false,
                Age = 22,
                Name = "Baran",
                Surname = "QQQ"
            });

            result.Add(new Student
            {
                Active = true,
                Age = 42,
                Name = "qqq",
                Surname = "qqq"
            });

            return result;
        }
    }
}