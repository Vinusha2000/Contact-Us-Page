using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;



namespace Contact_Mail
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void SendMail()
        {
            

            string relaySMTP = "relaysmtp.srilankan.corp";
            string from = "ITSystems@Srilankan.com";
            string senderName = "SriLankan";
            string subject = "Contact Us";

            string AgentName = Txt_Name.Text;
            string AgentEamil = Txt_Email.Text;
            string PNRNo = Txt_PNRNo.Text;
            string Phone = Txt_Phone.Text;
            string Message = Txt_Message.Text;

            string body = "<b> Agent Name : </b>" + AgentName + "<br/>"
                + "<b> Agent Email : </b>" + AgentEamil + "<br/>"
                + "<b> PNR NO : </b>" + PNRNo + "<br/>"
                + "<b> Phone : </b>" + Phone + "<br/>"
                + "<b> Message : </b>" + Message;

            string to = "vinusha.m@srilankan.com";

            var message = new MailMessage()
            {
                From = new MailAddress(from, senderName),
                Subject = subject,
                Body = body,
                IsBodyHtml = true,
            };

            message.To.Add(to);

            try
            {
                var emailClient = new SmtpClient(relaySMTP) { DeliveryMethod = SmtpDeliveryMethod.Network };
                emailClient.Send(message);

                Txt_Name.Text = "";
                Txt_Email.Text = "";
                Txt_PNRNo.Text = "";
                Txt_Phone.Text = "";
                Txt_Message.Text = "";


            }
            catch (Exception e)
            {
                throw e;
            }

        }

        protected void SendEmail(object sender, EventArgs e)
        {
            SendMail();
        }
    }
}