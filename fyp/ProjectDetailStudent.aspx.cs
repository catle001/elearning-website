using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net;
using System.Net.Mail;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace FYP
{
    public partial class ProjectDetailStudent : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand cmd;
        String projectName;
        String projectid;

        protected void Page_Load(object sender, EventArgs e)
        {
            projectName = Server.UrlDecode(Request.QueryString["Project"].ToString());
            //projectName = "3";
            Label1.Text = projectName;
            
            if (!IsPostBack)
            {
             
                this.BindGridViewName();
            }
        }

        
        
        
        private DataTable GetDataStudentGroup(string query)
        {
            DataTable dt = new DataTable();
            conn = new MySqlConnection(getConnectionString());
            cmd = new MySqlCommand();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);

            cmd.CommandText = query;
            cmd.Connection = conn;
            sda.Fill(dt);

            return dt;
        }
        private DataTable GetData2()
        {
            DataTable dt = new DataTable();
            conn = new MySqlConnection(getConnectionString());
            cmd = new MySqlCommand();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);

            cmd.CommandText = "SELECT studentName FROM webappdemo.students_enrolled where projectID like '" + projectName + "'";
            cmd.Connection = conn;
            sda.Fill(dt);

            return dt;
        }
        private void BindGridViewName()
        {
            DataTable dt = GetData2();
            AddGroupGridView.DataSource = dt;
            AddGroupGridView.DataBind();
        }
        private string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
        }
        

       

        

    }
}