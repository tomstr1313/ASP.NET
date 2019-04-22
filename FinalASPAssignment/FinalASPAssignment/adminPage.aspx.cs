using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalASPAssignment
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //calling the username cookie
                HttpCookie cookies = Request.Cookies["myCookies"];
                if (cookies != null)
                {
                    //currentUserLbl.Text = cookies["username"];
                }
            }
        }

        protected void editRotationsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("editRotationsAdmin.aspx");
        }

        protected void editUsersBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("editUsersAdmin.aspx");
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }
    }
}