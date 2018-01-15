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
    public partial class peerevaluationfor3c : System.Web.UI.Page
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
        String n1;
        String n2;
        String n3;
        String n4;
        String n5;
        String c1;
        String c2;
        String c3;
        String c4;
        String c5;
        String gp;
        int count;
        String projectid;





        String check;


        protected void Page_Load(object sender, EventArgs e)
        {
            /*name = (String)Session["uname"];*/
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();



            projectid = Session["project"].ToString();


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
            clabel6.Text = c3;

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

            queryStr = "SELECT group_name FROM new_student_group WHERE student_name LIKE '" + svr.Text + "' AND project_id LIKE '" + projectid + "'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q1 = "";

            while (reader.Read())
            {
                gp = reader.GetString(reader.GetOrdinal("group_name"));
                Session["gp"] = gp;
            }

            reader.Close();
            conn.Close();




            count = -1;
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "' AND project_id LIKE '" + projectid + "'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            q1 = "";

            while (reader.Read())
            {
                count++;
            }

            reader.Close();
            conn.Close();









            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT QuestionText FROM peer_questions WHERE Competency LIKE '" + clabel3.Text + "' AND ProjectID LIKE '" + projectid + "' LIMIT 1";
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

            queryStr = "SELECT QuestionText FROM peer_questions WHERE Competency LIKE '" + clabel3.Text + "' AND ProjectID LIKE '" + projectid + "' LIMIT 2";
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

            queryStr = "SELECT QuestionText FROM peer_questions WHERE Competency LIKE '" + clabel3.Text + "' AND ProjectID LIKE '" + projectid + "' LIMIT 3";
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

            queryStr = "SELECT QuestionText FROM peer_questions WHERE Competency LIKE '" + clabel3.Text + "' AND ProjectID LIKE '" + projectid + "' LIMIT 4";
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

            queryStr = "SELECT QuestionText FROM peer_questions WHERE Competency LIKE '" + clabel3.Text + "' AND ProjectID LIKE '" + projectid + "' LIMIT 5";
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










            if (count >= 1)
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'LIMIT 1";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                reader = cmd.ExecuteReader();
                n1 = "";

                while (reader.Read())
                {
                    n1 = reader.GetString(reader.GetOrdinal("student_name"));
                    Session["sname1"] = n1;
                }

                reader.Close();
                conn.Close();
                if (n1 == svr.Text)
                {
                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    reader = cmd.ExecuteReader();
                    n1 = "";

                    while (reader.Read())
                    {
                        n1 = reader.GetString(reader.GetOrdinal("student_name"));
                        Session["sname1"] = n1;
                    }

                    n1 = (String)Session["sname1"];
                    Label1.Text = n1;
                    Label6.Text = n1;
                    Label11.Text = n1;
                    Label16.Text = n1;
                    Label21.Text = n1;

                    reader.Close();
                    conn.Close();
                }
                else
                {
                    n1 = (String)Session["sname1"];
                    Label1.Text = n1;
                    Label6.Text = n1;
                    Label11.Text = n1;
                    Label16.Text = n1;
                    Label21.Text = n1;
                }
            }
            else
            {
                Panel1.Visible = false;
                Panel6.Visible = false;
                Panel11.Visible = false;
                Panel16.Visible = false;
                Panel21.Visible = false;
            }










            if (count >= 2)
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'LIMIT 2";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                reader = cmd.ExecuteReader();
                n2 = "";

                while (reader.Read())
                {
                    n2 = reader.GetString(reader.GetOrdinal("student_name"));
                    Session["sname2"] = n2;
                }

                reader.Close();
                conn.Close();
                if (n2 == svr.Text)
                {
                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    reader = cmd.ExecuteReader();
                    n2 = "";

                    while (reader.Read())
                    {
                        n2 = reader.GetString(reader.GetOrdinal("student_name"));
                        Session["sname2"] = n2;
                    }

                    n2 = (String)Session["sname2"];
                    Label2.Text = n2;
                    Label7.Text = n2;
                    Label12.Text = n2;
                    Label17.Text = n2;
                    Label22.Text = n2;

                    reader.Close();
                    conn.Close();
                }
                else
                {
                    n2 = (String)Session["sname2"];
                    Label2.Text = n2;
                    Label7.Text = n2;
                    Label12.Text = n2;
                    Label17.Text = n2;
                    Label22.Text = n2;
                }
            }
            else
            {
                Panel2.Visible = false;
                Panel7.Visible = false;
                Panel12.Visible = false;
                Panel17.Visible = false;
                Panel22.Visible = false;
            }




            if (count >= 3)
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'LIMIT 3";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                reader = cmd.ExecuteReader();
                n3 = "";

                while (reader.Read())
                {
                    n3 = reader.GetString(reader.GetOrdinal("student_name"));
                    Session["sname3"] = n3;
                }

                reader.Close();
                conn.Close();
                if (n3 == svr.Text)
                {
                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    reader = cmd.ExecuteReader();
                    n3 = "";

                    while (reader.Read())
                    {
                        n3 = reader.GetString(reader.GetOrdinal("student_name"));
                        Session["sname3"] = n3;
                    }

                    n3 = (String)Session["sname3"];
                    Label3.Text = n3;
                    Label8.Text = n3;
                    Label13.Text = n3;
                    Label18.Text = n3;
                    Label23.Text = n3;

                    reader.Close();
                    conn.Close();
                }
                else
                {
                    n3 = (String)Session["sname3"];
                    Label3.Text = n3;
                    Label8.Text = n3;
                    Label13.Text = n3;
                    Label18.Text = n3;
                    Label23.Text = n3;
                }
            }
            else
            {
                Panel3.Visible = false;
                Panel8.Visible = false;
                Panel13.Visible = false;
                Panel18.Visible = false;
                Panel23.Visible = false;
            }






            if (count >= 4)
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'LIMIT 4";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                reader = cmd.ExecuteReader();
                n4 = "";

                while (reader.Read())
                {
                    n4 = reader.GetString(reader.GetOrdinal("student_name"));
                    Session["sname4"] = n4;
                }

                reader.Close();
                conn.Close();
                if (n4 == svr.Text)
                {
                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    reader = cmd.ExecuteReader();
                    n4 = "";

                    while (reader.Read())
                    {
                        n4 = reader.GetString(reader.GetOrdinal("student_name"));
                        Session["sname4"] = n4;
                    }

                    n4 = (String)Session["sname4"];
                    Label4.Text = n4;
                    Label9.Text = n4;
                    Label14.Text = n4;
                    Label19.Text = n4;
                    Label24.Text = n4;

                    reader.Close();
                    conn.Close();
                }
                else
                {
                    n4 = (String)Session["sname4"];
                    Label4.Text = n4;
                    Label9.Text = n4;
                    Label14.Text = n4;
                    Label19.Text = n4;
                    Label24.Text = n4;
                }
            }
            else
            {
                Panel4.Visible = false;
                Panel9.Visible = false;
                Panel14.Visible = false;
                Panel19.Visible = false;
                Panel24.Visible = false;
            }
















            if (count >= 5)
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'LIMIT 5";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                reader = cmd.ExecuteReader();
                n5 = "";

                while (reader.Read())
                {
                    n5 = reader.GetString(reader.GetOrdinal("student_name"));
                    Session["sname5"] = n5;
                }

                reader.Close();
                conn.Close();
                if (n5 == svr.Text)
                {
                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    reader = cmd.ExecuteReader();
                    n5 = "";

                    while (reader.Read())
                    {
                        n5 = reader.GetString(reader.GetOrdinal("student_name"));
                        Session["sname5"] = n5;
                    }

                    n5 = (String)Session["sname5"];
                    Label5.Text = n5;
                    Label10.Text = n5;
                    Label15.Text = n5;
                    Label20.Text = n5;
                    Label25.Text = n5;

                    reader.Close();
                    conn.Close();
                }
                else
                {
                    n5 = (String)Session["sname5"];
                    Label5.Text = n5;
                    Label10.Text = n5;
                    Label15.Text = n5;
                    Label20.Text = n5;
                    Label25.Text = n5;
                }
            }
            else
            {
                Panel5.Visible = false;
                Panel10.Visible = false;
                Panel15.Visible = false;
                Panel20.Visible = false;
                Panel25.Visible = false;
            }











        }



        protected void submitRadioMethod(object sender, EventArgs e)
        {
            submitRadio();
            Response.Redirect("peerevaluationfor4c.aspx");
        }
        private void submitRadio()
        {






                String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";


                queryStr = "SELECT * FROM webappdemo.peer_ans WHERE StudentName LIKE '" + Label1.Text +"' AND svr LIKE '"+ svr.Text + "' AND projectID LIKE '" + projectid + "'";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

                reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                    check = reader.GetString(reader.GetOrdinal("StudentName"));
                }


                reader.Close();
                conn.Close();





                if (check != null)//   need login
                {
                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "UPDATE webappdemo.peer_ans SET 3c ='" + RadioButtonList1.SelectedValue + "'+'" + RadioButtonList6.SelectedValue + "'+'" + RadioButtonList11.SelectedValue + "'+'" + RadioButtonList16.SelectedValue + "'+'" + RadioButtonList21.SelectedValue + "' WHERE StudentName LIKE '" + Label1.Text + "'AND svr LIKE '" + svr.Text + "'AND projectID LIKE '" + projectid + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    cmd.ExecuteReader();
                    conn.Close();


                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "UPDATE webappdemo.peer_ans SET 3c ='" + RadioButtonList2.SelectedValue + "'+'" + RadioButtonList7.SelectedValue + "'+'" + RadioButtonList12.SelectedValue + "'+'" + RadioButtonList17.SelectedValue + "'+'" + RadioButtonList22.SelectedValue + "' WHERE StudentName LIKE '" + Label2.Text + "'AND svr LIKE '" + svr.Text + "'AND projectID LIKE '" + projectid + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    cmd.ExecuteReader();
                    conn.Close();





                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "UPDATE webappdemo.peer_ans SET 3c ='" + RadioButtonList3.SelectedValue + "'+'" + RadioButtonList8.SelectedValue + "'+'" + RadioButtonList13.SelectedValue + "'+'" + RadioButtonList18.SelectedValue + "'+'" + RadioButtonList23.SelectedValue + "' WHERE StudentName LIKE '" + Label3.Text + "'AND svr LIKE '" + svr.Text + "'AND projectID LIKE '" + projectid + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    cmd.ExecuteReader();
                    conn.Close();





                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "UPDATE webappdemo.peer_ans SET 3c ='" + RadioButtonList4.SelectedValue + "'+'" + RadioButtonList9.SelectedValue + "'+'" + RadioButtonList14.SelectedValue + "'+'" + RadioButtonList19.SelectedValue + "'+'" + RadioButtonList24.SelectedValue + "' WHERE StudentName LIKE '" + Label4.Text + "'AND svr LIKE '" + svr.Text + "'AND projectID LIKE '" + projectid + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    cmd.ExecuteReader();
                    conn.Close();







                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "UPDATE webappdemo.peer_ans SET 3c ='" + RadioButtonList5.SelectedValue + "'+'" + RadioButtonList10.SelectedValue + "'+'" + RadioButtonList15.SelectedValue + "'+'" + RadioButtonList20.SelectedValue + "'+'" + RadioButtonList25.SelectedValue + "' WHERE StudentName LIKE '" + Label5.Text + "'AND svr LIKE '"+ svr.Text + "'AND projectID LIKE '" + projectid + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    cmd.ExecuteReader();
                    conn.Close();







                    Labelcheck.Text = "Changes Have been Submitted Successfully";
                    Labelcheck.ForeColor = System.Drawing.Color.Green;







                }
                else
                {
                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "INSERT INTO webappdemo.peer_ans (3c,StudentName,svr,projectID) VALUES  ('" + RadioButtonList1.SelectedValue + "'+'" + RadioButtonList6.SelectedValue + "'+'" + RadioButtonList11.SelectedValue + "'+'" + RadioButtonList16.SelectedValue + "'+'" + RadioButtonList21.SelectedValue + "','" + Label1.Text + "','" + svr.Text + "','" + projectid + "')";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    cmd.ExecuteReader();
                    conn.Close();





                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "INSERT INTO webappdemo.peer_ans (3c,StudentName,svr,projectID) VALUES  ('" + RadioButtonList2.SelectedValue + "'+'" + RadioButtonList7.SelectedValue + "'+'" + RadioButtonList12.SelectedValue + "'+'" + RadioButtonList17.SelectedValue + "'+'" + RadioButtonList22.SelectedValue + "','" + Label2.Text + "','" + svr.Text + "','" + projectid + "')";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    cmd.ExecuteReader();
                    conn.Close();








                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "INSERT INTO webappdemo.peer_ans (3c,StudentName,svr,projectID) VALUES  ('" + RadioButtonList3.SelectedValue + "'+'" + RadioButtonList8.SelectedValue + "'+'" + RadioButtonList13.SelectedValue + "'+'" + RadioButtonList18.SelectedValue + "'+'" + RadioButtonList23.SelectedValue + "','" + Label3.Text + "','" + svr.Text + "','" + projectid + "')";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    cmd.ExecuteReader();
                    conn.Close();







                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "INSERT INTO webappdemo.peer_ans (3c,StudentName,svr,projectID) VALUES  ('" + RadioButtonList4.SelectedValue + "'+'" + RadioButtonList9.SelectedValue + "'+'" + RadioButtonList14.SelectedValue + "'+'" + RadioButtonList19.SelectedValue + "'+'" + RadioButtonList24.SelectedValue + "','" + Label4.Text + "','" + svr.Text + "','" + projectid + "')";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    cmd.ExecuteReader();
                    conn.Close();







                    conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                    conn.Open();
                    queryStr = "";
                    queryStr = "INSERT INTO webappdemo.peer_ans (3c,StudentName,svr,projectID) VALUES  ('" + RadioButtonList5.SelectedValue + "'+'" + RadioButtonList10.SelectedValue + "'+'" + RadioButtonList15.SelectedValue + "'+'" + RadioButtonList20.SelectedValue + "'+'" + RadioButtonList25.SelectedValue + "','" + Label5.Text + "','" + svr.Text + "','" + projectid + "')";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    cmd.ExecuteReader();
                    conn.Close();








                    Labelcheck.Text = "Submitted Successfully";
                    Labelcheck.ForeColor = System.Drawing.Color.Green;

                }





        }
    }
}