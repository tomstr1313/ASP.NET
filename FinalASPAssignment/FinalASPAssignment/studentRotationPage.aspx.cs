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
    public partial class studentRotationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //calling the username cookie
                HttpCookie cookies = Request.Cookies["myCookies"];
                if (cookies != null)
                {
                    currentUser.Text = cookies["username"];
                }
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentLoggedIn.aspx");
        }

        protected void saveRotation_Click(object sender, EventArgs e)
        {
            GridViewRotations.Visible = true;

            //connecting to database for info from user
            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Rotations] (Username, UnitAreaService, StartDate, EndDate, TimeSpent) VALUES ('" + currentUser.Text + "','" + DropDownListArea.Text + "','" + Calendar1.SelectedDate.ToString() +
                    "','" + Calendar2.SelectedDate.ToString() + "','" + DropDownListTimeSpent.Text + "')", conn);
                conn.Open();
                int rowsInserted = cmd.ExecuteNonQuery();
                loadData();
            }
        }
    }
}