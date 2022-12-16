using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace WebProject
{

    public partial class UserEdit : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-UJH3HOQ\\SQLEXPRESS;Initial Catalog= SecurityS&Y;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            txtEmail.Text = LoginForm.email;
            connection.Open();
            DataTable dtResult = new DataTable();
            if (connection.State == ConnectionState.Open)
            {
                try
                {
                    SqlCommand command = new SqlCommand("SELECT UserName From Customer WHERE Cutomer Email" + txtEmail.Text + " ", connection);
                    txtFullName.Text = command.ExecuteScalar().ToString();

                    SqlCommand command2 = new SqlCommand("SELECT FullName From Customer WHERE Cutomer Email" + txtEmail.Text + " ", connection);
                    txtFullName.Text = command2.ExecuteScalar().ToString();

                    SqlCommand command3 = new SqlCommand("SELECT BirthDate From Customer WHERE Cutomer Email" + txtEmail.Text + " ", connection);
                    txtBirthDate.Text = command3.ExecuteScalar().ToString();


                    SqlCommand command4 = new SqlCommand("SELECT Gender From Customer WHERE Cutomer Email" + txtEmail.Text + " ", connection);
                    if (command4.ExecuteScalar().ToString() == "Female")
                    {
                        Female.Checked = true;

                    }
                    else if (command4.ExecuteScalar().ToString() == "Male")
                    {
                        Male.Checked = true;
                    }
                    else
                    {
                        NotToSay.Checked = true;

                    }
                    SqlCommand command5 = new SqlCommand("SELECT Password From Customer WHERE Cutomer Email" + txtEmail.Text + " ", connection);
                    txtPass.Text = command5.ExecuteScalar().ToString();




                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex + "');</script>");
                }
                finally
                {
                    connection.Close();

                }

            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Home.html");
        }
        protected void UpdateBut_Click(object sender, EventArgs e)
        {
            string female = "Female";
            string male = "Male";
            string neither = "Rether Not To Say";
            connection.Open();
            DataTable dtResult = new DataTable();
            if (connection.State == ConnectionState.Open)
            {
                try
                {
                    SqlCommand command = new SqlCommand("UPDATE Customer SET FullName  = " + txtFullName.Text + ", BirthDate =" + txtBirthDate.Text + ", Gender = @gender WHERE Email = @email", connection);
                    if (Female.Checked)
                    {
                        command.Parameters.AddWithValue("@gender", female);

                    }
                    else if (Male.Checked)
                    {
                        command.Parameters.AddWithValue("@gender", male);

                    }
                    else
                    {
                        command.Parameters.AddWithValue("@gender", neither);

                    }

                    int i = command.ExecuteNonQuery();

                    if (i != 0)
                    {
                        Response.Write("<script>alert('Upadated Seccufully ');</script>");

                    }


                    else
                    {
                        Response.Write("<script>alert('Failed Try Again Later');</script>");

                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex + "');</script>");
                }
                finally
                {
                    connection.Close();

                }


            }
        }
    }
}