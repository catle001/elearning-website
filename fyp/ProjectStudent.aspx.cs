using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace FYP
{
    public partial class ProjectStudent : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand cmd;
        String queryStr;
        String projectName;
        String name;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindGrid();
            }
        }

        

        private DataTable GetData()
        {
            name = Session["Username"].ToString();
            DataTable dt = new DataTable();
            conn = new MySqlConnection(getConnectionString());
            cmd = new MySqlCommand();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);

            cmd.CommandText = "SELECT ProjectID FROM webappdemo.students_enrolled where studentName like '"+name+"'" ;
            cmd.Connection = conn;
            sda.Fill(dt);

            return dt;
        }

        private void BindGrid()
        {
            DataTable dt = GetData();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
        }

        protected void MyButtonClick(object sender, System.EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            projectName = row.Cells[0].Text;
            Response.Redirect("ProjectDetailStudent.aspx?Project=" + Server.UrlEncode(projectName));
        }

    }
}