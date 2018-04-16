<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<html lang="en"/>
<!-- Mirrored from codechant.com/envato/html/carparts/home-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 13 Aug 2017 06:59:10 GMT -->
<head>
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

        <!--[if lt IE 9]>
            <script src="assets/js/html5shiv.min.js"></script>
            <script src="assets/js/respond.min.js"></script>
        <![endif]-->

    <style>
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

    </head>
    <body>
       
              <div class="preloader">  
            <img src="../assets/img/loader.gif" />
         </div>

 <div class="vee">

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
                                        <form runat="server">

                                        <li class="second admin-pic">
				                        <ul class="top_dp_agile">
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">
                                                Hi&nbsp<asp:Label ID="Label1" runat="server"></asp:Label>									
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
											<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
											<li> <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-default" Text="Log out"  OnClick="btnLogout_Click"  /> </li>
										</ul>
									</li>
						            </ul>
				                </li>
                                        </form>
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
                                        <a href="UserHome.aspx" class="dropdown-toggle">Home</a>
                                        
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
                                            <li><a href="contact.aspx">Contact US</a></li>
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
        <!--------------- Header slider --------------->
         <div id="main-slider-area" class="main-slider-area">
            <div id="header-slider" class="owl-carousel header-slider">
                <div class="slider-item item-1">
                    <div class="slider-caption">
                        <div class="container">
                            <h1 class="display-inline">20%</h1>
                            <h2 class="display-inline">Off <span>Everything</span></h2><br/>
                           
                        </div>
                    </div>
                </div>
                <div class="slider-item item-2">
                    <div class="slider-caption">
                        <div class="container">
                            <h1 class="display-inline">20%</h1>
                            <h2 class="display-inline">Off <span>Everything</span></h2><br/>
                       
                        </div>
                    </div>
                </div>
                <div class="slider-item item-3">
                    <div class="slider-caption">
                        <div class="container">
                            <h1 class="display-inline">20%</h1>
                            <h2 class="display-inline">Off <span>Everything</span></h2><br/>
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
        <div class="main-wrap">
            
            <!--------------- Module / Featured / new product --------------->
            
            <div class="shop-module feature-product-module new-module">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <div class="module-header">
                                <h3 class="module-title">New Arrivals</h3>
                                <div class="module-sep"><div class="decorative-icons"></div><div class="decorative-bars"></div></div>
                                <p class="module-subtitle">Explore new cars and compare them.
                                </p>
                            </div>
                        </div>
                    </div>
                   
                    <div class="row">
                        <div class="products-wrap">  
                            
                      <asp:Repeater ID="d1" runat="server">
                          <ItemTemplate>
                            <div class="product col-md-3 col-sm-6">
                                <div class="product-thumb">
                                    <a href="#" class="thumb-link">
                                        <img class="hover-img" src="" alt="Product Hover">
                                        <img class="front-img" src="../<%#Eval("cimage") %>" alt="Product Front">
                                    </a>
                               
                                   
                                </div>
                                <div class="product-info">
                                    <h5 class="product-name"><a href="carsproduct.aspx?id=<%#Eval("Mid") %>"><%#Eval("Model_name") %></a></h5>
                                    <div class="rating" itemtype="http://schema.org/Offer" itemscope>
                                        <div class="star_rating" itemtype="http://schema.org/AggregateRating" itemscope itemprop="aggregateRating">
                                            <span class="star star_full"></span>
                                            <span class="star star_full"></span>
                                            <span class="star star_full"></span>
                                            <span class="star star_full"></span>
                                            <span class="star star_half"></span>
                                            <meta itemprop="worstRating" content="0">
                                            <meta itemprop="ratingValue" content="4.5">
                                            <meta itemprop="bestRating" content="5">
                                        </div>
                                    </div>
                                    <p class="price">
                                        <span class="discount-price"><%#Eval("Cprice") %></span>     
                                    </p>
                                </div>
                            </div>
                              </ItemTemplate>
                              </asp:Repeater>
                        </div>
                    </div>                         
                </div>
            </div>          
          
              <!--------------- Module / best seller --------------->        
            <div class="shop-module bestseller-module">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <div class="module-header">
                                <h3 class="module-title">SPARE PART</h3>
                                <div class="module-sep"><div class="decorative-icons"></div><div class="decorative-bars"></div></div>
                                <p class="module-subtitle">Buy Spare Parts of varoius cars .</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="products-wrap">
                  <asp:Repeater ID="d2" runat="server" >
                             <ItemTemplate>
                    
                              <div class="product col-lg-3 col-md-4 col-sm-6">
                                <div class="product-thumb">
                                    <a href="#" class="thumb-link">
                                        <img class="hover-img" src="../<%#Eval("spimg2") %>" alt="Product Hover">
                                        <img class="front-img" src="../<%#Eval("spimg") %>" alt="Product Front">
                                    </a>

                                    
                                </div>
                                <div class="product-info">
                                    <h5 class="product-name"><a href="spproduct.aspx?id=<%#Eval("id") %>"><%#Eval("spname") %></a></h5>
                                    <div class="rating" itemtype="http://schema.org/Offer" itemscope>
                                        <div class="star_rating" itemtype="http://schema.org/AggregateRating" itemscope itemprop="aggregateRating">
                                            <span class="star star_full"></span>
                                            <span class="star star_full"></span>
                                            <span class="star star_full"></span>
                                            <span class="star star_full"></span>
                                            <span class="star"></span>
                                            <meta itemprop="worstRating" content="0">
                                            <meta itemprop="ratingValue" content="4">
                                            <meta itemprop="bestRating" content="5">
                                        </div>
                                    </div>
                                    <p class="price">Rs<%#Eval("spprice") %></p>   
                                    </div>
                                </div>
                                   </ItemTemplate>
                                 </asp:Repeater>
                                </div>
                            </div>          
                            </div>
                    </div>
            
            <!--------------- Call to action /for tyres --------------->
            <div class="call-to-action call-to-action-1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 col-sm-6 hidden-xs">
                            <img class="call-to-action-1-img" src="../assets/img/cta/tyre.png" alt="...">
                        </div>
                        <div class="col-md-5 col-sm-6">
                            <h1>Tyres</h1>
                           <p class="display-inline">from<br/> only</p>
                            <h2 class="display-inline">Rs30000</h2><br/>
                           
                        </div>
                    </div>
                </div>
            </div>
            
            <!--------------- Module / Top Brands --------------->

        <asp:Repeater ID="d3" runat="server">
            <ItemTemplate>
            <div class="shop-module brand-module bg-module">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <div class="module-header">
                                <h3 class="module-title">Top Brand</h3>
                                <div class="module-sep"><div class="decorative-icons"></div><div class="decorative-bars"></div></div>
                                <p class="module-subtitle"><%#Eval("spodesc") %></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="brands display-flex">
                            <div class="col-md-2 col-sm-4">
                                <a class="brand" href="#"><img src="<%#Eval("img1") %>" alt="..."></a>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
                </ItemTemplate>
            </asp:Repeater>
            
            <!--------------- blog --------------->
              <div class="shop-module blog-module">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <div class="module-header">
                                <h3 class="module-title">Blog</h3>
                                <div class="module-sep"><div class="decorative-icons"></div><div class="decorative-bars"></div></div>
                                <p class="module-subtitle">Explore new cars and compare for the best experience.</p>
                               
                            </div>
                        </div>
                    </div>               
                    <div class="row">
                        <div class="articles-wrap">
                              <asp:Repeater ID="Repeater1" runat="server">
                          <ItemTemplate>
                            <article class="col-md-4">
                                <a class="post-thumb" href="#">
                                    <img src="../<%#Eval("img1") %>" alt="...">
                                  
                                </a>
                                <div class="post-body">
                                    <h4 class="post-title"><a href="#"><%#Eval("title") %></a></h4>
                                   
                                    <div class="post-content">
                                        <p><%#Eval("para1")%></p>
                                       <a href="Blogsingle.aspx?id=<%#Eval("id") %>" class="btn btn-readmore">Read more</a>
                                    </div>
                                </div>
                            </article>
                                   </ItemTemplate>
                        </asp:Repeater>
                            </div>
                        </div>
                    </div>        
              </div>
                    
        </div>
        
      
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
                            <a class="site-logo footer-logo" href="#"><img src="../assets/img/color-1/template/logo-white.png" alt="..."></a>
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


      
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/owl.carousel.min.js"></script>
        <script src="../assets/js/jquery-ui.min.js"></script>
        <script src="../assets/js/custom.js"></script>
    </body>

<!-- Mirrored from codechant.com/envato/html/carparts/home-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 13 Aug 2017 06:59:10 GMT -->
</html>
    