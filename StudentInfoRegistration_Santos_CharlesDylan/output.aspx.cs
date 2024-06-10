using StudentInfoRegistration_Santos_CharlesDylan.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentInfoRegistration_Santos_CharlesDylan
{
    public partial class output : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student"] != null)
            {
                Student student = (Student)Session["Student"];

                studentIdValue.Text = student.StudentId;
                fullNameValue.Text = student.LastName + ", " + student.FirstName + " " + student.MiddleName;
                ageValue.Text = student.Age.ToString();
                addressValue.Text = student.Address;
                yearValue.Text = student.Year;
                sectionValue.Text = student.Section;
            }
            else
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void backToFormButton_Click(object sender, EventArgs e)
        {
            // Clear the input fields
            Session["Student"] = null;

            Response.Redirect("default.aspx");
        }
    }
}