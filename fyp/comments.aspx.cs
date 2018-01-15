using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.Text;

namespace FYP
{
    public partial class comments : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand cmd;
        String queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //bind ddl
                string query = "select projectID, projectName from webappdemo.projects";
                BindDropDownList(project, query, "projectName", "projectId", "Select Project");
                group.Enabled = false;
                student.Enabled = false;
                group.Items.Insert(0, new ListItem("--Select Group--", "0"));
                student.Items.Insert(0, new ListItem("--Select Student--", "0"));
            }
        }

        private void BindDropDownList(DropDownList ddl, string query, string text, string value, string defaultText)
        {
            string constr = getConnectionString();
            MySqlCommand cmd = new MySqlCommand(query);

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Connection = con;
                    con.Open();
                    ddl.DataSource = cmd.ExecuteReader();
                    ddl.DataTextField = text;
                    ddl.DataValueField = value;
                    ddl.DataBind();
                    con.Close();
                }
            }
            ddl.Items.Insert(0, new ListItem(defaultText, "0"));
        }

        private string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
        }

        protected int[] GetDatabaseAns(string name)
        {
            int[] ans = new int[5];
            conn = new MySqlConnection(getConnectionString());
            conn.Open();
            queryStr = "SELECT * FROM webappdemo.peer_ans " +
                "WHERE StudentName= @name";
            cmd = new MySqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@name", name);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                double var;
                var = (double)reader.GetDecimal(reader.GetOrdinal("1c"));
                ans[0] = (int)var * 100 / 5;
                var = (double)reader.GetDecimal(reader.GetOrdinal("2c"));
                ans[1] = (int)var * 100 / 5;
                var = (double)reader.GetDecimal(reader.GetOrdinal("3c"));
                ans[2] = (int)var * 100 / 5;
                var = (double)reader.GetDecimal(reader.GetOrdinal("4c"));
                ans[3] = (int)var * 100 / 5;
                var = (double)reader.GetDecimal(reader.GetOrdinal("5c"));
                ans[4] = (int)var * 100 / 5;
            }
            conn.Close();
            return ans;
        }

        protected string GetRadarchartString(string name, int[] score)
        {
            string title = name + " core competencies";
            string[] attribute = { "Character", "Creativity", "Competence", "Communication", "Civic-mindedness" };
            string temp = "";
            temp += "function createChart() {$('#chart').kendoChart({ title: { " +
                "text: '" +
                title +
                "'},legend: { position: 'bottom'}," +
                "seriesDefaults: { type: 'radarArea'}," +
                "series: [{data: [" +
                score[0] + ", " +
                score[1] + ", " +
                score[2] + ", " +
                score[3] + ", " +
                score[4] +
                "]}],categoryAxis: { categories: ['" +
                attribute[0] +
                "', '" + attribute[1] +
                "', '" + attribute[2] +
                "', '" + attribute[3] +
                "', '" + attribute[4] +
                "'],majorGridLines: { visible: false} }, " +
                "valueAxis: { min: 0, max: 100, line: { visible: false } } });}; " +
                "$(document).ready(createChart); $(document).bind('kendo:skinChange', createChart);";
            return temp;
        }
        protected void project_SelectedIndexChanged(object sender, EventArgs e)
        {
            group.Enabled = false;
            student.Enabled = false;
            group.Items.Clear();
            student.Items.Clear();
            group.Items.Insert(0, new ListItem("--Select Group--", "0"));
            student.Items.Insert(0, new ListItem("--Select Student--", "0"));
            int projectId = int.Parse(project.SelectedValue);
            if (projectId > 0)
            {
                string query = string.Format("select GroupID, GroupName from webappdemo.groups where ProjectID = {0}", projectId);
                BindDropDownList(group, query, "GroupName", "GroupID", "Select Group");
                group.Enabled = true;
            }
        }
        protected void group_SelectedIndexChanged(object sender, EventArgs e)
        {
            student.Enabled = false;
            student.Items.Clear();
            student.Items.Insert(0, new ListItem("Select Student", "0"));
            int groupId = int.Parse(group.SelectedValue);
            int projectId = int.Parse(project.SelectedValue);
            if (groupId > 0)
            {
                string query = "SELECT StudentID, StudentName FROM webappdemo.students_enrolled WHERE GroupID = '" + groupId + "' AND ProjectID = '" + projectId + "'";
                BindDropDownList(student, query, "StudentName", "StudentID", "--Select Student--");
                student.Enabled = true;
            }
        }
        protected void student_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = student.SelectedItem.Text;
            int[] score = GetDatabaseAns(name);
            string scriptText = GetRadarchartString(name, score);
            litScript.Text = scriptText;
            //Populating a DataTable from database.
            DataTable dt = this.GetData();

            //Building an HTML string.
            StringBuilder html = new StringBuilder();

            //Table start.
            html.Append("<table border = '1'>");

            //Building the Header row.
            html.Append("<tr>");
            foreach (DataColumn column in dt.Columns)
            {
                html.Append("<th>");
                html.Append(column.ColumnName);
                html.Append("</th>");
            }
            html.Append("</tr>");

            //Building the Data rows.
            foreach (DataRow row in dt.Rows)
            {
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<td>");
                    html.Append(row[column.ColumnName]);
                    html.Append("</td>");
                }
                html.Append("</tr>");
            }

            //Table end.
            html.Append("</table>");

            //Append the HTML string to Placeholder.
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private DataTable GetData()
        {
            string name = student.SelectedItem.Text;
            string constr = ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                MySqlCommand cmd = new MySqlCommand("SELECT StudentName, svr, Comments FROM webappdemo.peer_ans WHERE studentname = '" + name + "'");

                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }
}
