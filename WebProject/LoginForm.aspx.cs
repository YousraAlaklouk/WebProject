using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Net.Mail;
using System.Net;
using System.Drawing;

namespace WebProject
{
    public partial class LoginForm : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-CNJT2HB\\SQLEXPRESS;Initial Catalog= SecurityS&Y;Integrated Security=True");
        public static int value = 0;
        public static string email = "";
        private bool check = true;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    txtUserName.Text = Request.Cookies["UserName"].Value;
                    txtPass.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }
            
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
                        if (chkRememberMe.Checked)
                        {
                            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
                        }
                        else
                        {
                            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                        }
                        Response.Cookies["UserName"].Value = txtUserName.Text.Trim();
                        Response.Cookies["Password"].Value = txtPass.Text.Trim();

                        email = txtUserName.Text;
                        Response.Write("<script>alert('Login successful');</script>");
                        Response.Redirect("~/Home.aspx");

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
            Response.Redirect("~/HomeReg.aspx");
        }

        protected void PassLBtn_Click(object sender, EventArgs e)
        {
            email = txtUserName.Text;
            check = ReadData("select email from Customer", txtUserName.Text);
            if(check == true)
            {
                using (MailMessage mail = new MailMessage())
                {
                    Random random = new System.Random();
                    value = random.Next(0, 9999);
                    mail.From = new MailAddress("samaalfares565@gmail.com");
                    mail.To.Add(txtUserName.Text);
                    mail.Subject = "Reset Password";
                    mail.Body = "Dear Customer, <br/><br/>Code for reseting you email is as follows:<br/></br><h2> " + value + "</h2><br/><br/>Thanks";
                    mail.IsBodyHtml = true;

                    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtp.UseDefaultCredentials = false;
                        smtp.Credentials = new NetworkCredential("samaalfares565@gmail.com", "amgckrtchvzzqcqs");
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                        Response.Write("<script>alert('The Email to reset your password has been sent.');</script>");
                        Response.Redirect("PasswordCode.aspx");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('This email does not exist please register!');</script>");
            }

            
        }

        public bool ReadData(string query, string entity)
        {
            bool check = false;
            string connectionString = "server=DESKTOP-CNJT2HB\\SQLEXPRESS;database=SecurityS&Y;Trusted_Connection=True;";
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