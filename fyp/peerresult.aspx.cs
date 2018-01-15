using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace FYP
{
    public partial class peerresult : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;

        String queryStr;

        Double score1;
        Double score2;
        Double score3;
        Double score4;
        Double score5;
        int count;

        String c1;
        String c2;
        String c3;
        String c4;
        String c5;
        int maxscore1;
        int maxscore2;
        int maxscore3;
        int maxscore4;
        int maxscore5;
        int max;
        String projectid;


        protected void Page_Load(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();





            svr.Text = Session["username"].ToString();

            projectid = Session["project"].ToString();


            count = 0;

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "SELECT 1c FROM webappdemo.peer_ans WHERE StudentName LIKE '" + svr.Text +"'";//!!!!!!! need login start
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                score1 += reader.GetDouble(reader.GetOrdinal("1c"));
                count++;
            }
            score1 = score1 / count;
            sum1c.Text = score1.ToString();
            count = 0;
            reader.Close();
            conn.Close();




            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "SELECT 2c FROM webappdemo.peer_ans WHERE StudentName LIKE '" + svr.Text + "'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                score2 += reader.GetDouble(reader.GetOrdinal("2c"));
                count++;
            }
            score2 = score2 / count;
            sum2c.Text = score2.ToString();
            count = 0;
            reader.Close();
            conn.Close();


            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "SELECT 3c FROM webappdemo.peer_ans WHERE StudentName LIKE '" + svr.Text + "'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                score3 += reader.GetDouble(reader.GetOrdinal("3c"));
                count++;
            }
            score3 = score3 / count;
            sum3c.Text = score3.ToString();
            count = 0;
            reader.Close();
            conn.Close();







            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "SELECT 4c FROM webappdemo.peer_ans WHERE StudentName LIKE '" + svr.Text + "'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                score4 += reader.GetDouble(reader.GetOrdinal("4c"));
                count++;
            }
            score4 = score4 / count;
            sum4c.Text = score4.ToString();
            count = 0;
            reader.Close();
            conn.Close();





            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "SELECT 5c FROM webappdemo.peer_ans WHERE StudentName LIKE '" + svr.Text + "'";//!!!!!! end
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                score5 += reader.GetDouble(reader.GetOrdinal("5c"));
                count++;
            }
            score5 = score5 / count;
            sum5c.Text = score5.ToString();
            count = 0;
            reader.Close();
            conn.Close();









            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select Competency From competency Limit 1";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                cn1.Text = reader.GetString(reader.GetOrdinal("Competency"));
            }

            reader.Close();
            conn.Close();



            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select Competency From competency Limit 2";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                cn2.Text = reader.GetString(reader.GetOrdinal("Competency"));
            }

            reader.Close();
            conn.Close();




            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select Competency From competency Limit 3";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                cn3.Text = reader.GetString(reader.GetOrdinal("Competency"));
            }

            reader.Close();
            conn.Close();



            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select Competency From competency Limit 4";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                cn4.Text = reader.GetString(reader.GetOrdinal("Competency"));
            }

            reader.Close();
            conn.Close();






            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select Competency From competency Limit 5";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                cn5.Text = reader.GetString(reader.GetOrdinal("Competency"));
            }

            reader.Close();
            conn.Close();









            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select QuestionText From peer_questions WHERE Competency LIKE '" + cn1.Text + "'AND ProjectID LIKE '" + projectid + "' ";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            maxscore1 = 0;

            while (reader.Read())
            {
                maxscore1++;
            }


            max = maxscore1 * 5;
            max1.Text = max.ToString();

            reader.Close();
            conn.Close();







            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select QuestionText From peer_questions WHERE Competency LIKE '" + cn2.Text + "'AND ProjectID LIKE '" + projectid + "' ";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            maxscore2 = 0;

            while (reader.Read())
            {
                maxscore2++;
            }


            max = maxscore2 * 5;
            max2.Text = max.ToString();

            reader.Close();
            conn.Close();






            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select QuestionText From peer_questions WHERE Competency LIKE '" + cn3.Text + "'AND ProjectID LIKE '" + projectid + "' ";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            maxscore3 = 0;

            while (reader.Read())
            {
                maxscore3++;
            }


            max = maxscore3 * 5;
            max3.Text = max.ToString();

            reader.Close();
            conn.Close();





            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select QuestionText From peer_questions WHERE Competency LIKE '" + cn4.Text + "'AND ProjectID LIKE '" + projectid + "' ";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            maxscore4 = 0;

            while (reader.Read())
            {
                maxscore4++;
            }


            max = maxscore4 * 5;
            max4.Text = max.ToString();

            reader.Close();
            conn.Close();





            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select QuestionText From peer_questions WHERE Competency LIKE '" + cn5.Text + "'AND ProjectID LIKE '" + projectid + "' ";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            maxscore1 = 0;

            while (reader.Read())
            {
                maxscore5++;
            }


            max = maxscore5 * 5;
            max5.Text = max.ToString();

            reader.Close();
            conn.Close();

















            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT Comments FROM peer_ans WHERE StudentName LIKE '" + svr.Text + "' LIMIT 1";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            c1 = "";

            while (reader.Read())
            {
                c1 = reader.GetString(reader.GetOrdinal("Comments"));
                Session["uname11"] = c1;
            }
            reader.Close();
            conn.Close();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT Comments FROM peer_ans WHERE StudentName LIKE '" + svr.Text + "' LIMIT 2";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            c2 = "";

            while (reader.Read())
            {
                c2 = reader.GetString(reader.GetOrdinal("Comments"));
                Session["uname12"] = c2;
            }
            reader.Close();
            conn.Close();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT Comments FROM peer_ans WHERE StudentName LIKE '" + svr.Text + "' LIMIT 3";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            c3 = "";

            while (reader.Read())
            {
                c3 = reader.GetString(reader.GetOrdinal("Comments"));
                Session["uname13"] = c3;
            }
            reader.Close();
            conn.Close();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT Comments FROM peer_ans WHERE StudentName LIKE '" + svr.Text + "' LIMIT 4";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            c4 = "";

            while (reader.Read())
            {
                c4 = reader.GetString(reader.GetOrdinal("Comments"));
                Session["uname14"] = c4;
            }
            reader.Close();
            conn.Close();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT Comments FROM peer_ans WHERE StudentName LIKE '" + svr.Text + "' LIMIT 5";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            c5 = "";

            while (reader.Read())
            {
                c5 = reader.GetString(reader.GetOrdinal("Comments"));
                Session["uname15"] = c5;
            }
            reader.Close();
            conn.Close();



            if (c1 != null)
            {
                c1 = (String)Session["uname11"];
                c1label.Text = c1;
            }
            else
            {
                c1label.Text = "N.A.";
            }

            if (c5 != c1)
            {
                c2 = (String)Session["uname12"];
                c2label.Text = c2;
            }
            else
            {
                c2label.Text = "N.A.";
            }

            if (c3 != c2)
            {
                c3 = (String)Session["uname13"];
                c3label.Text = c3;
            }
            else
            {
                c3label.Text = "N.A.";
            }

            if (c4 != c3)
            {
                c4 = (String)Session["uname14"];
                c4label.Text = c4;
            }
            else
            {
                c4label.Text = "N.A.";
            }

            if (c5 != c4)
            {
                c5 = (String)Session["uname15"];
                c5label.Text = c5;
            }
            else
            {
                c5label.Text = "N.A.";
            }



        }
    }
}