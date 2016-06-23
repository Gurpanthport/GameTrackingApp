using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// the source code for contact form is modified from codeproject.com

namespace gameTrackerFinal1
{
    public partial class Nested : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Default.aspx");
            SendMail();
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            FirstNameTextBox.Text = "";
            LastNameTextBox.Text = "";
            EmailTextBox.Text = "";
            ContactNumberTextBox.Text = "";
            MessageTextBox.Text = "";
        }




        protected void SendMail()
        {
            // Gmail Address from where you send the mail
            var fromAddress = "whoishostingwebsite@gmail.com";
            // any address where the email will be sending
            var toAddress = EmailTextBox.Text.ToString();
            //Password of your gmail address
            const string fromPassword = "shehraj007";
            // Passing the values and make a email formate to display
            string subject = MessageTextBox.Text.ToString();
            string body = "From: " + FirstNameTextBox.Text + "\n";
            body += "Email: " + EmailTextBox.Text + "\n";
            body += "Subject: " + MessageTextBox.Text + "\n";
            body += "Question: \n" + MessageTextBox.Text + "\n";
            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new System.Net.NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }


    }
}