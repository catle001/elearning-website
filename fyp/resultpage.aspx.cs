using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace FYP
{
    public partial class resultpage : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand cmd;
        String queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "select projectID, projectName from webappdemo.student";
                BindDropDownList(project, query, "projectName", "projectId", "Select Project");
                group.Enabled = false;
                student.Enabled = false;
                group.Items.Insert(0, new ListItem("Select Group", "0"));
                student.Items.Insert(0, new ListItem("Select Student", "0"));
            }
        }


        protected void project_SelectedIndexChanged(object sender, EventArgs e)
        {
            group.Enabled = false;
            student.Enabled = false;
            group.Items.Clear();
            student.Items.Clear();
            group.Items.Insert(0, new ListItem("Select Group", "0"));
            student.Items.Insert(0, new ListItem("Select Student", "0"));
            int projectId = int.Parse(project.SelectedItem.Value);
            if (projectId > 0)
            {
                string query = string.Format("select groupId, groupName from webappdemo.student where projectId = {0}", projectId);
                BindDropDownList(group, query, "groupName", "groupId", "Select Group");
                group.Enabled = true;
            }
        }
        protected void group_SelectedIndexChanged(object sender, EventArgs e)
        {
            student.Enabled = false;
            student.Items.Clear();
            student.Items.Insert(0, new ListItem("Select Student", "0"));
            int groupId = int.Parse(group.SelectedItem.Value);
            if (groupId > 0)
            {
                string query = string.Format("select studentId, studentName from webappdemo.student where groupId = {0}", groupId);
                BindDropDownList(student, query, "studentName", "studentId", "Select Student");
                student.Enabled = true;
            }
        }
        protected void student_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = student.SelectedItem.Text;
            string constr = getConnectionString();

            Label1.Text = ("You are viewing the result of student " + name);
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                MySqlCommand cmd = new MySqlCommand("SELECT comments,svr FROM webappdemo.studentscore WHERE studentname='" + name + "'");
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }

            //string name = "Xingmeng"; //Weijie, Cat
            int[] test = { 10, 100, 70, 60, 10 }; //for testing
            int[] score = GetDatabaseAns(name);
            string scriptText = GetRadarchartString(name, score);
            litScript.Text = scriptText;
        }

        private void BindDropDownList(DropDownList ddl, string query, string text, string value, string defaultText)
        {
            string conString = ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;
            MySqlCommand cmd = new MySqlCommand(query);
            using (MySqlConnection con = new MySqlConnection(conString))
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
                var = (double)reader.GetDecimal(reader.GetOrdinal("StudentSumScore1c"));
                ans[0] = (int)var * 100 / 4;
                var = (double)reader.GetDecimal(reader.GetOrdinal("StudentSumScore2c"));
                ans[1] = (int)var * 100 / 4;
                var = (double)reader.GetDecimal(reader.GetOrdinal("StudentSumScore3c"));
                ans[2] = (int)var * 100 / 4;
                var = (double)reader.GetDecimal(reader.GetOrdinal("StudentSumScore4c"));
                ans[3] = (int)var * 100 / 4;
                var = (double)reader.GetDecimal(reader.GetOrdinal("StudentSumScore5c"));
                ans[4] = (int)var * 100 / 4;
            }
            conn.Close();
            return ans;
        }

        protected string GetRadarchartString(string name, int[] score)
        {
            string title = name + " core competencies";
            string[] attribute = { "Character", "Creativity", "Competence", "Communication", "Civil-minded" };
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

    }
}