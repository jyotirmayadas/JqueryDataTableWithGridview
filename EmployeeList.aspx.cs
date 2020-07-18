using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JqueryDataTableWithGridview
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindEmployee();
            }
        }

        public void BindEmployee()
        {

            List<Employee> employees = new List<Employee>()
            {
                new Employee(){ EmployeeID = 1, Name= "Sachin", Gender= "Male", Department = "Production", Salary = 5000 },
                new Employee(){ EmployeeID = 2, Name= "Sehwag", Gender= "Male", Department = "Production", Salary = 4000 },
                new Employee(){ EmployeeID = 3, Name= "Virat", Gender= "Male", Department = "Sales", Salary = 6000 },
                new Employee(){ EmployeeID = 4, Name= "Yuvraj", Gender= "Male", Department = "HR", Salary = 5000 },
                new Employee(){ EmployeeID = 5, Name= "Irfan", Gender= "Male", Department = "Production", Salary = 2000 },
                new Employee(){ EmployeeID = 6, Name= "Riya", Gender= "Female", Department = "Fitness", Salary = 1000 },
                new Employee(){ EmployeeID = 7, Name= "Zahir", Gender= "Male", Department = "Production", Salary = 3000 },
                new Employee(){ EmployeeID = 8, Name= "Dhoni", Gender= "Male", Department = "Production", Salary = 7000 },
                new Employee(){ EmployeeID = 9, Name= "Kaif", Gender= "Male", Department = "Production", Salary = 1500 },
                new Employee(){ EmployeeID = 10, Name= "Aswin", Gender= "Male", Department = "Production", Salary = 2500 },
                new Employee(){ EmployeeID = 11, Name= "Pant", Gender= "Male", Department = "Production", Salary = 3000 }

            };

            gvEmployee.DataSource = employees;
            gvEmployee.DataBind();

            //This replaces <td> with <th> and adds the scope attribute
            gvEmployee.UseAccessibleHeader = true;

            //This will add the <thead> and <tbody> elements
            gvEmployee.HeaderRow.TableSection = TableRowSection.TableHeader;

        }
        protected void gvEmployee_PreRender(object sender, EventArgs e)
        {
            //This replaces <td> with <th> and adds the scope attribute
            /*  Gets or sets a value indicating whether a GridView control renders its header in an accessible format.This property is provided to make the control more accessible to users of assistive technology devices.*/
            gvEmployee.UseAccessibleHeader = true;

            //This will add the <thead> and <tbody> elements
            gvEmployee.HeaderRow.TableSection = TableRowSection.TableHeader;

            //This adds the <tfoot> element. 
            //Remove if you don't have a footer row
            // gvInteractionHistory.FooterRow.TableSection = TableRowSection.TableFooter;
        }
    }
}