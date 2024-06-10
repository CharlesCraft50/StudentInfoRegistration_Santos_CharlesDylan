using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentInfoRegistration_Santos_CharlesDylan.Models
{
    public class Student
    {
        public string StudentId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public int Age { get; set; }
        public string Address { get; set; }
        public string Year { get; set; }
        public string Section { get; set; }

        public Student(string studentId, string lastName, string firstName, string middleName, int age, string address, string year, string section)
        {
            StudentId = studentId;
            LastName = lastName;
            FirstName = firstName;
            MiddleName = middleName;
            Age = age;
            Address = address;
            Year = year;
            Section = section;
        }

        public override string ToString()
        {
            return $"{StudentId}, {LastName}, {FirstName}, {MiddleName}, {Age}, {Address}, {Year}, {Section}";
        }
    }
}