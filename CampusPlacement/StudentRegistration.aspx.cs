using CampusPlacement;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
namespace WebFormsControlls
{
    public partial class WebControls : System.Web.UI.Page
    {
        protected System.Web.UI.HtmlControls.HtmlInputFile File1;
        protected System.Web.UI.HtmlControls.HtmlInputButton Submit1;
        SqlConnection conn = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
            }
                //if (!IsPostBack)
                //{
                //    txtEmail.Text = string.Empty;
                //    txtName.Text = string.Empty;
                //    txtAddr.Text = string.Empty;
                //    txtCity.Text = string.Empty;
                //    txtState.Text = string.Empty;
                //    txtPincode.Text = string.Empty;
                //    txtBdate.Text = string.Empty;
                //    txtContactno.Text = string.Empty;
                //    txtCollegename.Text = string.Empty;
                //    txtRollno.Text = string.Empty;
                //    txtEducation.Text = string.Empty;
                //    txtBranch.Text = string.Empty;
                //    txtPassingyear.Text = string.Empty;
                //    txtPercentage.Text = string.Empty;
                //    txtSkill.Text = string.Empty;
                //    txtExtraskill.Text = string.Empty;
                //    txtPwd.Text = string.Empty;
                //    txtConfPwd.Text = string.Empty;
                //}
            }

        private void EstablishConnection()
        {
            string strConn = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=CampusPlacement;Integrated Security=True";
            conn = new SqlConnection(strConn);
            if (conn != null)
                conn.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentLogin.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            EstablishConnection();

            string qry1 = "SELECT COUNT([Stud_email]) FROM [Student_info] WHERE [Stud_email]='" + txtEmail.Text + "'";
            SqlCommand cmd1 = new SqlCommand(qry1, conn);
            int emailcheck = (int)cmd1.ExecuteScalar();

            if (emailcheck == 0)
            {
                string qry = "SELECT COUNT([Stud_id]) FROM [Student_info]";
                SqlCommand cmd = new SqlCommand(qry, conn);
                int id = (int)cmd.ExecuteScalar();

                string sqlquery = "INSERT INTO [Student_info] ([Stud_id],[Stud_name],[Stud_address],[Stud_city],[Stud_state],[Stud_pincode],[Stud_birthdate],[Stud_gender],[Stud_contactno],[Stud_email],[Stud_college_name],[Stud_rollno],[Stud_education],[Stud_branch],[Stud_passing_year],[Stud_percentage],[Stud_skill],[Stud_extra_skill],[Stud_resume],[Stud_password]) VALUES (@Stud_id,@Stud_name,@Stud_address,@Stud_city,@Stud_state,@Stud_pincode,@Stud_birthdate,@Stud_gender,@Stud_contactno,@Stud_email,@Stud_college_name,@Stud_rollno,@Stud_education,@Stud_branch,@Stud_passing_year,@Stud_percentage,@Stud_skill,@Stud_extra_skill,@Stud_resume,@Stud_password)";
                SqlCommand command = new SqlCommand(sqlquery, conn);

                command.Parameters.AddWithValue("Stud_id", id + 1);

                string EmailID = txtEmail.Text;
                command.Parameters.AddWithValue("Stud_email", EmailID);

                string Name = txtName.Text;
                command.Parameters.AddWithValue("Stud_name", Name);

                string Address = txtAddr.Text;
                command.Parameters.AddWithValue("Stud_address", Address);

                string City = txtCity.Text;
                command.Parameters.AddWithValue("Stud_city", City);

                string State = txtState.Text;
                command.Parameters.AddWithValue("Stud_state", State);

                int Pincode = Convert.ToInt32(txtPincode.Text);
                command.Parameters.AddWithValue("Stud_pincode", Pincode);


                command.Parameters.AddWithValue("Stud_birthdate", txtBdate.Text);

                if (RadioButtonList1.SelectedIndex > -1)
                {
                    command.Parameters.AddWithValue("Stud_gender", RadioButtonList1.SelectedItem.Text);
                }

                string ContactNo = txtContactno.Text;
                command.Parameters.AddWithValue("Stud_contactno", ContactNo);

                string CollegeName = txtCollegename.Text;
                command.Parameters.AddWithValue("Stud_college_name", CollegeName);

                int CollegeRollNo = Convert.ToInt32(txtRollno.Text);
                command.Parameters.AddWithValue("Stud_rollno", CollegeRollNo);

                string Education = txtEducation.Text;
                command.Parameters.AddWithValue("Stud_education", Education);

                string Branch = txtBranch.Text;
                command.Parameters.AddWithValue("Stud_branch", Branch);

                int PassingYear = Convert.ToInt32(txtPassingyear.Text);
                command.Parameters.AddWithValue("Stud_passing_year", PassingYear);

                var Percentage = decimal.Parse(txtPercentage.Text);
                command.Parameters.AddWithValue("Stud_percentage", decimal.Round(Percentage, 2));

                string Skill = txtSkill.Text;
                command.Parameters.AddWithValue("Stud_skill", Skill);

                string ExtraSkill = txtExtraskill.Text;
                command.Parameters.AddWithValue("Stud_extra_skill", ExtraSkill);

                Stream fs = fileResume1.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                byte[] bytes = br.ReadBytes((Int32)fs.Length);
                command.Parameters.AddWithValue("Stud_resume", bytes);

                string Password = txtPwd.Text;
                command.Parameters.AddWithValue("Stud_password", Password);

                command.ExecuteNonQuery();
                if (conn.State == ConnectionState.Open)
                    conn.Close();
                Response.Write("<script>alert('You have Registered sucessfully......Login Details: Username/Email ID:" + EmailID + " and Password:" + Password + "');</script>");
                //Alert.Show("You have Registered sucessfully......Login Details: Username/Email ID:" + EmailID + " and Password:" + Password);
                Server.Transfer("StudentLogin.aspx");
            }
            else
            {
                //Alert.Show("Email ID is already Registered!");
                Response.Write("<script>alert('Email ID is already Registered!');</script>");
            }
        }
    }
}