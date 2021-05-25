using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampusPlacement
{
    public partial class StudentApplication : System.Web.UI.Page
    {
        SqlConnection conn = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
                Response.Redirect("StudentLogin.aspx");
            else
            {
                lblStudentName.Text = Session["Stud_name"].ToString();
                btnDelete.Enabled = false;
                FillGridView();
            }
        }

        private void EstablishConnection()
        {
            string strConn = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=CampusPlacement;Integrated Security=True";
            conn = new SqlConnection(strConn);
            if (conn != null)
                conn.Open();
        }

        private void FillGridView()
        {
            EstablishConnection();
            string qry = "select Japp_id,Comp_name,Jreq_role,Jreq_job_location,Jreq_salary,Jreq_working_hours,Jreq_skill,Japp_date,Japp_status from Job_applications,Job_requirement,Company_information,Student_info where Job_applications.Jreq_id=Job_requirement.Jreq_id and Job_requirement.Comp_id=Company_information.Comp_id and Job_applications.Stud_id=Student_info.Stud_id and Stud_email='"+ Session["Username"].ToString() + "';";
            SqlCommand cmd = new SqlCommand(qry, conn);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            EstablishConnection();
            int Japp_id = int.Parse(GridView1.SelectedRow.Cells[1].Text);
            string qry = "delete from Job_applications where Japp_id=" + Japp_id;

            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.ExecuteNonQuery();

            FillGridView();
            if (conn.State == ConnectionState.Open)
                conn.Close();
            btnDelete.Enabled = false;
            Response.Write("<script>alert('Application deleted sucessfully');</script>");
            Server.Transfer("StudentApplication.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gvr = GridView1.SelectedRow;
            btnDelete.Enabled = true;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Open)
                conn.Close();
            Session.Abandon();
            Response.Redirect("StudentLogin.aspx");
        }
    }
}