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
    public partial class editRotationsAdmin : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[Rotations]", conn);
                conn.Open();
                GridViewRotations.DataSource = cmd.ExecuteReader();
                GridViewRotations.DataBind();
            }
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            //connecting to database for info from user
            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[Rotations] WHERE username = '" + searchByTxt.Text + "'", conn);
                conn.Open();
                SqlDataReader sdr = cmd.ExecuteReader();

                //displaying user info from db to labels
                while (sdr.Read())
                {
                    username.Text = sdr["Username"].ToString();
                    area.Text = sdr["UnitAreaService"].ToString();
                    sDate.Text = sdr["StartDate"].ToString();
                    eDate.Text = sdr["EndDate"].ToString();
                    timeSpent.Text = sdr["TimeSpent"].ToString();                   
                }
            }
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            //connecting to database for info from user
            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[Rotations] WHERE Username = '" + searchByTxt.Text + "'", conn);
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
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Rotations] (Username, UnitAreaService, StartDate, EndDate, TimeSpent) VALUES " +
                    "('" + username.Text.ToString() + "','" + area.Text.ToString() + "','" + sDate.Text.ToString() + "','" + eDate.Text.ToString() + "','" + timeSpent.Text.ToString() + "')", conn);
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
                SqlCommand cmd = new SqlCommand("Update [dbo].[Rotations] Username = " + username.Text.ToString() + "', UnitAreaService = '" + area.Text + "', StartDate = '" + sDate.Text + "', EndDate = '" + eDate.Text + "', TimeSpent = '" + timeSpent.Text + "'", conn);
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