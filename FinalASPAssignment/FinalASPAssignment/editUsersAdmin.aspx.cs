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
    public partial class editUsersAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //calling the username cookie
                HttpCookie cookies = Request.Cookies["myCookies"];
                if (cookies != null)
                {
                    currentUserLabel.Text = cookies["username"];
                }
                loadData();
            }
        }
        //method to load data into a gridview !!****being used for testing purposes****!!
        void loadData()
        {
            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[Register]", conn);
                conn.Open();
                GridViewUsers.DataSource = cmd.ExecuteReader();
                GridViewUsers.DataBind();
            }
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            //connecting to database for info from user
            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[Register] WHERE username = '" + searchByTxt.Text + "'", conn);
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
                    gender.Text = sdr["gender"].ToString();
                    programType.Text = sdr["programType"].ToString();
                }
            }
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            //connecting to database for info from user
            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[Register] WHERE username = '" + searchByTxt.Text + "'", conn);
                conn.Open();
                int rowsDeleted = cmd.ExecuteNonQuery();
            }
        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            //connecting to database for info from user
            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Register] (firstName, lastName, dateOfBirth, telephoneNumber, address, postalCode, username, email, password, programName, institutionName, gender) VALUES " +
                    "('" + fName.Text.ToString() + "','" + lName.Text.ToString() + "','" + DOB.Text.ToString() + "','" + telephone.Text.ToString() + "','" + address.Text.ToString() + "','" + postalCode.Text.ToString() +
                     "','" + email.Text + "','" + email.Text + "','" + password.Text + "','" + programName.Text.ToString() + "','" + institutionName.Text.ToString() + "','" + gender.Text +  "')", conn);
                conn.Open();
                int rowsInserted = cmd.ExecuteNonQuery();
            }
        }

        protected void editBtn_Click(object sender, EventArgs e)
        {
            //connecting to database for info from user
            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Update [dbo].[Register] firstName = " + fName.Text.ToString() + "', lastName = '" + lName.Text + "', dateOfBirth = '" + DOB.Text + "', telephoneNumber = '" + telephone.Text + "', address = '" + address.Text + "', postalCode = '" + 
                    postalCode.Text + "', username = '" + email.Text + "', email = '" + email.Text + "', password = '" + password.Text + "', programName = '" + programName.Text + "', institutionName = '" + institutionName.Text + "', gender = '" + gender.Text + "'", conn);
                conn.Open();
                int rowsInserted = cmd.ExecuteNonQuery();
            }
        }

        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }
    }    
}
    
