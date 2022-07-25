<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Contact_Mail.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
       input[type=text],[type=email]	
       {
		  padding: 10px;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		  margin-top: 6px;
		  margin-bottom: 16px;
		  resize: vertical;	
	   }
       .contact{
           float:left;   
       }

       .reach{
           float:right;   
       }
       .form{
           float:left;
       }
	   
    </style>

</head>
<body>
          <div class="contact">
          <h2>Contact Us</h2>
         <p>Contact the SriLankan Airlines Sales team for any clarification on procedures, policies or travel restrictions.If there<br />
are any inquires please send your details and our team will contact you soon.</p>
          </div>

          <div class ="reach">
          <h3>Reach Us </h3>
          SriLankan Airlines Ltd
          <br>Level-3,East Tower,
          <br>World Trade Center,
          <br>Colombo 1, Sri Lanka.
          <p>E: <a href="mailto:salessupport.cmb@srilankan.com">salessupport.cmb@srilankan.com</a></p>
          <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16306.757037043388!2d79.84031161531563!3d6.934290190054051!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25924564dbb33%3A0x70921687227d06ed!2sSriLankan%20Airlines!5e0!3m2!1sen!2slk!4v1656629484509!5m2!1sen!2slk" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
          </div>

    

    <form id="form1" runat="server">
    <div class="form">
        <table>

            <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Agent Name * :" ></asp:Label></td>
            <td><asp:TextBox ID="Txt_Name" runat="server"  ></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Agent Name Required" ControlToValidate="Txt_Name" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

            <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Agent Email * :"></asp:Label></td>
            <td><asp:TextBox ID="Txt_Email" runat="server" ></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Agent Email Required" ControlToValidate="Txt_Email" ForeColor="Red"></asp:RequiredFieldValidator>  
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txt_Email" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>

            <tr>
            <td><asp:Label ID="Label3" runat="server" Text="PNR No :" ></asp:Label></td>
            <td><asp:TextBox ID="Txt_PNRNo" runat="server" ></asp:TextBox></td>
            </tr>

            <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Phone * :" ></asp:Label></td>
            <td><asp:TextBox ID="Txt_Phone" runat="server" ></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Agent Mobile Required" ControlToValidate="Txt_Phone" ForeColor="Red"></asp:RequiredFieldValidator>  
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txt_Phone" ErrorMessage="Mobile number must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>  </td>
            </tr>

            <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Message :" ></asp:Label></td>
            <td><asp:TextBox ID="Txt_Message" runat="server"></asp:TextBox></td>
            </tr>

        </table>
        <asp:Button ID="Send_Email" OnClick="SendEmail" runat="server" Text="Send Email" />
        </div>
        </form>
          
</body>
</html>
