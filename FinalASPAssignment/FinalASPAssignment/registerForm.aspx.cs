using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalASPAssignment
{
    public partial class registerForm : System.Web.UI.Page
    {
        String ProgramType = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                programType();
                //generating a cookie out of username
                HttpCookie cookies = Request.Cookies["myCookies"];
                if (!(cookies == null))
                {
                    confirmEmailTxt.Text = cookies["username"];
                }
                //drop down lists for dob
                    for (int day = 1; day < 32; day++)
                {
                    DropDownListDay.Items.Add(new ListItem(day.ToString()));
                }
                for (int year = 1950; year < 2001; year++)
                {
                    DropDownListYear.Items.Add(new ListItem(year.ToString()));
                }
            }
        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {

            //creating a cookie out of username
            HttpCookie cookies = Request.Cookies["myCookies"];
            if (cookies == null)
            {
                cookies = new HttpCookie("myCookies");
                cookies.Values["username"] = confirmEmailTxt.Text.ToString();
            }
            else
            {
                cookies.Values["username"] = confirmEmailTxt.Text.ToString();
            }
            cookies.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(cookies);

            //strings for the database
            string dob = DropDownListMonth.Text.ToString() + " " + DropDownListDay.Text + ", " + DropDownListYear.Text.ToString();
            string telephoneNo = "(" + telephoneTxt1.Text + ") " + telephoneTxt2.Text + "-" + telephoneTxt3.Text;
            string postalCode = postalCodeTxt1.Text + "-" + postalCodeTxt2.Text;
            string address = localAddressLine1Txt.Text + ", " + cityTxt.Text;

            //inserting values into the database
            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Register] (firstName, lastName, gender, dateOfBirth, telephoneNumber, address, postalCode, username, email, password, programName, institutionName, programType) VALUES " +
                    "('" + firstNameTxt.Text.ToString() + "','" + lastNameTxt.Text.ToString() + "','" + DropDownListGender.Text.ToString() + "','" + dob.ToString() + "','" + telephoneNo.ToString() + "','" + address.ToString() + "','" + postalCode.ToString() + 
                     "','" + confirmEmailTxt.Text + "','" + confirmEmailTxt.Text + "','" + confirmPasswordTxt.Text + "','" + DropDownListProgramName.Text.ToString() + "','" + DropDownListInstitutionName.Text.ToString() + "','" + ProgramType.ToString() + "')", conn);
                conn.Open();
                int rowsInserted = cmd.ExecuteNonQuery();
                registerComplete.Visible = true;
                registerComplete.ForeColor = Color.Green;
            }
            Response.Redirect("studentLoggedIn.aspx");
        }

        public void programType()
        {
            String programName = DropDownListProgramName.Text.ToString();

            if (programName == "Allergy" || programName == "Anaesthesiology" || programName == "Biochemistry" || programName == "Diagnostic radiology" || programName == "Emergency Medicine (FM)"
                || programName == "Emergency Medicine (FRCP)" || programName == "Endocrinology" || programName == "Family Medicine" || programName == "Gynaecology")
            {
                ProgramType = "Postgraduate";
            }
            if (programName == "Core rotation" || programName == "Elective" || programName == "Selective")
            {
                ProgramType = "Undergraduate";
            }
            if (programName == "RPN" || programName == "RN" || programName == "MN" || programName == "NP")
            {
                ProgramType = "Nursing";
            }
            if (programName == "Anaesthesia Assistant" || programName == "Audiology" || programName == "Cardiovascular Technology (ECG)" || programName == "Chiropody" || programName == "Dietetics"
                || programName == "Diet Technician" || programName == "Echocardiography" || programName == "Infection Prevention And Control" || programName == "Other")
            {
                ProgramType = "Health Professional";
            }
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}