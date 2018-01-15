using System;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;

namespace FYP
{
    public partial class Upload : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand cmd;
        String queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindGrid();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StartUpload();
        }

        private void StartUpload()
        {
            if (!string.IsNullOrEmpty(TopicTextBox.Text))
            {
                if (FileUpload1.HasFile)
                {
                    string strFileName = FileUpload1.FileName.ToString();
                    string filePath = "File/" + strFileName;
                    FileUpload1.SaveAs(Server.MapPath(filePath));
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    string contentType = FileUpload1.PostedFile.ContentType;
                    string uploadedDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                    ExecuteInsert(strFileName, fileSize, filePath, contentType, uploadedDate,
                        TopicTextBox.Text, DescriptionTextBox.Text);
                    Response.Redirect(Request.RawUrl);
                }
                else { Response.Write("<script>alert('Please select your file');</script>"); }
            }
            else { Response.Write("<script>alert('Please enter a topic');</script>"); }
        }

        private string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
        }

        private void ExecuteInsert(string name, int size, string path, string type, string date, string topic, string description)
        {
            conn = new MySqlConnection(getConnectionString());

            queryStr = "";
            queryStr = "INSERT INTO webappdemo.fileinfo_website4(name,size,path,type,date, topic, description)" +
                "VALUES(@name, @size, @path, @type, @date, @topic, @description)";
            using (MySqlCommand cmd = new MySqlCommand(queryStr, conn))
            {
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@size", size);
                cmd.Parameters.AddWithValue("@path", path);
                cmd.Parameters.AddWithValue("@type", type);
                cmd.Parameters.AddWithValue("@date", date);
                cmd.Parameters.AddWithValue("@topic", topic);
                cmd.Parameters.AddWithValue("@description", description);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        private DataTable GetData()
        {
            DataTable dt = new DataTable();
            conn = new MySqlConnection(getConnectionString());
            cmd = new MySqlCommand();
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);

            cmd.CommandText = "SELECT * FROM webappdemo.fileinfo_website4";
            cmd.Connection = conn;
            sda.Fill(dt);

            return dt;
        }

        private void BindGrid()
        {
            DataTable dt = GetData();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void MyButtonClick(object sender, System.EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            String topicCell = row.Cells[0].Text;
            Response.Write("<script>alert('Delete" +
                topicCell +
                "');</script>");
            conn = new MySqlConnection(getConnectionString());
            queryStr = "";
            queryStr = "DELETE FROM webappdemo.fileinfo_website4 " +
                "WHERE topic = @name";
            MySqlCommand cmd = new MySqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@name", topicCell);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}