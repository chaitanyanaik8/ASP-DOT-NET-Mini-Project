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
    public partial class StudentLogin : System.Web.UI.Page
    {
        SqlConnection conn = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtEmailID.Text = string.Empty;
                txtPwd.Text = string.Empty;
            }
        }

        private void EstablishConnection()
        {
            string strConn = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=CampusPlacement;Integrated Security=True";
            conn = new SqlConnection(strConn);
            if (conn != null)
                conn.Open();
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentRegistration.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            EstablishConnection();

            string qry1 = "SELECT COUNT([Stud_email]) FROM [Student_info] WHERE [Stud_email]='" + txtEmailID.Text + "'";
            SqlCommand cmd1 = new SqlCommand(qry1, conn);
            int emailcheck = (int)cmd1.ExecuteScalar();

            if (emailcheck == 0)
            {
                if (conn.State == ConnectionState.Open)
                    conn.Close();
                //Alert.Show("Email ID not Registered!.....Kindly Register to Login!");
                Response.Write("<script>alert('Email ID not Registered!.....Kindly Register to Login!');</script>");
                Server.Transfer("StudentRegistration.aspx");
            }
            else
            {
                string qry2 = "SELECT COUNT([Stud_email]) FROM [Student_info] WHERE [Stud_email]='" + txtEmailID.Text + "' and [Stud_password]='" + txtPwd.Text + "'";
                SqlCommand cmd2 = new SqlCommand(qry2, conn);
                int logincheck = (int)cmd2.ExecuteScalar();
                if (logincheck == 1)
                {
                    Session["Username"] = txtEmailID.Text;
                    Session["Password"] = txtPwd.Text;
                    string qry3 = "select * from Student_info where [Stud_email]='" + Session["Username"].ToString() + "'";
                    SqlCommand cmd3= new SqlCommand(qry3, conn);
                    SqlDataReader dr = cmd3.ExecuteReader();
                    if (dr.Read())
                    {
                        Session["Stud_name"] = dr["Stud_name"].ToString().Trim();
                        Session["Stud_id"] = dr["Stud_id"].ToString().Trim();
                        Session["Stud_address"] = dr["Stud_address"].ToString().Trim();
                        Session["Stud_city"] = dr["Stud_city"].ToString().Trim();
                        Session["Stud_state"] = dr["Stud_state"].ToString().Trim();
                        Session["Stud_pincode"] = dr["Stud_pincode"].ToString().Trim();
                        DateTime date1 = Convert.ToDateTime(dr["Stud_birthdate"].ToString().Trim());
                        Session["Stud_birthdate"] = date1.ToString("dd/MM/yyyy").Trim();
                        Session["Stud_gender"] = dr["Stud_gender"].ToString().Trim();
                        Session["Stud_contactno"] = dr["Stud_contactno"].ToString().Trim();
                        Session["Stud_college_name"] = dr["Stud_college_name"].ToString().Trim();
                        Session["Stud_rollno"] = dr["Stud_rollno"].ToString().Trim();
                        Session["Stud_education"] = dr["Stud_education"].ToString().Trim();
                        Session["Stud_branch"] = dr["Stud_branch"].ToString().Trim();
                        Session["Stud_passing_year"] = dr["Stud_passing_year"].ToString().Trim();
                        Session["Stud_percentage"] = dr["Stud_percentage"].ToString().Trim();
                        Session["Stud_skill"] = dr["Stud_skill"].ToString().Trim();
                        Session["Stud_extra_skill"] = dr["Stud_extra_skill"].ToString().Trim();
                        Session["Stud_resume"] = dr["Stud_resume"].ToString().Trim();
                    }
                    dr.Close();
                    if (conn.State == ConnectionState.Open)
                        conn.Close();
                    Response.Redirect("StudentHomepage.aspx");
                }
                else
                {
                    //Alert.Show("Incorrect Password!");
                    Response.Write("<script>alert('Incorrect Password!');</script>");
                    Server.Transfer("StudentLogin.aspx");
                }
            }
        }

        protected void btnForgotPwd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}