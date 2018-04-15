<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="Forgotpass" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="stylesheet" type="text/css" href="../css/forgetpass.css"/>
    <title>Forget Password</title>

</head>
<body>
    <div class="login-page">
    <div class="form">   
    <form id="form1" runat="server">
    <div>
   
       &nbsp;&nbsp;
      
        <br />
        <br />
        <br />
       
   
        <table class="style1">
            <tr>
                <td>
                     Enter email id</td>
                <td>
                    <asp:TextBox ID="txt_email" runat="server" Width="283px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
            ControlToValidate="txt_email" ErrorMessage="Enter Valid Email address"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td colspan="2">
                   
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    OR&nbsp;</td>
            </tr>
            <tr>
                <td>
                    Enter username</td>
                <td>
                    <asp:TextBox ID="txt_uname" runat="server" Width="283px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
        <asp:Button ID="btn_send" runat="server"  Text="Send" OnClick="btn_send_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       
   
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
        <asp:Label ID="lbl_msg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
       
   
    </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Registrationtab]"></asp:SqlDataSource>
    </form>
        </div>
</body>
</html>
