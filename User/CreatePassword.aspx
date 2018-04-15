<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreatePassword.aspx.cs" Inherits="CreatePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../css/createpass.css"/>


<title>Change Your Password</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 180px;
        }
    </style>
</head>
<body>
    <div class="login-page">
        <div class="form">
    <form id="form1" runat="server">
    
        <asp:Panel ID="Pane_image" runat="server" Visible="false">
        <%--here you can set image according to your requirement--%>
        <img src="images.jpg" alt="" />
        </asp:Panel>
        <asp:Panel ID="Panel_reset_pwd" runat="server" Visible="false">
            <table class="style1">
                <tr>
                    <td class="style2">
                        Enter Your New Password:</td>
                    <td>
                        <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" Width="234px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txt_pwd" ErrorMessage="Reqiired"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Retype Password</td>
                    <td>
                        <asp:TextBox ID="txt_retype_pwd" runat="server" TextMode="Password" Width="224px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="txt_retype_pwd" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                            ControlToCompare="txt_pwd" ControlToValidate="txt_retype_pwd"
                            ErrorMessage="Enter Same Password"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btn_change_pwd" runat="server" onclick="btn_change_pwd_Click"
                            Text="Change Password" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                       </td>
                    <td>
                        <asp:Label ID="lbl_msg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
       
        </asp:Panel>
   
    </form>
            </div>
        </div>
</body>
</html>
