using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace WebProject
{
    public class SQLCon
    {
        public void modify(string query)
        {
            MySqlConnection con = new MySqlConnection();
            con.ConnectionString = ("server=127.0.0.1;database=securitys&y;uid=root;pwd=\"\";");
            con.Open();
            try
            {
                MySqlCommand cm = new MySqlCommand(query, con);
                cm.ExecuteNonQuery();

                MessageBox.Show("Data insert");
            }
            catch (Exception ex)
            {

            }
            con.Close();
        }

        public string getInfo(string query,string column)
        {
            string data = "";
            MySqlConnection con = new MySqlConnection();
            con.ConnectionString = ("server=127.0.0.1;database=securitys&y;uid=root;pwd=\"\";");
            try
            {
                MySqlCommand cm = new MySqlCommand(query, con);
                con.Open();
                MySqlDataReader reader = cm.ExecuteReader();
                
                while (reader.Read())
                {
                    data = reader.GetString(column);
                }
                return data;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return data;
            }
            con.Close();
        }
    }
}