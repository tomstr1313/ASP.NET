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
                HttpCookie cookies = Request.Cookies["myCookies"];
                if(!(cookies == null))
                {
                    //address.Text = cookies["address"];
                    postalCode.Text = cookies["postalCode"];
                    telephone.Text = cookies["telephone"];
                    programName.Text = cookies["programName"];
                    institutionName.Text = cookies["istitution"];
                }


                string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("SELECT firstName, lastName, email, password FROM [dbo].[Table] WHERE username = '" + cookies["username"] + "'", conn);
                    conn.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    while (sdr.Read())
                    {
                        fName.Text = sdr["firstName"].ToString();
                        lName.Text = sdr["lastName"].ToString();
                        email.Text = sdr["email"].ToString();
                        password.Text = sdr["password"].ToString();
                    }
                }
            }
        }
    }
}