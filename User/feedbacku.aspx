<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedbacku.aspx.cs" Inherits="User_feedbacku" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <!-- Metas -->
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Drive On</title>
        

        <!-- External CSS -->
        <link rel="stylesheet" href="../assets/css/bootstrap.min.css"/>
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

    <style type="text/css">
.Button
{
background-color :#FF5A00;
color: #FFFFFF;
font-weight: bold;
margin-right: 2px;
padding: 4px 20px 4px 21px;
}



</style>
</head>
<body>
    <form id="form1" runat="server">
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
                                        <li class="second admin-pic">
				                        <ul class="top_dp_agile">
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">
                                                Hi&nbsp<asp:Label ID="Label2" runat="server"></asp:Label>
												
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
											<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
											<li> <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-default" Text="Log out" OnClick="btnLogout_Click"/> </li>
										</ul>
									</li>
						            </ul>
				                </li>
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
                                <div class="block-minicart">
                                    <a href="../Cart/ShowCart.aspx" class="cartlink"><i class="fa fa-shopping-cart" aria-hidden="true"></i>My Cart<span class="cart-subtotal"></span>                                 
                                    </a>                                   
                                </div>
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
                                        <a href="UserHome.aspx" class="dropdown-toggle"  >Home</a>
                                        
                                    </li>
                                    <li class="dropdown mega-holder">
                                        <a href="Carsinfo.aspx" class="dropdown-toggle">Cars</a>
                                    </li>
                                    <li class="dropdown mega-holder">
                                        <a href="compar.aspx" class="dropdown-toggle"  >Compare Car</a>                                       
                                    </li>             
                                    <li class="dropdown mega-holder">

                                        <a href="spinfo.aspx" class="dropdown-toggle">Spare parts</a>


                                    </li>
									<li class="dropdown mega-holder">
                                        <a href="Blog.aspx" class="dropdown-toggle">Blogs</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="blog.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="feedbacku.aspx">Contact US</a></li>
                                            <li><a href="Aboutusu.aspx">About US</a></li>
                                        </ul>
                                    </li>								
								</ul>								
                            </div>
                        </nav>
                    
                </div>
                    </div>
            </header>
        </div>


    <div>
    <table cellspacing="2" cellpadding="2" border="0" align="center">
<tr><td></td><td><b>Contact Us Form</b></td></tr>
<tr><td><b>Name</b></td><td><asp:TextBox ID="txtName" runat="server" Height="40px" Width="300px"/></td></tr>
<tr><td><b>Email</b></td><td><asp:TextBox ID="txtEmail" runat="server" Height="40px" Width="300px" /></td></tr>
<tr><td><b>Subject</b></td><td><asp:TextBox ID="txtSubject" runat="server"  Height="40px" Width="300px"/></td></tr>
<tr><td valign="top"><b>Message</b></td><td> <asp:TextBox ID="txtMessage" Rows="5" Columns="40" TextMode="MultiLine" runat="server"  Height="100px" Width="400px"/></td></tr>
<tr><td></td><td><asp:button ID="btnSubmit" Text="Submit"  runat="server" onclick="btnSubmit_Click" CssClass="Button"/></td></tr>
<tr><td colspan="2" style=" color:red"><asp:Label ID="lbltxt" runat="server"/></td></tr>
</table>
    </div>
    </form>


     <footer>
            <div class="container">
                <div class="row">
                    <div class="newsletter-wrap">
                        <div class="col-md-8 col-md-offset-2 text-center">                         
                        </div>
                    </div>
                </div>       
                <div class="footer-head">
                    <div class="display-flex">
                        <div class="col-md-4 col-sm-5">
                            <a class="site-logo footer-logo" href="#"><img src="assets/img/color-1/template/logo-white.png" alt="..."></a>
                        </div>
                      
                    </div>
                </div>                  
                <div class="footer-widget-area">
                    <div class="footer-widgets">
                        <div class="col-md-3 col-sm-6">
                            <div class="widget contact-widget">
                                <h3 class="widget-title">Contact Us</h3>
                                <div class="widget-content">
                                    <div class="contact-infos">
                                        <div class="contact-info">
                                            <p><b>Add:</b>Lafayette has a great customer service</p>
                                        </div>
                                        <div class="contact-info">
                                            <p><b>Tel:</b>02 8000 11 800</p>
                                        </div>
                                        <div class="contact-info">
                                            <p><b>Email:</b><a href="#">Company@gmail.com</a></p>
                                        </div>
                                        <div class="contact-info">
                                            <p><b>Hotline:</b><a href="#">999-507-1256</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-2 col-sm-6">
                            <div class="widget custom-menu-widget">
                                <h3 class="widget-title">About Us</h3>
                                <div class="widget-content">
                                    <ul class="menu custom-menu about-menu">
                                     
                                        <li><a href="about_us.aspx">About Website</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                      
  
                    </div>
                </div>
                
                <!--------------- Lower footer for copyright --------------->
                <div class="lower-footer-area">
                    <div class="lower-footer-inner">
                        <div class="row">
                            <div class="display-flex">
                                <div class="col-sm-6">
                                    <p class="copyright">Copyright 2018- DriveOn. All rights reserved</p>
                                </div>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>	

        <!--------------- Script --------------->
              <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/jquery-3.1.1.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>

