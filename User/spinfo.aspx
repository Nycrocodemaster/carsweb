<%@ Page Language="C#" AutoEventWireup="true" CodeFile="spinfo.aspx.cs" Inherits="spinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CarsInfo</title>
     <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/price-range.css" rel="stylesheet" />
    <link href="../assets/css/animate.css" rel="stylesheet" />
   
     <!-- Custom CSS -->
        <link rel="stylesheet" href="../assets/css/style.css"/>
        <link rel="stylesheet" href="../assets/css/responsive.css" />
    <style>

/*----------------------------------------
Product Basic
----------------------------------------*/
.product-listing-wrap {
    margin-bottom: 30px;
}
.products-wrap {
    margin-bottom: -30px;
    float: left;
    width: 100%;
}
.product-listing-wrap .products-wrap {
    padding-top: 15px;
}
.product{
    margin-bottom: 30px;
}
.product-thumb{
    position: relative;
    overflow: hidden;
    display: inline-block;
    width: 100%;
    border: 1px solid #ededed;
}
.thumb-link{
    position: relative;
    display: block;
    z-index: 0;
    width: 100%;
}
.thumb-link img{
    width: 100%;
}
.thumb-link .front-img{
    position: relative;
    z-index: 1;
}
.thumb-link .hover-img{
    position: absolute;
    left: 0;
    top: 0;
    opacity: 0;
    visibility: hidden;
    transition: all 0.4s;
    z-index: 2;
}
.product-thumb:hover .thumb-link .hover-img{
    opacity: 1;
    visibility: visible;
}
.product-thumb:before {
    content: "";
    position: absolute;
    background-color: rgba(0, 0, 0, 0.3);
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    z-index: 1;
    visibility: hidden;
    opacity: 0;
}
.product-thumb:hover:before {
    visibility: visible;
    opacity: 1;
}
.attr-group{
    position: absolute;
    top: 10px;
    right: 10px;
    text-transform: uppercase;
    min-width: 50px;
    z-index: 2;
}
.attr-group span{
    color: #ffffff;
    display: block;
    font-size: 1.3rem;
    height: 22px;
    line-height: 22px;
    text-align: center;
    padding: 0 8px;
    margin-bottom: 1px;
}
.attr-group .new{
    background-color: #212121;
}
.attr-group .sale{
    background-color: #f44337;
}
.product-btn{
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    font-size: 0;
    text-align: center;
    z-index: 2;
}
.product-btn a{
    position: relative;
    display: inline-block;
    width: 30px;
    height: 30px;
    color: #ffffff;
    line-height: 30px;
    font-size: 1.3rem;
    background-color: #212121;
    text-align: center;
    margin: 0 3px;
    right: -100%;
}
.product-thumb:hover .product-btn a{
    right: 0;
}
.product-btn a:hover{
    background-color: #f44337;
}
.tooltip {
    z-index: 12;
    font-size: 1.3rem;
    line-height: 100%;
    padding: 7px 15px;
    white-space: nowrap;
    top: -100%;
    opacity: 0;
    visibility: hidden;
    background-color: #f44337;
    margin-top: -10px;
    left: 50%;
    transform: translateX(-50%);
    transition: all 0.3s;
}
.tooltip:after {
    content: "";
    position: absolute;
    bottom: -4px;
    width: 0;
    height: 0;
    border-top: 4px solid #f44337;
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    left: 50%;
    margin-left: -2px;
}
.product-btn a:hover .tooltip{
    margin-top: -2px;
    opacity: 1;
    visibility: visible;
}
.product-btn a:nth-child(1){
    transition: all 0.3s;
}
.product-btn a:nth-child(2){
    transition: right 0.4s, background 0.3s;
}
.product-btn a:nth-child(3){
    transition: right 0.5s, background 0.3s;
}
.product-btn a:nth-child(4){
    transition: right 0.6s, background 0.3s;
}
.to-cart {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50% );
    color: #ffffff;
    background-color: #212121;
    padding: 7px 16px;
    opacity: 0;
    visibility: hidden;
    z-index: 3;
    white-space: nowrap;
}
.to-cart i{
    margin-right: 10px;
}
.product-thumb:hover .to-cart{
    opacity: 1;
    visibility: visible;
}
.to-cart:hover{
    background-color: #f44337;
    color: #ffffff;
}
.product-info {
    text-align: center;
    margin: -5px 0 0 0;
    border: 1px solid #ededed;
    border-top: none;
}
.product-name{
    text-transform: uppercase;
    margin: 0 10px 8px 10px;
    font-weight: 400;
    font-size: 1.2rem;
    padding-top: 15px;
}
.product-name a{
    color: #212121;
    display: inline-block;
}
.product-name a:hover{
    color: #f44337;
}
.rating{
    margin-bottom: 4px;
}
.star:before {
    content: "\f006";
    font-family: "FontAwesome";
    width: 11px;
    font-size: 11px;
    cursor: pointer;
    color: #ffcc33;
}
.star_full:before{
    content: "\f005";
}
.star_half:before{
    content: "\f123";
}
.price{
    font-size: 1.4rem;
    color: #f44337;
    white-space: nowrap;
    line-height: 1.3;
    font-weight: 700;
}
.price span{
    margin: 0 10px;
}
.regular-price{
    text-decoration: line-through;
    color: #666666;
}
.reduction{
    background-color: #f44337;
    color: #ffffff;
    margin: 0 10px;
    padding: 0 5px;
}


