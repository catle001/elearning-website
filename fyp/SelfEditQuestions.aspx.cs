using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace FYP
{
    public partial class SelfEditQuestions : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand cmd;
        String queryStr, queryStrProject;

        protected void Page_Load(object sender, EventArgs e)
        {
            String connString = getConnectionString();
            conn = new MySqlConnection(connString);
            //get last update time
            conn.Open();
            queryStr = "";
            queryStr = "SELECT self_date FROM webappdemo.updatedate";
            cmd = new MySqlCommand(queryStr, conn);
            MySqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
                LastUpdateTime.Text = (reader["self_date"].ToString());
            conn.Close();

            if (!IsPostBack)
            {
                BindGrid();
                //bind DdlCompetency
                DdlCompetency.AppendDataBoundItems = true;
                String constr = getConnectionString();
                conn = new MySqlConnection(constr);

                conn.Open();
                queryStrProject = "";
                queryStrProject = "SELECT * FROM webappdemo.competency";
                cmd = new MySqlCommand(queryStrProject, conn);
                DdlCompetency.DataSource = cmd.ExecuteReader();
                DdlCompetency.DataTextField = "Competency";
                DdlCompetency.DataValueField = "Competency";
                DdlCompetency.DataBind();
                conn.Close();

                DdlCompetency.Items.Insert(0, new ListItem("--Select Competency--", "0"));
            }
        }

        private string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
        }

        private void updatetime()
        {
            String connString = getConnectionString();
            conn = new MySqlConnection(connString);

            conn.Open();
            queryStr = "";
            /*queryStr = "INSERT INTO webappdemo.updatedate (self_date) VALUES (@DATE)";
             queryStr = "DELETE FROM webappdemo.updatedate WHERE self_date = @DATE";*/
            queryStr = "UPDATE webappdemo.updatedate SET self_date = @DATE";
            cmd = new MySqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@DATE", DateTime.Now);
            cmd.ExecuteReader();
            conn.Close();

            //get last update time
            conn.Open();
            queryStr = "";
            queryStr = "SELECT self_date FROM webappdemo.updatedate";
            cmd = new MySqlCommand(queryStr, conn);
            MySqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
                LastUpdateTime.Text = (reader["self_date"].ToString());
            conn.Close();
        }

        protected void Insert(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string country = DdlCompetency.Text;
            string constr = getConnectionString();
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("INSERT INTO webappdemo.self_questions (QuestionText, Competency) " +
                    "VALUES (@Name, @Country)"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Country", country);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            BindGrid();
            updatetime();
            TextBox1.Text = string.Empty;
        }

        private void BindGrid()
        {
            //string constr = getConnectionString();
            queryStr = "SELECT * FROM webappdemo.self_questions";
            GridView1.DataSource = GetData(queryStr);
            GridView1.DataBind();
        }

        private DataTable GetData(string query)
        {
            string constr = getConnectionString();
            MySqlCommand cmd = new MySqlCommand(query);
            using (MySqlConnection con = new MySqlConnection(constr))
            {
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

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int customerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string name = (row.FindControl("txtName") as TextBox).Text;
            string country = (GridView1.Rows[e.RowIndex].FindControl("ddlComp") as DropDownList).SelectedItem.Value;
            string constr = getConnectionString();
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("UPDATE webappdemo.self_questions SET QuestionText = @Name, Competency=@Country " +
                    "WHERE QuestionID = @CustomerId"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Parameters.AddWithValue("@CustomerId", customerId);
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Country", country);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            GridView1.EditIndex = -1;
            BindGrid();
            updatetime();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int customerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string constr = getConnectionString();
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("DELETE FROM webappdemo.self_questions WHERE QuestionID = @CustomerId"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Parameters.AddWithValue("@CustomerId", customerId);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            BindGrid();
            updatetime();
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[2].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
            else if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex == e.Row.RowIndex)
            {
                DropDownList ddlComp = (DropDownList)e.Row.FindControl("ddlComp");
                string query = "select competency from webappdemo.competency";

                ddlComp.DataSource = GetData(query);
                ddlComp.DataTextField = "Competency";
                ddlComp.DataValueField = "Competency";
                ddlComp.DataBind();
                //ddlComp.Items.FindByValue((e.Row.FindControl("lblCountry") as Label).Text).Selected = true;
            }
        }

        protected void DdlCompetency_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("prof360Home.aspx");
        }
    }

}