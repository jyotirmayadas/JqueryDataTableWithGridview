using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JqueryDataTableWithGridview
{
    public class Employee
    {
        public Employee()
        {

        }
        public int EmployeeID { get; set; }
        public string Name { get; set; }
        public string Gender { get; set; }
        public string Department { get; set; }
        public decimal Salary { get; set; }

        public List<Employee> employees { get; set; }

    }
}