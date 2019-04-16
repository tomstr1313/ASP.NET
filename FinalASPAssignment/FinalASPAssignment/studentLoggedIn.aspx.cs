using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalASPAssignment
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //calling the username cookie
                HttpCookie cookies = Request.Cookies["myCookies"];
                if(cookies != null){
                    lblCurrentUser.Text = cookies["username"];
                }

                //connecting to database for info from user
                string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("SELECT firstName, lastName, address, postalCode, dateOfBirth, email, password, telephoneNumber, programName, institutionName, programType FROM [dbo].[Register] WHERE username = '" + cookies["username"] + "'", conn);
                    conn.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                  
                    //displaying user info from db to labels
                    while (sdr.Read())
                    {
                        fName.Text = sdr["firstName"].ToString();
                        lName.Text = sdr["lastName"].ToString();
                        address.Text = sdr["address"].ToString();
                        postalCode.Text = sdr["postalCode"].ToString();
                        DOB.Text = sdr["dateOfBirth"].ToString();
                        email.Text = sdr["email"].ToString();
                        password.Text = sdr["password"].ToString();
                        telephone.Text = sdr["telephoneNumber"].ToString();
                        programName.Text = sdr["programName"].ToString();
                        institutionName.Text = sdr["institutionName"].ToString();
                    }
                   loadData();
                }
            }
     //method to load data into a gridview !!****being used for testing purposes****!!
        void loadData()
            {
                //string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;

                //using (SqlConnection conn = new SqlConnection(CS))
                //{
                    //SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[Register]", conn);
                    //conn.Open();
                    //GridView1.DataSource = cmd.ExecuteReader();
                    //GridView1.DataBind();
                //}
            }
        }

        protected void rotationBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentRotationPage.aspx");
        }

        protected void LogOutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}