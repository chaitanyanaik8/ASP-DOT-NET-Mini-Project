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
    public partial class StudentHomepage : System.Web.UI.Page
    {
        SqlConnection conn = null;
        private void EstablishConnection()
        {
            string strConn = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=CampusPlacement;Integrated Security=True";
            conn = new SqlConnection(strConn);
            if (conn != null)
                conn.Open();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
            EstablishConnection();
            if (Session["Username"] == null)
                Response.Redirect("StudentLogin.aspx");
            else
            {

                lblStudentName.Text = Session["Stud_name"].ToString();
                //string qry1 = "select * from Student_info where [Stud_email]='" + Session["Username"].ToString() + "'";
                //SqlCommand cmd1 = new SqlCommand(qry1, conn);
                //SqlDataReader dr = cmd1.ExecuteReader();
                //if (dr.Read())
                //{
                //    lblStudentName.Text = dr["Stud_name"].ToString();
                //    Session["Stud_name"] = dr["Stud_name"].ToString();
                //    Session["Stud_id"] = dr["Stud_id"].ToString();
                //    Session["Stud_address"] = dr["Stud_address"].ToString();
                //    Session["Stud_city"] = dr["Stud_city"].ToString();
                //    Session["Stud_state"] = dr["Stud_state"].ToString();
                //    Session["Stud_pincode"] = dr["Stud_pincode"].ToString();
                //    Session["Stud_birthdate"] = dr["Stud_birthdate"].ToString();
                //    Session["Stud_gender"] = dr["Stud_gender"].ToString();
                //    Session["Stud_contactno"] = dr["Stud_contactno"].ToString();
                //    Session["Stud_college_name"] = dr["Stud_college_name"].ToString();
                //    Session["Stud_rollno"] = dr["Stud_rollno"].ToString();
                //    Session["Stud_education"] = dr["Stud_education"].ToString();
                //    Session["Stud_branch"] = dr["Stud_branch"].ToString();
                //    Session["Stud_passing_year"] = dr["Stud_passing_year"].ToString();
                //    Session["Stud_percentage"] = dr["Stud_percentage"].ToString();
                //    Session["Stud_skill"] = dr["Stud_skill"].ToString();
                //    Session["Stud_extra_skill"] = dr["Stud_extra_skill"].ToString();
                //    Session["Stud_resume"] = dr["Stud_resume"].ToString();
                //}
                //dr.Close();

                SqlDataSource1.SelectCommand = "select Jreq_id,Company_information.Comp_id,Comp_name,Jreq_role,Jreq_min_qualification,Jreq_job_location,Jreq_salary,Jreq_working_hours,Jreq_posted_date,Jreq_skill from Company_information,Job_requirement where Job_requirement.Comp_id=Company_information.Comp_id and (Jreq_skill='" + Session["Stud_skill"].ToString() + "' or Jreq_skill='" + Session["Stud_extra_skill"].ToString() + "');";
                SqlDataSource1.DataBind();
                DataList3.DataBind();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Open)
                conn.Close();
            Session.Abandon();
            Response.Redirect("StudentLogin.aspx");
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            //string qry3 = "select Stud_skill from Student_info where [Stud_email]='" + Session["Username"].ToString() + "'";
            //SqlCommand cmd3 = new SqlCommand(qry3, conn);
            //string skill = (string)cmd3.ExecuteScalar();

            var btn = (Button)sender;
            var item = (DataListItem)btn.NamingContainer;
            var Jreq_id = (Label)item.FindControl("Jreq_idLabel");
            int Jreq_id_text = Convert.ToInt32(Jreq_id.Text);
            //Label Jreq_skill = (Label)DataList3.Items[0].FindControl("Jreq_skillLabel");
            //string Jreq_skill_text = Jreq_skill.Text.ToString();

            //Label Jreq_id = (Label)DataList3.SelectedItem.FindControl("Jreq_idLabel");
            //int Jreq_id_text = Convert.ToInt32(Jreq_id.Text);
            string qry = "select count(Job_applications.Stud_id) from Job_applications, Student_info where Job_applications.Stud_id = Student_info.Stud_id and Jreq_id =" + Jreq_id_text + ";";
            SqlCommand cmd1 = new SqlCommand(qry, conn);
            int application_count = (int)cmd1.ExecuteScalar();

            if (application_count == 0)
            {
                string qry1 = "SELECT COUNT([Japp_id]) FROM [Job_applications]";
                SqlCommand cmd = new SqlCommand(qry1, conn);
                int id = (int)cmd.ExecuteScalar();

                string sqlquery = "INSERT INTO [Job_applications]([Japp_id],[Stud_id],[Jreq_id],[Japp_date]) VALUES (@Japp_id,@Stud_id,@Jreq_id,@Japp_date)";
                SqlCommand command = new SqlCommand(sqlquery, conn);

                command.Parameters.AddWithValue("Japp_id", id + 1);
                command.Parameters.AddWithValue("Stud_id", Session["Stud_id"].ToString());
                command.Parameters.AddWithValue("Jreq_id", Jreq_id_text);
                command.Parameters.AddWithValue("Japp_date", DateTime.Now.ToString("yyyy-MM-dd"));
                command.ExecuteNonQuery();
                if (conn.State == ConnectionState.Open)
                    conn.Close();
                //Alert.Show("Job Application Sent!");
                Response.Write("<script>alert('Job Application Sent!');</script>");
                Server.Transfer("StudentHomepage.aspx");
            }
            else
            {
                //Alert.Show("Already Applied!");
                Response.Write("<script>alert('Already Applied!');</script>");
            }
        }
    }
}