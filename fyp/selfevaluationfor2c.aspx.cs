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
    public partial class selfevaluationfor2c : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;

        String queryStr;
        String q1;
        String q2;
        String q3;
        String q4;
        String q5;
        String q6;
        String q7;
        String q8;
        String q9;
        String q10;
        String c1;
        String c2;
        String c3;
        String c4;
        String c5;

        String check;


        protected void Page_Load(object sender, EventArgs e)
        {
            /*name = (String)Session["uname"];*/
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();






            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT Competency FROM competency LIMIT 1";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            c1 = "";

            while (reader.Read())
            {
                c1 = reader.GetString(reader.GetOrdinal("Competency"));
                Session["cname1"] = c1;
            }
            clabel1.Text = c1;
           

            reader.Close();
            conn.Close();



            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT Competency FROM competency LIMIT 2";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            c2 = "";

            while (reader.Read())
            {
                c2 = reader.GetString(reader.GetOrdinal("Competency"));
                Session["cname2"] = c2;
            }
            clabel2.Text = c2;
            clabel7.Text = c2;

            reader.Close();
            conn.Close();





            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT Competency FROM competency LIMIT 3";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            c3 = "";

            while (reader.Read())
            {
                c3 = reader.GetString(reader.GetOrdinal("Competency"));
                Session["cname3"] = c3;
            }
            clabel3.Text = c3;

            reader.Close();
            conn.Close();





            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT Competency FROM competency LIMIT 4";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            c4 = "";

            while (reader.Read())
            {
                c4 = reader.GetString(reader.GetOrdinal("Competency"));
                Session["cname4"] = c4;
            }
            clabel4.Text = c4;

            reader.Close();
            conn.Close();




            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT Competency FROM competency LIMIT 5";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            c5 = "";

            while (reader.Read())
            {
                c5 = reader.GetString(reader.GetOrdinal("Competency"));
                Session["cname5"] = c5;
            }
            clabel5.Text = c5;

            reader.Close();
            conn.Close();






            svr.Text = Session["username"].ToString();







            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT QuestionText FROM self_questions WHERE Competency LIKE '" + clabel2.Text + "' LIMIT 1";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q1 = "";

            while (reader.Read())
            {
                q1 = reader.GetString(reader.GetOrdinal("QuestionText"));
                Session["uname1"] = q1;
            }

            reader.Close();
            conn.Close();



            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT QuestionText FROM self_questions WHERE Competency LIKE '" + clabel2.Text + "' LIMIT 2";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q2 = "";

            while (reader.Read())
            {
                q2 = reader.GetString(reader.GetOrdinal("QuestionText"));
                Session["uname2"] = q2;
            }
            reader.Close();
            conn.Close();
            q2 = (String)Session["uname2"];
            q2label.Text = q2;



            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT QuestionText FROM self_questions WHERE Competency LIKE '" + clabel2.Text + "' LIMIT 3";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q3 = "";

            while (reader.Read())
            {
                q3 = reader.GetString(reader.GetOrdinal("QuestionText"));
                Session["uname3"] = q3;
            }
            reader.Close();
            conn.Close();




            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT QuestionText FROM self_questions WHERE Competency LIKE '" + clabel2.Text + "' LIMIT 4";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q4 = "";

            while (reader.Read())
            {
                q4 = reader.GetString(reader.GetOrdinal("QuestionText"));
                Session["uname4"] = q4;
            }
            reader.Close();
            conn.Close();




            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT QuestionText FROM self_questions WHERE Competency LIKE '" + clabel2.Text + "' LIMIT 5";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q5 = "";

            while (reader.Read())
            {
                q5 = reader.GetString(reader.GetOrdinal("QuestionText"));
                Session["uname5"] = q5;
            }
            reader.Close();
            conn.Close();



            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT QuestionText FROM self_questions WHERE Competency LIKE '" + clabel2.Text + "' LIMIT 6";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q6 = "";

            while (reader.Read())
            {
                q6 = reader.GetString(reader.GetOrdinal("QuestionText"));
                Session["uname6"] = q6;
            }
            reader.Close();
            conn.Close();




            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT QuestionText FROM self_questions WHERE Competency LIKE '" + clabel2.Text + "' LIMIT 7";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q7 = "";

            while (reader.Read())
            {
                q7 = reader.GetString(reader.GetOrdinal("QuestionText"));
                Session["uname7"] = q7;
            }
            reader.Close();
            conn.Close();




            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT QuestionText FROM self_questions WHERE Competency LIKE '" + clabel2.Text + "' LIMIT 8";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q8 = "";

            while (reader.Read())
            {
                q8 = reader.GetString(reader.GetOrdinal("QuestionText"));
                Session["uname8"] = q8;
            }
            reader.Close();
            conn.Close();




            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT QuestionText FROM self_questions WHERE Competency LIKE '" + clabel2.Text + "' LIMIT 9";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q9 = "";

            while (reader.Read())
            {
                q9 = reader.GetString(reader.GetOrdinal("QuestionText"));
                Session["uname9"] = q9;
            }
            reader.Close();
            conn.Close();




            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT QuestionText FROM self_questions WHERE Competency LIKE '" + clabel2.Text + "' LIMIT 10";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q10 = "";

            while (reader.Read())
            {
                q10 = reader.GetString(reader.GetOrdinal("QuestionText"));
                Session["uname10"] = q10;
            }
            reader.Close();
            conn.Close();



            if (q1 != null)
            {
                q1 = (String)Session["uname1"];
                q1label.Text = q1;
            }
            else
            {
                q1panel.Visible = false;
            }


            if (q2 != q1)
            {
                q2 = (String)Session["uname2"];
                q2label.Text = q2;
            }
            else
            {
                q2panel.Visible = false;
            }


            if (q3 != q2)
            {
                q3 = (String)Session["uname3"];
                q3label.Text = q3;
            }
            else
            {
                q3panel.Visible = false;
            }


            if (q4 != q3)
            {
                q4 = (String)Session["uname4"];
                q4label.Text = q4;
            }
            else
            {
                q4panel.Visible = false;
            }


            if (q5 != q4)
            {
                q5 = (String)Session["uname5"];
                q5label.Text = q5;
            }
            else
            {
                q5panel.Visible = false;
            }


            if (q6 != q5)
            {
                q6 = (String)Session["uname6"];
                q6label.Text = q6;
            }
            else
            {
                q6panel.Visible = false;
            }


            if (q7 != q6)
            {
                q7 = (String)Session["uname7"];
                q7label.Text = q7;
            }
            else
            {
                q7panel.Visible = false;
            }


            if (q8 != q7)
            {
                q8 = (String)Session["uname8"];
                q8label.Text = q8;
            }
            else
            {
                q8panel.Visible = false;
            }


            if (q9 != q8)
            {
                q9 = (String)Session["uname9"];
                q9label.Text = q9;
            }
            else
            {
                q9panel.Visible = false;
            }


            if (q10 != q9)
            {
                q10 = (String)Session["uname10"];
                q10label.Text = q10;
            }
            else
            {
                q10panel.Visible = false;
            }













        }







        protected void submitRadioMethod(object sender, EventArgs e)
        {
            submitRadio();
            Response.Redirect("selfevaluationfor3c.aspx");
        }
        private void submitRadio()
        {








                String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";


                queryStr = "SELECT StudentName FROM selfevascore WHERE StudentName ='" + svr.Text + "' ";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

                reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                    check = reader.GetString(reader.GetOrdinal("StudentName"));
                }


                reader.Close();
                conn.Close();





                if (check == svr.Text)
                {
                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "UPDATE selfevascore SET 2c ='" + RadioButtonList1.Text + "'+'" + RadioButtonList2.Text + "'+'" + RadioButtonList3.Text + "'+'" + RadioButtonList4.Text + "'+'" + RadioButtonList5.Text + "'+'" + RadioButtonList6.Text + "'+'" + RadioButtonList7.Text + "'+'" + RadioButtonList8.Text + "'+'" + RadioButtonList9.Text + "'+'" + RadioButtonList10.Text + "'WHERE StudentName = '" + svr.Text + "' ";

                    Labelcheck.Text = "Changes Have been Submitted Successfully";
                    Labelcheck.ForeColor = System.Drawing.Color.Green;





                }
                else
                {
                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "INSERT INTO selfevascore ( StudentName, 2c)" +
                    "VALUES('" + svr.Text + "','" + RadioButtonList1.Text + "'+'" + RadioButtonList2.Text + "'+'" + RadioButtonList3.Text + "'+'" + RadioButtonList4.Text + "'+'" + RadioButtonList5.Text + "'+'" + RadioButtonList6.Text + "'+'" + RadioButtonList7.Text + "'+'" + RadioButtonList8.Text + "'+'" + RadioButtonList9.Text + "'+'" + RadioButtonList10.Text + "')";



                    Labelcheck.Text = "Submitted Successfully";
                    Labelcheck.ForeColor = System.Drawing.Color.Green;



                }
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                conn.Close();
            



        }
    }
}