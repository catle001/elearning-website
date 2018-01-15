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
    public partial class peerevaluationcomments : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;

        String queryStr;

        String check;



        String c1;
        String c2;
        String c3;
        String c4;
        String c5;


        String n1;
        String n2;
        String n3;
        String n4;
        String n5;
        String gp;
        int count;
        String projectid;



        protected void Page_Load(object sender, EventArgs e)
        {
            /*name = (String)Session["uname"];*/
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();



            projectid = Session["project"].ToString();
            svr.Text = Session["username"].ToString();


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







            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT group_name FROM new_student_group WHERE student_name LIKE '" + svr.Text + "' AND project_id LIKE '" + projectid + "'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();


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


            while (reader.Read())
            {
                count++;
            }

            reader.Close();
            conn.Close();
















  
            if (count >= 1)
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'AND project_id LIKE '" + projectid + "' LIMIT 1";
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
                    queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'AND project_id LIKE '" + projectid + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                    reader = cmd.ExecuteReader();
                    n1 = "";

                    while (reader.Read())
                    {
                        n1 = reader.GetString(reader.GetOrdinal("student_name"));
                        Session["sname1"] = n1;
                    }

                    n1 = (String)Session["sname1"];
                    name1.Text = n1;


                    reader.Close();
                    conn.Close();
                }
                else
                {
                    n1 = (String)Session["sname1"];
                    name1.Text = n1;

                }
            }
            else
            {
                Panel1.Visible = false;
            }









            if(count>=2)
            { 
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";
                queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'AND project_id LIKE '" + projectid + "' LIMIT 2";
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
                    queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'AND project_id LIKE '" + projectid + "' ";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                reader = cmd.ExecuteReader();
                n2 = "";

                while (reader.Read())
                {
                    n2 = reader.GetString(reader.GetOrdinal("student_name"));
                    Session["sname2"] = n2;
                }

                n2 = (String)Session["sname2"];
                name2.Text = n2;


                reader.Close();
                conn.Close();
            }
            else
            {
                n2 = (String)Session["sname2"];
                name2.Text = n2;

            }
            }
            else
            {
                Panel2.Visible = false;
            }










            if(count>=3)
            { 
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";
                queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'AND project_id LIKE '" + projectid + "' LIMIT 3";
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
            if (n1 == svr.Text)
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                    queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'AND project_id LIKE '" + projectid + "' ";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                reader = cmd.ExecuteReader();
                n3 = "";

                while (reader.Read())
                {
                    n3 = reader.GetString(reader.GetOrdinal("student_name"));
                    Session["sname3"] = n3;
                }

                n3 = (String)Session["sname3"];
                name3.Text = n3;


                reader.Close();
                conn.Close();
            }
            else
            {
                n3 = (String)Session["sname3"];
                name3.Text = n3;

            }
            }
            else
            {
                Panel3.Visible = false;
            }






            if(count>=4)
            { 
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";
                queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'AND project_id LIKE '" + projectid + "' LIMIT 4";
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
                    queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'AND project_id LIKE '" + projectid + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                reader = cmd.ExecuteReader();
                n4 = "";

                while (reader.Read())
                {
                    n4 = reader.GetString(reader.GetOrdinal("student_name"));
                    Session["sname4"] = n4;
                }

                n4 = (String)Session["sname1"];
                name4.Text = n4;


                reader.Close();
                conn.Close();
            }
            else
            {
                n4 = (String)Session["sname4"];
                name4.Text = n4;

            }
            }
            else
            {
                Panel4.Visible = false;
            }









            if(count>=5)
            {
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";
                queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'AND project_id LIKE '" + projectid + "' LIMIT 5";
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
                    queryStr = "SELECT student_name FROM new_student_group WHERE group_name LIKE '" + gp + "'AND project_id LIKE '" + projectid + "'";
                    cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                reader = cmd.ExecuteReader();
                n5 = "";

                while (reader.Read())
                {
                    n5 = reader.GetString(reader.GetOrdinal("student_name"));//!!!!! end 
                    Session["sname5"] = n5;
                }

                n5 = (String)Session["sname5"];
                name5.Text = n5;


                reader.Close();
                conn.Close();
            }
            else
            {
                n5 = (String)Session["sname5"];
                name5.Text = n5;

            }
            }
            else
            {
                Panel5.Visible = false;
            }

















        }




        protected void submitRadioMethod(object sender, EventArgs e)
        {
            submitRadio();
        }
        private void submitRadio()
        {





            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";


            queryStr = "SELECT StudentName FROM webappdemo.peer_ans ";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                check = reader.GetString(reader.GetOrdinal("StudentName"));
            }


            reader.Close();
            conn.Close();





            if (check != null)
            {
                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "UPDATE webappdemo.peer_ans SET Comments ='" + comment1.Text + "' WHERE StudentName LIKE '" + name1.Text + "'AND svr LIKE '" + svr.Text + "'AND projectID LIKE '" + projectid + "'";// login 
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                conn.Close();


                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "UPDATE webappdemo.peer_ans SET Comments ='" + comment2.Text + "' WHERE StudentName LIKE '" + name2.Text + "'AND svr LIKE '" + svr.Text + "'AND projectID LIKE '" + projectid + "'";//login
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                conn.Close();





                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "UPDATE webappdemo.peer_ans SET Comments ='" + comment3.Text + "' WHERE StudentName LIKE '" + name3.Text + "'AND svr LIKE '" + svr.Text + "'AND projectID LIKE '" + projectid + "'";//login
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                conn.Close();



                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "UPDATE webappdemo.peer_ans SET Comments ='" + comment4.Text + "' WHERE StudentName LIKE '" + name4.Text + "'AND svr LIKE '" + svr.Text + "'AND projectID LIKE '" + projectid + "'";//login
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                conn.Close();




                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "UPDATE webappdemo.peer_ans SET Comments ='" + comment5.Text + "' WHERE StudentName LIKE '" + name5.Text + "'AND svr LIKE '" + svr.Text + "'AND projectID LIKE '" + projectid + "'";//login
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
                queryStr = "INSERT INTO webappdemo.peer_ans (Comments,StudentName,svr,projectID) VALUES  ('" + comment1.Text + "','" + name1.Text + "','" + svr.Text + "','" + projectid + "')";//login
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                conn.Close();





                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "INSERT INTO webappdemo.peer_ans (Comments,StudentName,svr,projectID) VALUES  ('" + comment2.Text + "','" + name2.Text + "','" + svr.Text + "','" + projectid + "')";//login
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                conn.Close();



                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "INSERT INTO webappdemo.peer_ans (Comments,StudentName,svr,projectID) VALUES  ('" + comment3.Text + "','" + name3.Text + "','" + svr.Text + "','" + projectid + "')";//login
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                conn.Close();




                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "INSERT INTO webappdemo.peer_ans (Comments,StudentName,svr,projectID) VALUES  ('" + comment4.Text + "','" + name4.Text + "','" + svr.Text + "','" + projectid + "')";//login
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                conn.Close();





                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "INSERT INTO webappdemo.peer_ans (Comments,StudentName,svr,projectID) VALUES  ('" + comment5.Text + "','" + name5.Text + "','" + svr.Text + "','" + projectid + "')";//login
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                conn.Close();








                Labelcheck.Text = "Submitted Successfully";
                Labelcheck.ForeColor = System.Drawing.Color.Green;

            }

        }
    }
}