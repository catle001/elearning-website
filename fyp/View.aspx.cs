using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace FYP
{
    public partial class View : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand cmd;
        String queryStr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindRepeater();
                DisplayProgressBar();
            }

        }

        private string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
        }

        private DataTable GetData()
        {
            DataTable dt = new DataTable();
            conn = new MySqlConnection(getConnectionString());
            cmd = new MySqlCommand();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);

            cmd.CommandText = "SELECT * FROM webappdemo.fileinfo_website4 LEFT JOIN webappdemo.icon_url " +
                "ON webappdemo.fileinfo_website4.type=webappdemo.icon_url.type";
            cmd.Connection = conn;
            sda.Fill(dt);

            return dt;
        }

        private void BindRepeater()
        {
            DataTable dt = GetData();
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var label1 = e.Item.FindControl("Label1");
            string name = ((Label)label1).Text;
            switch (e.CommandName)
            {
                case "Click":
                    MarkasReadButton(name);
                    Response.Redirect(Request.RawUrl);
                    break;
            }
        }

        void MarkasReadButton(string name)
        {
            conn = new MySqlConnection(getConnectionString());
            conn.Open();
            queryStr = "";
            queryStr = "UPDATE webappdemo.fileinfo_website4 SET isCompleted=\"Completed\"  WHERE name=  '"+name+"'";

            cmd = new MySqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.ExecuteNonQuery();
            conn.Close();

        }

        void DisplayProgressBar()
        {
            conn = new MySqlConnection(getConnectionString());
            conn.Open();
            queryStr = "SELECT count( * ) FROM webappdemo.fileinfo_website4";
            cmd = new MySqlCommand(queryStr, conn);
            int countAll = (int)Convert.ToInt32(cmd.ExecuteScalar());

            queryStr = "SELECT count( * ) FROM webappdemo.fileinfo_website4 WHERE isCompleted=\"Completed\" ";
            cmd = new MySqlCommand(queryStr, conn);
            int countCompleted = (int)Convert.ToInt32(cmd.ExecuteScalar());
            int percentage = countCompleted * 100 / countAll;
            string percentageString = percentage.ToString() + "%";
            /*
            System.Diagnostics.Debug.WriteLine(percentageString);
            */

            progressbar.Style.Add("width", percentageString);
            progressbar.InnerText = percentageString;
        }
    }
}