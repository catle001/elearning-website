using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FYP
{
    public partial class Prof360Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = "<b><font color=black>" + Session["username"] + "</font>";
        }


        protected void LBself_Click(object sender, EventArgs e)
        {
            Response.Redirect("SelfEditQuestions.aspx");
        }

        protected void LBpeer_Click(object sender, EventArgs e)
        {
            Response.Redirect("PeerEditQuestions.aspx");
        }


    }
}