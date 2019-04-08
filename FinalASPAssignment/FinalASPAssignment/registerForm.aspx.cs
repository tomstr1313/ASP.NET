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
        //String ProgramType = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //programType();

            if (!Page.IsPostBack)
            {
                for (int day = 1; day < 32; day++)
                {
                    DropDownListDay.Items.Add(new ListItem(day.ToString()));
                }
                for (int year = 1910; year < 2020; year++)
                {
                    DropDownListYear.Items.Add(new ListItem(year.ToString()));
                }

            }
        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            string telephoneNo = "(" + telephoneTxt1.Text + ") " + telephoneTxt2.Text + "-" + telephoneTxt3.Text;

            HttpCookie cookies = Request.Cookies["myCookies"];
            if(cookies == null)
            {
                cookies = new HttpCookie("myCookies");
                cookies.Values["username"] = confirmEmailTxt.Text.ToString();
                //cookies.Values["address"]
                cookies.Values["postalCode"] = postalCodeTxt1.Text + "-" + postalCodeTxt2.Text;
                //cookies.Values["DOB"]
                cookies.Values["telephone"] = telephoneNo.ToString();
                //cookies.Values["programType"] = ProgramType.ToString();
                cookies.Values["programName"] = DropDownListProgramName.Text.ToString();
                cookies.Values["istitution"] = DropDownListInstitutionName.Text.ToString();
            }
            else
            {
                cookies.Values["username"] = confirmEmailTxt.Text.ToString();
                //cookies.Values["address"]
                cookies.Values["postalCode"] = postalCodeTxt1.Text + "-" + postalCodeTxt2.Text;
                //cookies.Values["DOB"]
                cookies.Values["telephone"] = telephoneNo.ToString();
                //cookies.Values["programType"] = ProgramType.ToString();
                cookies.Values["programName"] = DropDownListProgramName.Text.ToString();
                cookies.Values["istitution"] = DropDownListInstitutionName.Text.ToString();
            }

            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Table] (username, password, email, firstName, lastName) VALUES " +
                    "('" + confirmEmailTxt.Text.ToString() + "','" + confirmPasswordTxt.Text.ToString() + "','" + confirmEmailTxt.Text.ToString()
                    + "','" + firstNameTxt.Text.ToString() + "','" + lastNameTxt.Text.ToString() + "')", conn);
                conn.Open();
                int rowsInserted = cmd.ExecuteNonQuery();
                registerComplete.Visible = true;
                registerComplete.ForeColor = Color.Green;
            }
            Response.Redirect("studentLoggedIn.aspx");
        }

        /*public void programType()
        {
            String programName = register.DropDownListProgramName.Text.ToString();

            if(programName == "Allergy" || programName == "Anaesthesiology" || programName == "Biochemistry" || programName == "Diagnostic radiology" || programName == "Emergency Medicine (FM)"
                || programName == "Emergency Medicine (FRCP)" || programName == "Endocrinology" || programName == "Family Medicine" || programName == "Gynaecology")
            {
                ProgramType = "Postgraduate";
            }
            else if(programName == "Core rotation" || programName == "Elective" || programName == "Selective")
            {
                ProgramType = "Undergraduate";
            }
            else if(programName == "RPN" || programName == "RN" || programName == "MN" || programName == "NP")
            {
                ProgramType = "Nursing";
            }
            else if (programName == "Anaesthesia Assistant" || programName == "Audiology" || programName == "Cardiovascular Technology (ECG)" || programName == "Chiropody" || programName == "Dietetics"
                || programName == "Diet Technician" || programName == "Echocardiography" || programName == "Infection Prevention And Control" || programName == "Other")
            {
                ProgramType = "Health Professional";
            }
        }*/
    }
}