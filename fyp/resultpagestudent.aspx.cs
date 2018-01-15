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
    public partial class resultpagestudent : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand cmd;
        String queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Session["Username"].ToString();
            String name;
            name = Label2.Text;
            string constr = getConnectionString();

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