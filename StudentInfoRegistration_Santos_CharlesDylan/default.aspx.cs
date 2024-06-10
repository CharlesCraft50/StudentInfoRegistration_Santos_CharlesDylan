using StudentInfoRegistration_Santos_CharlesDylan.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentInfoRegistration_Santos_CharlesDylan
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerButton_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(studentId.Text) ||
                string.IsNullOrWhiteSpace(lastName.Text) ||
                string.IsNullOrWhiteSpace(firstName.Text) ||
                string.IsNullOrWhiteSpace(middleName.Text) ||
                string.IsNullOrWhiteSpace(age.Text) ||
                string.IsNullOrWhiteSpace(address.Text) ||
                string.IsNullOrWhiteSpace(year.SelectedValue) ||
                string.IsNullOrWhiteSpace(section.Text))
            {
                errorMessage.Text = "All fields are required.";
                return;
            }

            if (!int.TryParse(age.Text, out int ageValue) || ageValue < 16 || ageValue > 100)
            {
                errorMessage.Text = "Invalid Age. Please enter age between 16 and 100.";
                return;
            }

            Student student = new Student(
                studentId.Text,
                lastName.Text,
                firstName.Text,
                middleName.Text,
                ageValue,
                address.Text,
                year.SelectedValue,
                section.Text);

            Session["Student"] = student;

            Response.Redirect("output.aspx");
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            // Clear the input fields
            studentId.Text = string.Empty;
            lastName.Text = string.Empty;
            firstName.Text = string.Empty;
            middleName.Text = string.Empty;
            age.Text = string.Empty;
            address.Text = string.Empty;
            year.SelectedIndex = 0;
            section.Text = string.Empty;
            errorMessage.Text = string.Empty;
        }
    }
}