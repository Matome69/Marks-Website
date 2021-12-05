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
    public partial class Student : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public DataSet ds;
        public SqlDataAdapter adapter;
        public string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\32023960\Desktop\32023960_Project\32023960_Project\App_Data\Students.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStudentEnter_Click(object sender, EventArgs e)
        {
            string username = txtStudentUser.Text;
            string password = txtStudentPassword.Text;
            con = new SqlConnection(conString);
            con.Open();
            string sql = "SELECT * FROM StudentTable WHERE StudentNo=username";
            ds = new DataSet();
            adapter = new SqlDataAdapter();
            cmd = new SqlCommand(sql,con);
            adapter.SelectCommand = cmd;
            adapter.Fill(ds);
            GridViewStudent.DataSource = ds;
            GridViewStudent.DataBind();
            con.Close();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}