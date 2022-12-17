using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebProject
{
    public partial class TestInterface : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-CNJT2HB\\SQLEXPRESS;Initial Catalog= SecurityS&Y;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(ReadData("select R.ID from Result as R inner join Customer as C on R.CustomerID = C.CustomerID where R.TestID = 'T1136.001' and(C.UserName = '"+LoginForm.email+"' or C.Email = '"+LoginForm.email+"')"))
            {
                TestBut1.Enabled = false;
                delBtn.Enabled = true;
            }
            else
            {
                TestBut1.Enabled = true;
                delBtn.Enabled = false;
            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Home.html");
        }

        protected void TestBut1_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
            startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            startInfo.FileName = "cmd.exe";
            startInfo.Arguments = "/C net user /add \"#{username}\" \"#{password}\"\nnet localgroup administrators \"#{username}\" / add";
            startInfo.Verb = "runas";
            process.StartInfo = startInfo;
            process.Start();

            connection.Open();
            DataTable dtResult = new DataTable();
            if (connection.State == ConnectionState.Open)
            {
                try
                {
                    SqlCommand command = new SqlCommand("INSERT INTO Result (TestID,CustomerID,Result) VALUES ('T1136.001'," + GetData("select CustomerID from Customer where UserName = '" + LoginForm.email + "' or Email = '" + LoginForm.email + "'") + ", 'Test has succeeded a new user with the username #(username) and password #(password) has been created')", connection);

                    int i = command.ExecuteNonQuery();

                    if (i != 0)
                    {
                        Response.Write("<script>alert('Test has succeeded a new user with the username #(username) and password #(password) has been created');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('There was an error, please try again');</script>");
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
            TestBut1.Enabled = false;
            delBtn.Enabled = true;
        }

        public bool ReadData(string query)
        {
            bool check = false;
            string connectionString = "Data Source=DESKTOP-CNJT2HB\\SQLEXPRESS;Initial Catalog= SecurityS&Y;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        if (reader[0].ToString() != "")
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

        public string GetData(string query)
        {
            string id = "" ;
            string connectionString = "Data Source=DESKTOP-CNJT2HB\\SQLEXPRESS;Initial Catalog= SecurityS&Y;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        if (reader[0].ToString() != "")
                        {
                            id = reader[0].ToString();
                            return id;
                        }
                    }
                }
                finally
                {
                    reader.Close();
                }
                return id;
            }
        }

        protected void delBtn_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
            startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            startInfo.FileName = "cmd.exe";
            startInfo.Arguments = "/C net user /del \"#{username}\" >nul 2>&1";
            startInfo.Verb = "runas";
            process.StartInfo = startInfo;
            process.Start();

            connection.Open();
            DataTable dtResult = new DataTable();
            if (connection.State == ConnectionState.Open)
            {
                try
                {
                    
                    SqlCommand command = new SqlCommand("delete from Result where ID ="+ GetData("select ID from Result where TestID = 'T1136.001' and CustomerID = "+ GetData("select CustomerID from Customer where UserName = '" + LoginForm.email + "' or Email = '" + LoginForm.email + "'")),connection);
                    
                    int i = command.ExecuteNonQuery();
                    if (i != 0)
                    {
                        Response.Write("<script>alert('Deletion has succeeded');</script>");
                        TestBut1.Enabled = true;
                        delBtn.Enabled = false;
                    }
                    else
                    {
                        Response.Write("<script>alert('There was an error, please try again');</script>");
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
            else
            {
                Response.Write("<script>alert('Else');</script>");
            }
        }

        protected void TestBut2_Click(object sender, EventArgs e)
        {
            string id = GetData("select max(id) from Result");
            try
            {
                Process p = new Process()
                {
                    StartInfo = new ProcessStartInfo("cmd.exe")
                    {
                        RedirectStandardInput = true,
                        RedirectStandardOutput = true,
                        UseShellExecute = false,
                        CreateNoWindow = true
                    }
                };

                p.Start();

                using (StreamWriter sw = p.StandardInput)
                {
                    sw.WriteLine("dir | clip");
                    sw.WriteLine("echo \"T" + id + "\" > %temp%\\T" + id + ".txt");
                    sw.WriteLine("clip < %temp%\\T" + id + ".txt");
                }

                connection.Open();
                DataTable dtResult = new DataTable();
                if (connection.State == ConnectionState.Open)
                {
                    try
                    {
                        SqlCommand command = new SqlCommand("INSERT INTO Result (TestID,CustomerID,Result) VALUES ('T1115'," + GetData("select CustomerID from Customer where UserName = '" + LoginForm.email + "' or Email = '" + LoginForm.email + "'") + ", 'A new T"+id+ ".txt file has been created and can be found in %temp% file')", connection);

                        int i = command.ExecuteNonQuery();

                        if (i != 0)
                        {
                            Response.Write("<script>alert('Test has succeeded. A new .txt file with the name T"+id+ " has been created and can be found in %temp% file');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('There was an error, please try again');</script>");
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
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "');</script>");
            }
           
        }
    }
}