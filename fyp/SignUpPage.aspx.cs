using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Collections;
using System.Text;
using System.Configuration;
using System.Data;

namespace FYP
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;
            string fName = Request.Form["tbFirstName"];
            string lName = Request.Form["tbLastName"];
            string idNo = Request.Form["tbIDNo"];
            string eMail = Request.Form["tbEmail"];
            string uName = Request.Form["tbUName"];
            string pwd = Request.Form["tbpword"];
            string domain = Request.Form["tbdomain"];
            string pwdFinal = "";
          

            pwdFinal = HashSHA1(pwd);
            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                MySqlCommand cmd = new MySqlCommand();
                conn.Open();
                cmd.Connection = conn;
                cmd.CommandText = "createuser";
                cmd.CommandType = CommandType.StoredProcedure;
                try
                {
                    cmd.Parameters.Add("firstname", MySqlDbType.VarChar).Value = fName.Trim().ToUpper();
                    cmd.Parameters["firstname"].Size = 30;
                    cmd.Parameters["firstname"].Direction = ParameterDirection.Input;

                    cmd.Parameters.Add("lastname", MySqlDbType.VarChar).Value = lName.Trim().ToUpper();
                    cmd.Parameters["lastname"].Size = 30;
                    cmd.Parameters["lastname"].Direction = ParameterDirection.Input;

                    cmd.Parameters.Add("idno", MySqlDbType.VarChar).Value = idNo.Trim().ToUpper();
                    cmd.Parameters["idno"].Size = 30;
                    cmd.Parameters["idno"].Direction = ParameterDirection.Input;

                    cmd.Parameters.Add("email", MySqlDbType.VarChar).Value = eMail.Trim();
                    cmd.Parameters["email"].Size = 255;
                    cmd.Parameters["email"].Direction = ParameterDirection.Input;

                    cmd.Parameters.Add("username", MySqlDbType.VarChar).Value = uName.Trim();
                    cmd.Parameters["username"].Size = 20;
                    cmd.Parameters["username"].Direction = ParameterDirection.Input;

                    cmd.Parameters.Add("pword", MySqlDbType.MediumText).Value = pwdFinal.Trim();
                    cmd.Parameters["pword"].Direction = ParameterDirection.Input;

                    cmd.Parameters.Add("roleid", MySqlDbType.Int16).Value = domain.Trim();
                    cmd.Parameters["roleid"].Size = 1;
                    cmd.Parameters["roleid"].Direction = ParameterDirection.Input;

                    cmd.ExecuteNonQuery();
                    int k = cmd.ExecuteNonQuery();
                    if (k >= 1)
                    {
                        //display error message
                    }
                    else
                    {
                        Response.Redirect("LoginPage.aspx");
                    }
                }
                catch (MySqlException err)
                {
                    Console.WriteLine("Error:" + err.ToString());
                }
                finally
                {
                    if (conn != null)
                    {
                        conn.Close();
                    }
                }
            }
        }

        public static string HashSHA1(string value)
        {
            var sha1 = System.Security.Cryptography.SHA1.Create();
            var inputBytes = Encoding.ASCII.GetBytes(value);
            var hash = sha1.ComputeHash(inputBytes);

            var sb = new StringBuilder();
            for (var i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }
    }
}