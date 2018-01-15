using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net;
using System.Net.Mail;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace FYP
{
    public partial class ProjectDetail : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand cmd;
        String queryStr;
        String projectName;
        String groupname;

        protected void Page_Load(object sender, EventArgs e)
        {
            projectName= Server.UrlDecode(Request.QueryString["Project"].ToString());
            //projectName = "3";
            Label1.Text = projectName;
            if (!IsPostBack)
            {
                this.BindDropDownList(DropDownList1);
                DropDownList1.Items.Insert(0, new ListItem("Select Group"));
                this.BindGridViewName();
            }
        }

        private void BindDropDownList(DropDownList ddl)
        {
            string conString = getConnectionString();
            string query = "SELECT DISTINCT group_name FROM webappdemo.new_student_group";
            cmd = new MySqlCommand(query);
            conn = new MySqlConnection(conString);
            MySqlDataAdapter sda = new MySqlDataAdapter();
            cmd.Connection = conn;
            conn.Open();
            ddl.DataSource = cmd.ExecuteReader();
            ddl.DataTextField = "group_name";
            ddl.DataBind();
            conn.Close();
        }
        protected void Country_Changed(object sender, EventArgs e)
        {
            groupname = DropDownList1.SelectedItem.Text;
            if (groupname != "Select Group")
            {
                string query = string.Format("SELECT * FROM webappdemo.new_student_group " +
                    "WHERE group_name = '{0}' AND project_id = '{1}' ", groupname, projectName);
                BindRadioButton(query);
            }
        }
        private void BindRadioButton(string query)
        {
            DataTable dt2 = GetDataStudentGroup(query);
            RadioButtonList.DataSource = dt2;
            RadioButtonList.DataValueField = "student_name";
            RadioButtonList.DataBind();
        }
        private DataTable GetDataStudentGroup(string query)
        {
            DataTable dt = new DataTable();
            conn = new MySqlConnection(getConnectionString());
            cmd = new MySqlCommand();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);

            cmd.CommandText = query;
            cmd.Connection = conn;
            sda.Fill(dt);

            return dt;
        }
        private DataTable GetData2()
        {
            DataTable dt = new DataTable();
            conn = new MySqlConnection(getConnectionString());
            cmd = new MySqlCommand();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);

            cmd.CommandText = "SELECT student_name FROM webappdemo.student_list";
            cmd.Connection = conn;
            sda.Fill(dt);

            return dt;
        }
        private void BindGridViewName()
        {
            DataTable dt = GetData2();
            AddGroupGridView.DataSource = dt;
            AddGroupGridView.DataBind();
        }
        private string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
        }
        public void AddGroupEventMethod(object sender, EventArgs e)
        {
            foreach (GridViewRow gr in AddGroupGridView.Rows)
            {
                CheckBox cb = (CheckBox)gr.FindControl("chkCheck");
                Label lblName = (Label)gr.FindControl("lblStudentName");
                string studentname = lblName.Text;
                string groupname = txtgroupname.Text;
                if (cb != null && cb.Checked && !string.IsNullOrEmpty(txtgroupname.Text))
                {
                    conn = new MySqlConnection(getConnectionString());

                    queryStr = "";
                    queryStr = "INSERT INTO webappdemo.new_student_group(student_name,group_name,project_id)" +
                        "VALUES(@name, @group, @project)";
                    using (MySqlCommand cmd = new MySqlCommand(queryStr, conn))
                    {
                        cmd.Parameters.AddWithValue("@name", studentname);
                        cmd.Parameters.AddWithValue("@group", groupname);
                        cmd.Parameters.AddWithValue("@project", projectName);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    cb.Enabled = false;
                    cb.Checked = false;
                }
            }
            Response.Redirect(Request.RawUrl);
        }
        protected void Send_Email(object sender, EventArgs e)
        {
            String connString = getConnectionString();
            conn = new MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "SELECT Email FROM webappdemo.new_student_group WHERE project_id=@projectid";
            MySqlCommand cmd = new MySqlCommand(queryStr, conn);

            cmd.Parameters.AddWithValue("@projectid", projectName);
            cmd.Prepare();
            DataTable membersTable = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);

            da.Fill(membersTable);
            conn.Close();

            //send email to each recepient now.

            MailMessage msgMail = new MailMessage();

            String link = "loginpeerevaluation.aspx?Project=" + Server.UrlEncode(projectName);

            string strBody = "<html><body>" +
                "<b>Hello Student, <br/><br/></b>" +
              " <font color=\"red\">Nice to meet you.<br/></font>" +
              "<p> http://localhost:58407/" + link +"</p>"+
              "</body></html>";


            foreach (DataRow row in membersTable.Rows)
            {
                msgMail.To.Add(row["Email"].ToString());
            }

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.EnableSsl = true;
            smtpClient.Credentials = new NetworkCredential("diptesting328@gmail.com", "fsy123456?");
            msgMail.From = new MailAddress("diptesting328@gmail.com");
            msgMail.Subject = "Test email";

            msgMail.IsBodyHtml = true;

            msgMail.Body = strBody;
            smtpClient.Send(msgMail);
        }
        public void MakeLeaderEventMethod(object sender, EventArgs e)// add student as leader
        {
            if (RadioButtonList.SelectedItem != null)
            {
                conn = new MySqlConnection(getConnectionString());
                conn.Open();
                string queryStr = "";
                queryStr = string.Format("UPDATE webappdemo.new_student_group SET leader= 1 " +
                    "WHERE project_id = '{0}' AND student_name='{1}' AND group_name='{2}'",
                    projectName, RadioButtonList.SelectedValue, groupname);
                cmd = new MySqlCommand(queryStr, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect(Request.RawUrl);
            }
        }

        public void DropEventMethod(object sender, EventArgs e) //drop student from group
        {
            if (RadioButtonList.SelectedItem != null)
            {
                conn = new MySqlConnection(getConnectionString());
                conn.Open();
                string temp = RadioButtonList.SelectedValue;
                Label1.Text = temp;
                string queryStr = "";
                queryStr = string.Format("DELETE FROM webappdemo.new_student_group " +
                    "WHERE project_id = '{0}' AND student_name='{1}' ", projectName, RadioButtonList.SelectedValue);
                cmd = new MySqlCommand(queryStr, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect(Request.RawUrl);
            }

        }

    }
}