<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="Blogwrite.aspx.cs" Inherits="Blogwrite" %>




<html>
    <head>
        <title>Write a Blog</title>
<!-- External CSS -->
        <link rel="stylesheet" href="../assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="../assets/css/owl.carousel.min.css"/>
        <link rel="stylesheet" href="../assets/css/owl.theme.default.min.css"/>
        <link rel="stylesheet" href="../assets/css/jquery-ui.min.css"/>
        
        <!-- Custom CSS -->
        <link rel="stylesheet" href="../assets/css/style.css"/>
        <link rel="stylesheet" href="../assets/css/responsive.css"/>


        </head>

    <style>
.jumbotron
 {
 position: relative;
 max-width: 100%;
 margin: 0 auto 100px 0px;
 padding: 45px;
 top: 8px;
 left: 277px;
height: 1050px;
width: 550px;
 }  
body {
 margin:0;
	padding:0;
	background-color:grey;
	font-family:sans-serif;
	background-size:cover;
}

.btne .btnq {
    background-color: #010101;
    border-radius: 0;
    font-size: 1.4rem;
    font-family: 'Open Sans', sans-serif;
    font-weight: 800;
    color: #ffffff;
    text-transform: uppercase;
    padding: 9px 20px;
        }
.btne .btnq:hover {
    background-color: #f44337;
        }
        .btne {
            margin-left: 40px;
        }
  .vee {
           display:none;
       }
  .preloader {
         margin:0;
         position:absolute;
         top:50%;
         left:50%;
         margin-right:-50%;
         transform:translate(-50%,-50%);
        }
        </style>

    <body>

        <div class="preloader">  
            <img src="../assets/img/loader.gif" />
         </div>
        
        <div class="vee">
<form runat="server">
    
        <div class="col-lg-4 jumbotron">
        <div class="container text-uppercase" >
  <div class="form-group">
      <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
      <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="420px" Height="50px"></asp:TextBox>
    <small id="emailHelp" class="form-text text-muted">Enter Title Here for your Blog.</small>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Title is Required" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
  </div>

  <div class="form-group">
      <asp:Label ID="Label2" runat="server" Text="Paragraph"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="420px" Height="100px" TextMode="MultiLine"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Paragraph is Required" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
  
  </div>
 
     <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Upload Image"></asp:Label>
        <asp:FileUpload ID="f1" runat="server" CssClass="form-control" Width="420px"/>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="image is Required" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>

      </div>

    <div class="form-group">
      <asp:Label ID="Label6" runat="server" Text="Paragraph"></asp:Label>
      <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Width="420px" Height="100px" TextMode="MultiLine"></asp:TextBox>
   </div>

    <div class="form-group">
      <asp:Label ID="Label8" runat="server" Text="Paragraph"></asp:Label>
      <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Width="420px" Height="100px" TextMode="MultiLine"></asp:TextBox>
   </div>
             
            <br>
            <br>
     <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Upload Image"></asp:Label>
        <asp:FileUpload ID="f2" runat="server" CssClass="form-control" Width="420px"/>
      </div>

      <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Upload Image"></asp:Label>
        <asp:FileUpload ID="f3" runat="server" CssClass="form-control" Width="420px" />
      </div>

      <div class="row">
            <div class="btne">
        <asp:Button ID="Button1" runat="server" Text="Post" class="btnq" Width="190px" Height="40px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" class="btnq" Width="190px" Height="40px" OnClick="Button2_Click" />
                </div>
          </div>

           </div>
            </div>
</form>

    </div>
        <!--------------- Script --------------->
          <script src="../assets/js/jquery.min.js"></script>
        <script>
            $(function() {
                $(".preloader").fadeOut(2000, function() {
                $(".vee").fadeIn(1000);
                });
            });
            </script>
  
        </body>
    </html>

