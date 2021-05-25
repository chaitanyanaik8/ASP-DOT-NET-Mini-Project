using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampusPlacement
{
    public partial class StudentProfile : System.Web.UI.Page
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
            if (Session["Username"] == null)
                Response.Redirect("StudentLogin.aspx");
            else
            {
                EstablishConnection();
                if (!IsPostBack)
                {
                    btnViewPdf.Visible = true;
                    lblStudentName.Text = Session["Stud_name"].ToString();
                    txtEmail.Text = Session["Username"].ToString();
                    txtName.Text = Session["Stud_name"].ToString();
                    txtAddr.Text = Session["Stud_address"].ToString();
                    txtCity.Text = Session["Stud_city"].ToString();
                    txtState.Text = Session["Stud_state"].ToString();
                    txtPincode.Text = Session["Stud_pincode"].ToString();
                    txtBdate.Text = Session["Stud_birthdate"].ToString();
                    RadioButtonList1.SelectedValue = Session["Stud_gender"].ToString();
                    txtContactno.Text = Session["Stud_contactno"].ToString();
                    txtCollegename.Text = Session["Stud_college_name"].ToString();
                    txtRollno.Text = Session["Stud_rollno"].ToString();
                    txtEducation.Text = Session["Stud_education"].ToString();
                    txtBranch.Text = Session["Stud_branch"].ToString();
                    txtPassingyear.Text = Session["Stud_passing_year"].ToString();
                    txtPercentage.Text = Session["Stud_percentage"].ToString();
                    txtSkill.Text = Session["Stud_skill"].ToString();
                    txtExtraskill.Text = Session["Stud_extra_skill"].ToString();
                    txtPwd.Text = Session["Password"].ToString();
                    txtConfPwd.Text = Session["Password"].ToString();
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Open)
                conn.Close();
            Session.Abandon();
            Response.Redirect("StudentLogin.aspx");
        }

        protected void btnViewPdf_Click(object sender, EventArgs e)
        {
            string qry1 = "select Stud_resume from Student_info where [Stud_email]='" + Session["Username"].ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(qry1, conn);
            Byte[] FileBuffer = (byte[])cmd1.ExecuteScalar();
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            txtName.ReadOnly = false;
            txtAddr.ReadOnly = false;
            txtCity.ReadOnly = false;
            txtState.ReadOnly = false;
            txtPincode.ReadOnly = false;
            txtBdate.ReadOnly = false;
            txtBdate.TextMode = TextBoxMode.Date;
            txtBdate.Text = Session["Stud_birthdate"].ToString();
            RadioButtonList1.Enabled = true;
            RadioButtonList1.SelectedValue = Session["Stud_gender"].ToString();
            txtContactno.ReadOnly = false;
            txtCollegename.ReadOnly = false;
            txtRollno.ReadOnly = false;
            txtEducation.ReadOnly = false;
            txtBranch.ReadOnly = false;
            txtPassingyear.ReadOnly = false;
            txtPercentage.ReadOnly = false;
            txtSkill.ReadOnly = false;
            txtExtraskill.ReadOnly = false;
            btnViewPdf.Visible = false;
            fileResume.Visible = true;
            txtPwd.ReadOnly = false;
            txtConfPwd.ReadOnly = false;
            txtPwd.Text = Session["Password"].ToString();
            txtConfPwd.Text = Session["Password"].ToString();
            btnSave.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            btnEdit.Visible = false;
            string sqlquery = "UPDATE [Student_info] SET [Stud_name]=@Stud_name,[Stud_address]=@Stud_address,[Stud_city]=@Stud_city,[Stud_state]=@Stud_state,[Stud_pincode]=@Stud_pincode,[Stud_birthdate]=@Stud_birthdate,[Stud_gender]=@Stud_gender,[Stud_contactno]=@Stud_contactno,[Stud_college_name]=@Stud_college_name,[Stud_rollno]=@Stud_rollno,[Stud_education]=@Stud_education,[Stud_branch]=@Stud_branch,[Stud_passing_year]=@Stud_passing_year,[Stud_percentage]=@Stud_percentage,[Stud_skill]=@Stud_skill,[Stud_extra_skill]=@Stud_extra_skill,[Stud_resume]=@Stud_resume,[Stud_password]=@Stud_password WHERE Stud_email='" + Session["Username"].ToString() + "'";
            SqlCommand command = new SqlCommand(sqlquery, conn);

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

            Stream fs = fileResume.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] bytes = br.ReadBytes((Int32)fs.Length);
            command.Parameters.AddWithValue("Stud_resume", bytes);

            string Password = txtPwd.Text;
            command.Parameters.AddWithValue("Stud_password", Password);

            command.ExecuteNonQuery();

            string qry3 = "select * from Student_info where [Stud_email]='" + Session["Username"].ToString() + "'";
            SqlCommand cmd3 = new SqlCommand(qry3, conn);
            SqlDataReader dr = cmd3.ExecuteReader();
            if (dr.Read())
            {
                Session["Stud_name"] = dr["Stud_name"].ToString();
                Session["Stud_address"] = dr["Stud_address"].ToString();
                Session["Stud_city"] = dr["Stud_city"].ToString();
                Session["Stud_state"] = dr["Stud_state"].ToString();
                Session["Stud_pincode"] = dr["Stud_pincode"].ToString();
                DateTime date1 = Convert.ToDateTime(dr["Stud_birthdate"].ToString());
                Session["Stud_birthdate"] = date1.ToString("dd/MM/yyyy");
                Session["Stud_gender"] = dr["Stud_gender"].ToString();
                Session["Stud_contactno"] = dr["Stud_contactno"].ToString();
                Session["Stud_college_name"] = dr["Stud_college_name"].ToString();
                Session["Stud_rollno"] = dr["Stud_rollno"].ToString();
                Session["Stud_education"] = dr["Stud_education"].ToString();
                Session["Stud_branch"] = dr["Stud_branch"].ToString();
                Session["Stud_passing_year"] = dr["Stud_passing_year"].ToString();
                Session["Stud_percentage"] = dr["Stud_percentage"].ToString();
                Session["Stud_skill"] = dr["Stud_skill"].ToString();
                Session["Stud_extra_skill"] = dr["Stud_extra_skill"].ToString();
                Session["Stud_resume"] = dr["Stud_resume"].ToString();
                Session["Password"] = dr["Stud_password"].ToString();
            }
            dr.Close();

            Response.Write("<script>alert('Profile Updated sucessfully');</script>");
            Server.Transfer("StudentProfile.aspx");
        }
    }
}