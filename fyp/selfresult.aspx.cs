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
    public partial class selfresult : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;

        String queryStr;
        Double scr1;
        Double scr2;
        Double scr3;
        Double scr4;
        Double scr5;
        int maxscore1;
        int maxscore2;
        int maxscore3;
        int maxscore4;
        int maxscore5;
        int max;






        protected void Page_Load(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();





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

            queryStr = "Select Competency FROM competency Limit 2";
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












            svr.Text = Session["username"].ToString();









            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select QuestionText From self_questions WHERE Competency LIKE '"+ cn1.Text +"' ";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            maxscore1 = 0;

            while (reader.Read())
            {
                maxscore1++;
            }


            max = maxscore1*5;
            max1.Text = max.ToString();

            reader.Close();
            conn.Close();







            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "Select QuestionText From self_questions WHERE Competency LIKE '" + cn2.Text + "' ";
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

            queryStr = "Select QuestionText From self_questions WHERE Competency LIKE '" + cn3.Text + "' ";
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

            queryStr = "Select QuestionText From self_questions WHERE Competency LIKE '" + cn4.Text + "' ";
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

            queryStr = "Select QuestionText From self_questions WHERE Competency LIKE '" + cn5.Text + "' ";
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
            queryStr = " ";

            queryStr = "SELECT 1c FROM selfevascore WHERE StudentName LIKE 'A'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                sum1c.Text = reader.GetString(reader.GetOrdinal("1c"));
                scr1 = reader.GetDouble(reader.GetOrdinal("1c"));
            }
            if (scr1 <= 0.6 * maxscore1*5)
            {
                comm1.Text = "You need to improve on " + cn1.Text + ". Don't give up!";
            }
            reader.Close();
            conn.Close();



            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "SELECT 2c FROM selfevascore WHERE StudentName LIKE 'A'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                sum2c.Text = reader.GetString(reader.GetOrdinal("2c"));
                scr2 = reader.GetDouble(reader.GetOrdinal("2c"));
            }

            if (scr2 <= 0.6 * maxscore2 * 5)
            {
                comm2.Text = "You need to improve on " + cn2.Text + ". Try harder!";
            }

            reader.Close();
            conn.Close();


            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "SELECT 3c FROM selfevascore WHERE StudentName LIKE 'A'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                sum3c.Text = reader.GetString(reader.GetOrdinal("3c"));
                scr3 = reader.GetDouble(reader.GetOrdinal("3c"));
            }
            if (scr3 <= 0.6 * maxscore3 * 5)
            {
                comm3.Text = "You need to improve on " + cn3.Text + ".";
            }

            reader.Close();
            conn.Close();







            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "SELECT 4c FROM selfevascore WHERE StudentName LIKE 'A'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                sum4c.Text = reader.GetString(reader.GetOrdinal("4c"));
                scr4 = reader.GetDouble(reader.GetOrdinal("4c"));
            }
            if (scr4 <= 0.6 * maxscore4 * 5)
            {
                comm4.Text = "You need to improve on " + cn4.Text + ". Try harder!";
            }

            reader.Close();
            conn.Close();





            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = " ";

            queryStr = "SELECT 5c FROM selfevascore WHERE StudentName LIKE 'A'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                sum5c.Text = reader.GetString(reader.GetOrdinal("5c"));
                scr5 = reader.GetDouble(reader.GetOrdinal("5c"));
            }
            if (scr5 <= 0.6 * maxscore5 * 5)
            {
                comm5.Text = "You need to improve on " + cn5.Text + ". Don't give up!";
            }

            reader.Close();
            conn.Close();


        }
    }
}