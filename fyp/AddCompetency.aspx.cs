using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace FYP
{
    public partial class AddCompetency : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;


        String queryStr;
        String Name;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            string constr = getConnectionString();
            queryStr = "SELECT * FROM webappdemo.competency";
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand(queryStr))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataKeyNames = new string[] { "idCompetency" };
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        private string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
        }



        protected void Insert(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtCompetency.Text))
            {
                string name = txtCompetency.Text;

                conn = new MySqlConnection(getConnectionString());
                queryStr = "";
                queryStr = "INSERT INTO webappdemo.competency(Competency)" +
                    "VALUES(@competency)";
                MySqlCommand cmd = new MySqlCommand(queryStr, conn);

                cmd.Parameters.AddWithValue("@competency", name);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                Response.Redirect(Request.RawUrl);

            }
            else { Response.Write("<script>alert('Please enter a competency');</script>"); }
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //foreach(GridView row in GridView1.Rows)
            //{
            //    if (row.)
            //}
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string name = (row.FindControl("txtCompetency") as TextBox).Text;

            string constr = getConnectionString();
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("UPDATE webappdemo.competency SET Competency = @competency " +
                    "WHERE idCompetency= @id"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Parameters.AddWithValue("@id", cid);
                        cmd.Parameters.AddWithValue("@competency", name);

                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            GridView1.EditIndex = -1;
            BindGrid();

        }
        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }
        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string constr = getConnectionString();
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("DELETE FROM webappdemo.competency WHERE idCompetency = @Id"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Parameters.AddWithValue("@Id", Id);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            BindGrid();

        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[2].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }
    }
}