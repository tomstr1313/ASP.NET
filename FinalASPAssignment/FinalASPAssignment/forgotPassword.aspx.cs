using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Data.SqlClient;

namespace FinalASPAssignment
{
    public partial class forgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string username = "";
            string password = "";
            string CS = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            using(SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("SELECT username, password FROM [dbo].[Table] WHERE email = '" + txtEmail.Text.ToString() + "'", conn);
                conn.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    username = sdr["username"].ToString();
                    password = sdr["password"].ToString();
                }
                conn.Close();
            }
            if (!string.IsNullOrEmpty(password))
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("tyler.vincent1522@gmail.com");
                msg.To.Add(txtEmail.Text.ToString());
                msg.Subject = "Recover Your Password";
                msg.Body = ("Your Current Username is: " + username + "<br/><br/> Your Current Password is: " + password);
                msg.IsBodyHtml = true;

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "tyvince2297@gmail.com";
                ntwd.Password = "Lamborghini2";
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                lblMessage.Text = "Username and Password have been sent Successfully!!!";
                lblMessage.ForeColor = Color.Green;
            }
        }
    }
}     