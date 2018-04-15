<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="carform.aspx.cs" Inherits="Admin_carform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
    <head>
         <link rel="stylesheet" href="css/bootstrap.css"/>
        </head>
    <br/>
    <br >
    <br >
    <br >
    <br >
    <br >
    <body>
    <table align="center" >
        <tr>
            <td style="height: 29px">
                Company Name:
            </td>
            <td style="height: 29px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        
          <tr>
            <td>
                Model Name:
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Description:
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
  </td>
        </tr>
         <tr>
            <td>
                Car Price:
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
    
            <tr>
            <td>
                Car Type:
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                Car Image:
            </td>
            <td>
                <asp:FileUpload ID="f1" runat="server" />
            </td>
        </tr>
            <tr>
            <td>
                Car Image2:
            </td>
            <td>
                <asp:FileUpload ID="f2" runat="server" />
            </td>
        </tr>

         <tr>
           
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
            </td>
        </tr>


    </table>
        </body>
        </html>
</asp:Content>

