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


namespace FYP
{
    public partial class loginpeerevaluation : System.Web.UI.Page
    {
        String projectName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Response.Expires = -1;
                Response.ExpiresAbsolute = DateTime.Now;
                Response.CacheControl = "no-cache";
                ClearApplicationCache();
                ((Literal)Login1.FindControl("FailureText")).Text = string.Empty;
                ((Literal)Login1.FindControl("FailureText")).Visible = false;
            }

            projectName = Server.UrlDecode(Request.QueryString["Project"].ToString());
            Session["project"] = projectName;
        }

        protected void btnSignUpLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpPage.aspx");
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            ((Literal)Login1.FindControl("FailureText")).Visible = false;
            //String connStr = @"server=localhost;database=webappdemo;userid=root;password=admin1;";
            String connStr = ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;
            MySqlConnection conn = null;
            String uname, password;
            int roleID = 0;
            switch (((DropDownList)Login1.FindControl("ddlDomain")).Text)
            {
                case "Staff":
                    roleID = 1;
                    break;
                case "Admin":
                    roleID = 0;
                    break;
                case "Student":
                    roleID = 2;
                    break;
            }
            try
            {
                conn = new MySqlConnection(connStr);
                conn.Open();
                String cmdTxt = "select username from users where username=@username and password=@password and role_id=@roleID";

                uname = ((TextBox)Login1.FindControl("UserName")).Text;
                password = HashSHA1(((TextBox)Login1.FindControl("Password")).Text);

                MySqlCommand cmd = new MySqlCommand(cmdTxt, conn);
                cmd.Parameters.AddWithValue("@username", uname);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@roleID", roleID);
                cmd.Prepare();
                MySqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    Session["Username"] = uname;
                    reader.Close();
                    if (roleID == 1)
                        Response.Redirect("peerevaluationfor1c.aspx");
                    else if (roleID == 2)
                        Response.Redirect("peerevaluationfor1c.aspx");
                    else
                        Response.Redirect("peerevaluationfor1c.aspx");
                }
                else
                {
                    ((Literal)Login1.FindControl("FailureText")).Visible = true;
                    ((Literal)Login1.FindControl("FailureText")).Text = "Invalid username, domain, or password!";
                    reader.Close();
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

        public void ClearApplicationCache()
        {
            List<string> keys = new List<string>();
            // retrieve application Cache enumerator
            IDictionaryEnumerator enumerator = Cache.GetEnumerator();
            // copy all keys that currently exist in Cache
            while (enumerator.MoveNext())
            {
                keys.Add(enumerator.Key.ToString());
            }
            // delete every key from cache
            for (int i = 0; i < keys.Count; i++)
            {
                Cache.Remove(keys[i]);
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