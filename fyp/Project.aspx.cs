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
    public partial class Project : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand cmd;
        String queryStr;
        String projectName;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindGrid();
            }
        }

        protected void AddProjectBtn_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TopicTextBox.Text))
            {
                string name = TopicTextBox.Text;
                string description = DescriptionTextBox.Text;

                conn = new MySqlConnection(getConnectionString());
                queryStr = "";
                queryStr = "INSERT INTO webappdemo.projects(ProjectName,ProjectDescription)" +
                    "VALUES(@name, @description)";
                MySqlCommand cmd = new MySqlCommand(queryStr, conn);

                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@description", description);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                Response.Redirect(Request.RawUrl);

            }
            else { Response.Write("<script>alert('Please enter a project name');</script>"); }
        }

        private DataTable GetData()
        {
            DataTable dt = new DataTable();
            conn = new MySqlConnection(getConnectionString());
            cmd = new MySqlCommand();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);

            cmd.CommandText = "SELECT * FROM webappdemo.projects";
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
            Response.Redirect("ProjectDetail.aspx?Project=" + Server.UrlEncode(projectName));
        }

    }
}