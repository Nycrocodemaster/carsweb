<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Blogsingle.aspx.cs" Inherits="Blognew" %>

<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>TITLE</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">


	<!-- Font -->

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">


	<!-- Stylesheets -->
    
	<link href="../Blog/common-css/bootstrap.css" rel="stylesheet">

	<link href="../Blog/common-css/ionicons.css" rel="stylesheet">


	<link href="../Blog/single-post-1/css/styles.css" rel="stylesheet">

	<link href="../Blog/single-post-1/css/responsive.css" rel="stylesheet">

</head>
<body >


	<div class="slider">
		<div class="display-table  center-text">
			<h1 class="title display-table-cell"><b>Cars Blog</b></h1>
		</div>
	</div><!-- slider -->

	<section class="post-area section">
		<div class="container">

			<div class="row">

				<div class="col-lg-8 col-md-12 no-right-padding">

					<div class="main-post">

						<div class="blog-post-inner">

							<div class="post-info">

								

							</div><!-- post-info -->
                            <asp:Repeater ID="d1" runat="server">
                          <ItemTemplate>
							<h3 class="title"><b><%#Eval("title") %></b></h3>

							<p class="para"><%#Eval("para1") %></p>

							<div class="post-image"><img src="../<%#Eval("img1") %>" alt="Blog Image"></div>

							<p class="para"><%#Eval("para2") %></p>

                              <div class="post-image"><img src="../<%#Eval("img2") %>" alt="Blog Image"></div>

                              <p class="para"><%#Eval("para3") %></p>
                       
                              <div class="post-image"><img src="../<%#Eval("img3") %>" alt="Blog Image"></div>
                            </ItemTemplate>
                              </asp:Repeater>

						
						</div><!-- blog-post-inner -->


						<div class="post-footer post-info">

							

						</div><!-- post-info -->


					</div><!-- main-post -->
				</div><!-- col-lg-8 col-md-12 -->
			</div><!-- row -->

		</div><!-- container -->
	</section><!-- post-area -->


	
	

	<!-- SCIPTS -->

	<script src="common-js/jquery-3.1.1.min.js"></script>

	<script src="common-js/tether.min.js"></script>

	<script src="common-js/bootstrap.js"></script>

	<script src="common-js/scripts.js"></script>

</body>
</html>
