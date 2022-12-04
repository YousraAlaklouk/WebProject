using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebProject
{
    public partial class LoginForm : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-CNJT2HB\\SQLEXPRESS;Initial Catalog= SecurityS&Y;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBut_Click(object sender, EventArgs e)
        {

            SqlDataReader dr;
            connection.Open();
            DataTable dtResult = new DataTable();
            if (connection.State == ConnectionState.Open)
            {
                // check for the user name and the password
                try
                {

                    SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE (Username = @Username OR Email= @email ) " +
                        "AND Password =@pass ", connection);
                    cmd.Parameters.AddWithValue("@username", txtUserName.Text);
                    cmd.Parameters.AddWithValue("@email", txtUserName.Text);

                    cmd.Parameters.AddWithValue("@pass", txtPass.Text);





                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Response.Write("<script>alert('Login successful');</script>");
                        Response.Redirect("~/Home.html");

                    }
                    else
                    {
                        Response.Write("<script>alert('Wrong UserName Or passwoed ');</script>");
                    }


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('"+ex+"');</script>");
                }
                finally
                {
                    connection.Close();

                }


            }
        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Home.html");
        }
    }
}