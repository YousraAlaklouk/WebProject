using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebProject
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        private string email = PasswordCode.email;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void homeBtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Home.html");
        }

        protected void resetPassBtn_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source=DESKTOP-UJH3HOQ\\SQLEXPRESS;Initial Catalog= SecurityS&Y;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("update Customer set Password = '"+passTxt.Text+"' where Email ='"+email+"'", connection);
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            Response.Write("<script>alert('Password successfully changed! You will be redirected to login');</script>");
            Response.Redirect("LoginForm.aspx");

        }
    }
}