using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginBut_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");

        }
        public void RegButt_Click(object sender, EventArgs e)
        {
            //insert
            Response.Write("<script>alert('Register successful');</script>");
        }
        public void CancButt_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Canceled');</script>");
        }
/*        public void logo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.html");

        }*/
    }
}