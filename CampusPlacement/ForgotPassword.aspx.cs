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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection conn = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtEmailID.Text = string.Empty;
                txtBdate.Text = string.Empty;
                txtNewPwd.Text = string.Empty;
                txtConfPwd.Text = string.Empty;
            }
        }

        private void EstablishConnection()
        {
            string strConn = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=CampusPlacement;Integrated Security=True";
            conn = new SqlConnection(strConn);
            if (conn != null)
                conn.Open();
        }

        protected void btnChangePwd_Click(object sender, EventArgs e)
        {
            EstablishConnection();

            string qry1 = "SELECT COUNT([Stud_email]) FROM [Student_info] WHERE [Stud_email]='" + txtEmailID.Text + "'";
            SqlCommand cmd1 = new SqlCommand(qry1, conn);
            int emailcheck = (int)cmd1.ExecuteScalar();

            if (emailcheck == 0)
            {
                if (conn.State == ConnectionState.Open)
                    conn.Close();
                //Alert.Show("Email ID not Registered!");
                Response.Write("<script>alert('Email ID not Registered!');</script>");
                Server.Transfer("StudentRegistration.aspx");
            }
            else
            {
                string qry2 = "SELECT COUNT([Stud_email]) FROM [Student_info] WHERE [Stud_email]='" + txtEmailID.Text + "' and [Stud_birthdate]='" + txtBdate.Text + "'";
                SqlCommand cmd2 = new SqlCommand(qry2, conn);
                int bdatecheck = (int)cmd2.ExecuteScalar();
                if (bdatecheck == 1)
                {
                    string qry3 = "Update [Student_info] Set [Stud_password]='" + txtNewPwd.Text + "' WHERE [Stud_email]='" + txtEmailID.Text + "';";
                    SqlCommand cmd3 = new SqlCommand(qry3, conn);
                    int i = cmd3.ExecuteNonQuery();
                    if (i == 1)
                    {
                        if (conn.State == ConnectionState.Open)
                            conn.Close();
                        //Alert.Show("Password Changed Sucessfully");
                        Response.Write("<script>alert('Password Changed Sucessfully');</script>");
                        Server.Transfer("StudentLogin.aspx");
                    }
                }
                else
                {
                    //Alert.Show("Incorrect Birth Date!");
                    Response.Write("<script>alert('Incorrect Birth Date!');</script>");
                }
            }
        }
    }
}