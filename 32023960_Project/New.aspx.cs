using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace _32023960_Project
{
    public partial class New : System.Web.UI.Page
    {
        public string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\32023960\Desktop\32023960_Project\32023960_Project\App_Data\Students.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            txtNewStudentNo.Focus();
        }

        

        public void clear()
        {
            
            txtNewStudentExam.Text = "";
            txtNewStudentModule.Text = "";
            txtNewStudentName.Text = "";
            txtNewStudentNo.Text = "";
            txtNewStudentPart.Text = "";
            txtNewStudentSurname.Text = "";
            lblModuleMark.Text = "";
            txtNewStudentNo.Focus();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            HttpCookie studentInfo = new HttpCookie("Info");
            studentInfo["studentNo"] = txtNewStudentNo.Text;
            studentInfo["name"] = txtNewStudentName.Text;
            studentInfo["surname"] = txtNewStudentSurname.Text;
            studentInfo["module"] = txtNewStudentModule.Text;
            studentInfo["partMark"] = txtNewStudentPart.Text;
            studentInfo["examMark"] = txtNewStudentExam.Text;

            if(int.Parse(studentInfo["partMark"])>40)
            {
                int module = ((int.Parse(txtNewStudentPart.Text) + int.Parse(txtNewStudentExam.Text)) / 2);
                lblModuleMark.Text = module.ToString("");
            }
            else
            {
                int module = 0;
                lblModuleMark.Text = module.ToString("");
            }
            
            studentInfo["moduleMark"] = lblModuleMark.Text;

            studentInfo.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(studentInfo);

            if(txtNewStudentNo.Text.Length==8)
            {
                SqlConnection con = new SqlConnection(conString);
                con.Open();
                string sql = "INSERT INTO StudentTable VALUES('" + studentInfo["studentNo"] + "','" + studentInfo["surname"] + "', '" + studentInfo["name"] + "', '" + studentInfo["module"] + "', '" + studentInfo["partMark"] + "', '" + studentInfo["examMark"] + "', '" + studentInfo["moduleMark"] + "')";
                SqlDataAdapter adapter = new SqlDataAdapter();
                SqlCommand cmd = new SqlCommand(sql, con);
                adapter.InsertCommand = cmd;
                adapter.InsertCommand.ExecuteNonQuery();
                con.Close();
                lblDisplay.Text = studentInfo["name"] + " " + studentInfo["surname"] + " has been entered into the database";
                clear();
            }
            else
            {
                lblDisplay.Text=("student number must be 8 characters");
            }
            

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Marks.aspx");
        }
    }
}