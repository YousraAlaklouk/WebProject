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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-CNJT2HB\\SQLEXPRESS;Initial Catalog= SecurityS&Y;Integrated Security=True");
        private bool checkEmail = false;
        private bool checkUsername = false;
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
            connection.Open();
            DataTable dtResult = new DataTable();
            checkEmail = ReadData("select Email from Customer",txtEmail.Text);
            checkUsername = ReadData("select UserName from Customer",txtUserName.Text);
            if(checkEmail == false && checkUsername == false)
            {
                if (connection.State == ConnectionState.Open)
                {
                    try
                    {
                        SqlCommand command = new SqlCommand("INSERT INTO Customer (Username,Email ,Fullname, BirthDate, Gender,Password)" +
                            " VALUES ('" + txtUserName.Text.Trim() + "','" + txtEmail.Text.Trim() + "','" + txtFullName.Text.Trim() + "', '" + txtBirthDate.Text.Trim() + "',@gender,'" + txtPass.Text.Trim() + "')", connection);
                        if (Male.Checked)
                        {
                            command.Parameters.AddWithValue("@gender", "Male");

                        }
                        else if (Female.Checked)
                        {
                            command.Parameters.AddWithValue("@gender", "Female");

                        }
                        else
                        {
                            command.Parameters.AddWithValue("@gender", "Rather Not To Say");

                        }
                        DateTime now = DateTime.Now;
                        DateTime givenDate = DateTime.Parse(txtBirthDate.Text);

                        int days = now.Subtract(givenDate).Days;
                        double age = Math.Floor(days / 365.24219);


                        if (age < 10)
                        {
                            Response.Write("<script>alert('you are too yange you can not register');</script>");

                        }
                        else
                        {
                            int i = command.ExecuteNonQuery();

                            if (i != 0)
                            {

                                Response.Write("<script>alert('Register successful you can login now');</script>");
                                // Response.Redirect("~/LoginForm.aspx");


                            }
                            else
                            {
                                Response.Write("<script>alert('Register Failed');</script>");

                            }
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
            else if(checkUsername == true)
            {
                Response.Write("<script>alert('There is already an account with this username');</script>");
            }else if(checkEmail == true)
            {
                Response.Write("<script>alert('There is already an account with this email');</script>");
            }
        }
        protected void CancelBut_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Cancelled );</script>");

        }

        public bool ReadData(string query, string entity)
        {
            bool check = false;
            string connectionString = "server=DESKTOP-UJH3HOQ\\SQLEXPRESS;database=SecurityS&Y;Trusted_Connection=True;";
            using (SqlConnection connection = new SqlConnection(
                       connectionString))
            {
                SqlCommand command = new SqlCommand(
                    query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        if (reader[0].ToString() == entity)
                        {
                            check = true;
                            return check;

                        }

                    }
                }
                finally
                {
                    reader.Close();
                }
                return check;
            }
        }
    }
}