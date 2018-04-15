<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <!-- Metas -->
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     
      

        <!-- External CSS -->
        <link rel="stylesheet" href="../assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="../assets/css/font-awesome.min.css"/>
        <link rel="stylesheet" href="../assets/css/owl.carousel.min.css"/>
        <link rel="stylesheet" href="../assets/css/owl.theme.default.min.css"/>
        <link rel="stylesheet" href="../assets/css/jquery-ui.min.css"/>
        
        <!-- Custom CSS -->
        <link rel="stylesheet" href="../assets/css/style.css"/>
        <link rel="stylesheet" href="../assets/css/responsive.css"/>
        
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet"/>
        
        <!-- Favicon -->
        <link rel="icon" href="../assets/img/color-1/template/favicon.png"/>
        <link rel="apple-touch-icon" href="../assets/img/color-1/template/apple-touch-icon.png"/>
        <link rel="apple-touch-icon" sizes="72x72" href="../assets/img/color-1/template/icon-72x72.png"/>
        <link rel="apple-touch-icon" sizes="114x114" href="../assets/img/color-1/template/icon-114x114.png"/>

        <!--[if lt IE 9]>
            <script src="assets/js/html5shiv.min.js"></script>
            <script src="assets/js/respond.min.js"></script>
        <![endif]-->


    <link rel="stylesheet" type="text/css" href="../css/registration.css"/>
    <title>Registration</title>
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            width: 67px;
        }
        .auto-style3 {
            width: 384px;
        }
        .auto-style4 {
            height: 22px;
            width: 384px;
        }
    </style>
