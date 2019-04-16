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
    public partial class adminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {       
            
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            //creating a cookie out of username
            HttpCookie cookies = Request.Cookies["myCookies"];
            if (cookies == null)
            {
                cookies = new HttpCookie("myCookies");
                cookies.Values["username"] = txtAdminOnly.Text.ToString();
            }
            else
            {
                cookies.Values["username"] = txtAdminOnly.Text.ToString();
            }
            cookies.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(cookies);

            string user = txtAdminOnly.Text;
            string pass = txtPassword.Text;
            //connecting to database for info from user
            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            using(SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("SELECT username, password FROM [dbo].[Admin] WHERE username = '" + user + "' and password = '" + pass + "'", conn);
                conn.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if(sdr.Read())
                { 
                    Response.Redirect("adminPage.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(),
                    "alertMessage", "alert('Not a Registered User... Please Register!!!')", true);
                }
            }            
        }

        protected void backToUserLoginBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}