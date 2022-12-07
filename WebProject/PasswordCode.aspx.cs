using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace WebProject
{
    public partial class PasswordCode : System.Web.UI.Page
    {
        private int code = LoginForm.value;
        public static string email = LoginForm.email;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void resetPassBtn_Click(object sender, EventArgs e)
        {
            if(codeTxt.Text == code.ToString())
            {
                Response.Redirect("~/ForgotPassword.aspx");
            }
            else
            {
                Response.Write("<script>alert('Code incorrect');</script>");
            }
        }
    }
}