using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace _32023960_Project
{
    public partial class Marks : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public DataSet ds;
        public SqlDataAdapter adapter;
        public string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\32023960\Desktop\32023960_Project\32023960_Project\App_Data\Students.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(conString);
            string sql = "SELECT * FROM StudentTable WHERE Module ='CMPG111'";
            con.Open();
            ds = new DataSet();
            adapter = new SqlDataAdapter();
            cmd = new SqlCommand(sql, con);
            adapter.SelectCommand = cmd;
            adapter.Fill(ds);
            GridViewStaff.DataSource = ds;
            GridViewStaff.DataBind();
            con.Close();
        }

        protected void GridViewStaff_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnNewStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("New.aspx");
        }
    }
}