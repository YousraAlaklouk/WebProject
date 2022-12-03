using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Home.html");
        }

        protected void RegisterBut_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginForm.aspx");
        }
        public void logo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.html");

        }

        protected void CancelBut_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");

        }


    }
}