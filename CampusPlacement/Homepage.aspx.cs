using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampusPlacement
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentLogin.aspx");
        }

        protected void btnRecruiter_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Sorry for the Inconvenience......No Module for Recruiter has been created yet!');</script>");
        }
    }
}