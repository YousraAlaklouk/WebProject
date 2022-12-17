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
        protected void LoadDataBut_Click(object sender, EventArgs e)
        {
            connection.Open();
            if (connection.State == ConnectionState.Open)
            {

                try
                {
                    SqlCommand command = new SqlCommand("SELECT Email,UserName , FullName,BirthDate, Gender,Password FROM Customer WHERE  Email =" + LoginForm.email + " OR UserName = " + LoginForm.email + "", connection);
                    command.CommandType = CommandType.Text;
                    using (SqlDataReader sdr = command.ExecuteReader())
                    {
                        txtEmail.Text = sdr["Email"].ToString();
                        txtUserName.Text = sdr["UserName"].ToString();
                        txtFullName.Text = sdr["FullName"].ToString();
                        txtBirthDate.Text = sdr["Birthdate"].ToString();
                        if (sdr["Gender"].ToString() == "Female")
                        {
                            Female.Checked = true;

                        }
                        else if (sdr["Gender"].ToString() == "Male")
                        {
                            Male.Checked = true;
                        }
                        else
                        {
                            NotToSay.Checked = true;

                        }
                        txtPass.Text = sdr["Password"].ToString();
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