/*----------------------------------------
New Arrival
----------------------------------------*/
.featured-product .product-name{
    font-size: 1.8rem;
    margin-bottom: 20px;
    padding-top: 44px;
}
.featured-product .rating {
    margin-bottom: 20px;
}
.featured-product .star:before {
    width: 16px;
    font-size: 16px;
}
.featured-product .price{
    font-size: 1.8rem;
    margin-bottom: 25px;
}
/*----------------------------------------
Sidebar
----------------------------------------*/
.category-products {
  border: 1px solid #F7F7F0;
  margin-bottom: 35px;
  padding-bottom: 20px;
  padding-top: 15px;
}
.left-sidebar h2, .brands_products h2 {
  color: #FE980F;
  font-family: 'Roboto', sans-serif;
  font-size: 18px;
  font-weight: 700;
  margin: 0 auto 30px;
  text-align: center;
  text-transform: uppercase;
  position: relative;
  z-index:3;
}

.left-sidebar h2:after, h2.title:after{
	content: " ";
	position: absolute;
	border: 1px solid #f5f5f5;
	bottom:8px;
	left: 0;


	width: 100%;
	height: 0;
	z-index: -2;
}

.left-sidebar h2:before{
	content: " ";
	position: absolute;
	background: #fff;
	bottom: -6px;
	width: 130px;
	height: 30px;
	z-index: -1;
	left: 50%;
	margin-left: -65px;
}

h2.title:before{
	content: " ";
	position: absolute;
	background: #fff;
	bottom: -6px;
	width: 220px;
	height: 30px;
	z-index: -1;
	left: 50%;
	margin-left: -110px;
}

.category-products .panel {
	background-color: #FFFFFF;
	border: 0px;
	border-radius: 0px;
	box-shadow:none;
	margin-bottom: 0px;
}

.category-products .panel-default .panel-heading {
  background-color: #FFFFFF;
  border: 0 none;
  color: #FFFFFF;
  padding: 5px 20px;
}

.category-products .panel-default .panel-heading .panel-title a {
  color: #696763;
  font-family: 'Roboto', sans-serif;
  font-size: 14px;
  text-decoration: none;
  text-transform: uppercase;
}

.panel-group .panel-heading + .panel-collapse .panel-body {
  border-top: 0 none;
}

.category-products .badge {
  background:none;
  border-radius: 10px;
  color: #696763;
  display: inline-block;
  font-size: 12px;
  font-weight: bold;
  line-height: 1;
  min-width: 10px;
  padding: 3px 7px;
  text-align: center;
  vertical-align: baseline;
  white-space: nowrap;
}

.panel-body ul{
  padding-left: 20px;
}


.panel-body ul li a {
  color: #696763;
  font-family: 'Roboto', sans-serif;
  font-size: 12px;
  text-transform: uppercase;
}

.brands-name {
  border: 1px solid #F7F7F0;
  padding-bottom: 20px;
  padding-top: 15px;
}


.brands-name .nav-stacked li a {
  background-color: #FFFFFF;
  color: #696763;
  font-family: 'Roboto', sans-serif;
  font-size: 14px;
  padding: 5px 25px;
  text-decoration: none;
  text-transform: uppercase;
}

.brands-name .nav-stacked li a:hover{
  background-color: #fff;
  color: #696763;
}

.shipping {
  background-color: #F2F2F2;
  margin-top: 40px;
  overflow: hidden;
  padding-top: 20px;
  position: relative;
}


.price-range{
  margin-top:30px;
}
    .vee {
            display:none;
        }
        .preloader {
            margin:100px;
            position:absolute;
            top:100%;
            left:30%;
            margin-right:-50%;
            transform:translate(30%,20%);
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
                                                Hi&nbsp<asp:Label ID="Label1" runat="server"></asp:Label>
												
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
											<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
											<li> <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-default" Text="Log out"  OnClick="btnLogout_Click" /> </li>
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
     
           
    <br>
    <br>
        <div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
                        <div class="brands_products">
                            <!--brands-->
							<h2>Spare Part Type</h2>
							<div class="brands-name">
								 Car's Spare Parts are available explore for varoius and desired products 
                                Happy shopping and enjoy!!!!!
							</div>                       
						</div>
                        <br/>                   					
					</div>
				</div>


        <div class="col-sm-9">
					
                    <div class="shop-module feature-product-module new-module">
                <div class="container">

                    <div class="row">
                        <div class="products-wrap">  

                  <asp:Repeater ID="d1" runat="server">
                          <ItemTemplate>
                            <div class="product col-md-3 col-sm-6">
                                <div class="product-thumb">
                                    <a href="#" class="thumb-link">
                                        <img class="hover-img" src="../<%#Eval("spimg") %>" alt="Product Hover">
                                        <img class="front-img" src="../<%#Eval("spimg2") %>" alt="Product Front">        
                                    </a>               
                                    <div class="product-btn">
                                        <a class="to-compare" href="#"><i class="fa fa-plus"></i><span class="tooltip">Add To Compare</span></a>
          
                                    </div>
                                </div>
                                <div class="product-info">
                                    <h5 class="product-name"><a href="spproduct.aspx?id=<%#Eval("id") %>"><%#Eval("spname") %></a></h5>
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
                                        <span class="discount-price"><%#Eval("spprice") %></span>     
                                    </p>
                                </div>
                            </div>
                              </ItemTemplate>
                              </asp:Repeater>
                            </div>
                        </div>
                    </div>
                 </div>
            </div>
        </div>
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

        <script src="../assets/js/jquery-3.1.1.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery-3.1.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>