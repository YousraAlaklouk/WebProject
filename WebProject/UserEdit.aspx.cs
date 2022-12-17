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
        SqlConnection connection1 = new SqlConnection("Data Source=DESKTOP-UJH3HOQ\\SQLEXPRESS;Initial Catalog= SecurityS&Y;Integrated Security=True");
        private string email = LoginForm.email;
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
            connection1.Open();
            DataTable dtResult = new DataTable();
            if (connection1.State == ConnectionState.Open)
            {
                try
                {
                    SqlCommand command = new SqlCommand("UPDATE Customer SET FullName  = '" + txtFullName.Text + "', BirthDate ='" + txtBirthDate.Text + "', Gender = @gender WHERE Email = @email OR UserName = @name", connection1);
                    command.Parameters.AddWithValue("@email", email);
                    command.Parameters.AddWithValue("@name", email);
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
                    command.ExecuteNonQuery();
                    //int i = command.ExecuteNonQuery();
                    if (command.ExecuteNonQuery() != 0)
                    {
                        Response.Write("<script>alert('Upadated Seccufully ');</script>");
                    }
                    else if(command.ExecuteNonQuery() == 0)
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
                    connection1.Close();
                }
            }
        }
        protected void LoadDataBut_Click(object sender, EventArgs e)
        {
            SqlDataReader dr;
            connection1.Open();
            DataTable dtResult = new DataTable();

            if (connection1.State == ConnectionState.Open)
            {
                try
                {
                    string query = "SELECT Email,UserName , FullName,BirthDate, Gender,Password FROM Customer WHERE Email = @em OR UserName = @us";

                    SqlCommand command = new SqlCommand(query, connection1);
                    command.Parameters.AddWithValue("@em", email);
                    command.Parameters.AddWithValue("@us", email);
                    command.CommandType = CommandType.Text;
                    dr = command.ExecuteReader();
                    if (dr.Read())
                    {
                        txtEmail.Text = dr["Email"].ToString();
                        txtUserName.Text = dr["UserName"].ToString();
                        txtFullName.Text = dr["FullName"].ToString();
                        txtBirthDate.Text = dr["BirthDate"].ToString();
                        if (dr["Gender"].ToString() == "Female")
                        {
                            Female.Checked = true;

                        }
                        else if (dr["Gender"].ToString() == "Male")
                        {
                            Male.Checked = true;
                        }
                        else
                        {
                            NotToSay.Checked = true;

                        }
                        txtPass.Text = dr["Password"].ToString();
                        Response.Write("<script>alert('seccsiful ');</script>");

                    }
                    else
                    {
                        Response.Write("<script>alert('"+LoginForm.email+"');</script>");

                    }

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex + "');</script>");
                }
                finally
                {
                    connection1.Close();
                }
            }
        }
    }
}
                /*                

                                    SqlCommand command = new SqlCommand("SELECT UserName FROM Customer WHERE Email=" + LoginForm.email.ToString() + " OR UserName =" + LoginForm.email.ToString() + " ", connection1);
                                    txtUserName.Text = command.ExecuteScalar().ToString();

                                    SqlCommand command2 = new SqlCommand("SELECT FullName FROM Customer WHERE Email=" + LoginForm.email.ToString()+ " OR UserName =" + LoginForm.email.ToString() + " ", connection1);
                                    txtFullName.Text = command2.ExecuteScalar().ToString();

                                    SqlCommand command3 = new SqlCommand("SELECT BirthDate FROM Customer WHERE Email=" + LoginForm.email.ToString() + " OR UserName =" + LoginForm.email.ToString()+ " ", connection1);
                                    txtBirthDate.Text = command3.ExecuteScalar().ToString();


                                    SqlCommand command4 = new SqlCommand("SELECT Gender FROM Customer WHERE Email=" + LoginForm.email.ToString() + " OR UserName =" + LoginForm.email.ToString() + " ", connection1);
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
                                    SqlCommand command5 = new SqlCommand("SELECT Password FROM Customer WHERE Email=" + LoginForm.email.ToString() + " OR UserName =" +LoginForm.email.ToString()+" ", connection1);
                                    txtPass.Text = command5.ExecuteScalar().ToString();
                */
                /*                        using (SqlDataReader sdr = command.ExecuteReader())
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
                }*/