</head>
<body>
    
     <div class="header-area" data-spy="affix" data-offset-top="200">
            <!--------------- Top Header --------------->
            <header id="top-header-area" class="top-header-area">
                <div class="container">
                    <div class="top-header-inner">
                        <div class="top-header-content">
                            <div class="col-md-6 col-sm-12 col-xs-7">

                      
                            </div>

                            <!--------------- Top Navigation --------------->
                            <div class="col-md-6 col-sm-12 col-xs-5">
                                <div id="top-nav" class="top-nav">
                                    <div class="selected"><i class="fa fa-user"></i>My Account</div>
                                   <ul id="top-menu" class="menu top-menu right-menu">
                                     <li><a href="Login.aspx"><span><i class="fa fa-lock"></i>Sign In</span></a></li>
                                    <li><a href="Registration.aspx"><span><i class="fa fa-lock"></i>Sign Up</span></a></li>
                                   </ul>
                                </div>
                            </div>

                        </div>                    
                    </div>
                </div>
            </header>

            <!--------------- Main header --------------->
            <header id="main-header" class="main-header">
                <div class="container">
                    <div class="main-header-inner">
                        <div class="display-flex main-header-content">
                            <!--------------- Searchform --------------->
                            <div class="col-sm-4">                              
                            </div>

                            <!--------------- Log wrap --------------->
                            <div class="col-sm-4 text-center">
                                <a class="site-logo-link" href="#">
                                    <img src="../assets/img/color-1/template/logo.jpeg" alt="Site logo">
                                </a>
                            </div>

                          <!--------------- Mini Cart --------------->
                            <div class="col-sm-4">
                            </div>
                        </div>
                    </div>
                    

                    <!--------------- Main navigation --------------->
                     <div class="main-navigation-wrap">
                        <nav class="navbar navbar-default">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="menu nav navbar-nav main-menu">
                                    <li class="dropdown">
                                        <a href="../Home2.aspx" class="dropdown-toggle"  >Home</a>
                                        
                                    </li>
                                    <li class="dropdown mega-holder">
                                        <a href="../carsinfog.aspx" class="dropdown-toggle">Cars</a>
                                    </li>
                                    <li class="dropdown mega-holder">
                                        <a href="../compareg.aspx" class="dropdown-toggle"  >Compare Car</a>                                       
                                    </li>             
                                    <li class="dropdown mega-holder">
                                        <a href="../spinfog.aspx" class="dropdown-toggle">Spare parts</a>
                                    </li>
									<li class="dropdown mega-holder">
                                        <a href="../Blogguest.aspx" class="dropdown-toggle">Blogs</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="blog.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">Contact US</a></li>
                                            <li><a href="#">About US</a></li>
                                        </ul>
                                    </li>															
								</ul>								
                            </div>
                        </nav>
                    
                </div>
                    </div>
            </header>
        </div>
    <form class="form" runat="server">        
	<h2>Registration form </h2>        
        <table style="width: 474px">
            <tr>
                <td class="auto-style2">
                 </td>
                <td class="auto-style3">
            <asp:TextBox ID="TextBoxfname" placeholder="First Name" runat="server" Width="303px"></asp:TextBox>
            </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid fullName " ControlToValidate="TextBoxfname" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ForeColor="Red" Display="Dynamic" >*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="fullname is Required" ControlToValidate="TextBoxfname" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
                </tr>
            
            <tr>
                <td class="auto-style2">
                 </td>
                <td class="auto-style3">
            <asp:TextBox ID="TextBoxlname" placeholder="Last Name" runat="server" Width="303px"></asp:TextBox>
            </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter valid fullName " ControlToValidate="TextBoxfname" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ForeColor="Red" Display="Dynamic" >*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="fullname is Required" ControlToValidate="TextBoxfname" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
                </tr>

            <tr>
                <td class="auto-style2">
                    </td>
                <td class="auto-style3">
        <asp:TextBox ID="TextBoxUsern" placeholder="username" Width="303px" runat="server"></asp:TextBox>
            </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter a Valid Username" ControlToValidate="TextBoxUsern" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ForeColor="Red" Display="Dynamic"  >*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="User name is Required" ControlToValidate="TextBoxUsern" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
                </tr>
            
            <tr>
                <td class="auto-style2">
                    </td>
                <td class="auto-style4">
            <asp:TextBox ID="TextBoxEmail" placeholder="Email ID" Width="303px" runat="server"></asp:TextBox>
                    </td>
                <td class="auto-style1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail" ForeColor="Red" Display="Dynamic" >*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is Required" ControlToValidate="TextBoxEmail" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
         </td>
            
                    </tr>

              <tr>
                 <td class="auto-style2">
                 </td>
                 <td class="auto-style4">
            <asp:TextBox ID="TextBox1" placeholder="Address" Width="303px" runat="server" TextMode="MultiLine"></asp:TextBox>
                 </td>
             </tr>
            <tr>
                 <td class="auto-style2">
                 </td>
                 <td class="auto-style4">
            <asp:TextBox ID="TextBoxcity" placeholder="City" Width="303px" runat="server" TextMode="MultiLine"></asp:TextBox>
                 </td>
             </tr>

            <tr>
                 <td class="auto-style2">
                 </td>
                 <td class="auto-style4">
            <asp:TextBox ID="TextBoxstate" placeholder="State" Width="303px" runat="server" TextMode="MultiLine"></asp:TextBox>
                 </td>
             </tr>

            <tr>
                 <td class="auto-style2">
                 </td>
                 <td class="auto-style4">
            <asp:TextBox ID="TextBoxpin" placeholder="Pincode" Width="303px" runat="server" TextMode="MultiLine"></asp:TextBox>
                 </td>
                <td>
                    <asp:RegularExpressionValidator ID="regularExp" runat="server" ControlToValidate="TextBoxpin"  ValidationExpression="[0-9]{6}" ErrorMessage="Invalid ZipCode." ForeColor="Red">*</asp:RegularExpressionValidator>
                    </td>
             </tr>

            <tr>
                 <td class="auto-style2">
                 </td>
                 <td class="auto-style4">
            <asp:TextBox ID="TextBoxph" placeholder="Phone Number" Width="303px" runat="server"></asp:TextBox>
                 </td>
                <td class="auto-style1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxph" ErrorMessage="Enter Valid Phone Number" ValidationExpression="[0-9]{10}" ForeColor="Red">*</asp:RegularExpressionValidator> 
                 </td>
            
             </tr>
            
            <tr>
                <td class="auto-style2">
                    </td>
                <td class="auto-style3">
            <asp:TextBox ID="TextBoxpassw" placeholder="password" Width="303px" runat="server" TextMode="Password"></asp:TextBox>
             </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegExp1" runat="server" ErrorMessage="Password length must be between 7 to 10 characters" ControlToValidate="TextBoxpassw"  ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$" Display="Dynamic" ForeColor="Red" >*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is Required" ControlToValidate="TextBoxpassw" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
                </tr>
            
            <tr>
                <td class="auto-style2">
                    </td>
                <td class="auto-style3">
        <asp:TextBox ID="TextBoxCpass" placeholder="Confirm password" Width="303px" runat="server" TextMode="Password"></asp:TextBox>
            </td>
                <td>         
      <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Password do not match" ControlToValidate="TextBoxCpass" ControlToCompare="TextBoxpassw" ForeColor="Red" Display="Static" >*</asp:CompareValidator>
             </td>
                </tr>

            <tr>
                <td class="auto-style2">
                    </td>
                <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" Text="Register" CssClass="button" OnClick="Button1_Click1" />
                    </td>
                </tr>
            
                     
    </table>
        <p class="message">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Already registered? <a href="Login.aspx">Sign in</a></p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </form>
    
</body>
</html>
