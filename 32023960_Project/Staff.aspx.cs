using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _32023960_Project
{
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnter_Click(object sender, EventArgs e)
        {
            string username = txtStaffName.Text;
            string password = txtStaffPass.Text;
            if(username=="32023960" && password=="donut")
            {
                Response.Redirect("Marks.aspx");
            }
                
        }
    }
}