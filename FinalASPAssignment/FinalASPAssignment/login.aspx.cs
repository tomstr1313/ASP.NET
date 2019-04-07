using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalASPAssignment
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("registerForm.aspx");
        }

        protected void forgotPasswordBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgotPassword.aspx");
        }
    }
}