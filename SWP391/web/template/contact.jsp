<%@page import="models.Product"%>
<%@page import="java.util.List"%>
<%@page import="DAO.ProductDAO"%>

<%-- 
    Document   : contact
    Created on : Sep 29, 2022, 10:35:28 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>SWP GAME STORE</title>
	<meta charset="UTF-8">
	<meta name="description" content="SWP GAME STORE">
	<meta name="keywords" content="warrior, game, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/animate.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<!-- logo -->
			<a class="site-logo" href="index.jsp">
				<img src="./img/logo2.png" alt="">
			</a>

			<!-- responsive -->
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<!-- site menu -->
			<nav class="main-menu">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="../home/homepage.do?op=list">Games</a></li>
					<li><a href="categories.jsp">Blog</a></li>
					<li><a href="community.jsp">Forums</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Latest news section -->
	<div class="latest-news-section">
		<div class="ln-title">Latest News</div>
		<div class="news-ticker">
			<div class="news-ticker-contant">
				<% ProductDAO dao = new ProductDAO();
                    List<Product> list = dao.latest();
                    for (Product op : list) {%>
                    <div class="nt-item"><span class="new">new</span><%=op.getProductName()%></div>
                    <%}%>    
			</div>
		</div>
	</div>
	<!-- Latest news section end -->


	<!-- Page info section -->
	<section class="page-info-section set-bg" data-setbg="img/page-top-bg/5.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2>Contact us</h2>
                                                <p>
                                                    The website is developed by a team of 5 people. This is the project of an online sales site, to help everyone with a hobby of the game can buy the latest products and a community of like-minded people.
                                                </p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page info section -->


	<!-- Page section -->
	<section class="page-section spad contact-page">
		<div class="container">
			<div class="map" id="map-canvas"></div>
			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="comment-title">Contact us</h4>
					<p>The website is developed by a team of 5 people. This is the project of an online sales site, to help everyone with a hobby of the game can buy the latest products and a community of like-minded people.</p>
					<div class="row">
						<div class="col-md-9">
							<ul class="contact-info-list">
								<li><div class="cf-left">Address</div><div class="cf-right">FPT University, Hi-Tech Park, District 9 Ho Chi Minh City 71216 Vietnam · ~3.6 km</div></li>
								<li><div class="cf-left">Phone</div><div class="cf-right">+84 776 190 244</div></li>
								<li><div class="cf-left">E-mail</div><div class="cf-right">CUONGHCSE150679@fpt.edu.vn</div></li>
							</ul>
						</div>
					</div>
					<div class="social-links">
						<a href="#"><i class="fa fa-pinterest"></i></a>
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-dribbble"></i></a>
						<a href="#"><i class="fa fa-behance"></i></a>
						<a href="#"><i class="fa fa-linkedin"></i></a>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="contact-form-warp" >
						<h4 class="comment-title">Leave a Reply</h4>
                                                <form class="comment-form" action="<c:url value="../contact" />" >
							<div class="row" >
								<div class=" col-md-6">
                                                                    <input type="text" name="user" placeholder="Name">
								</div>
								<div class="col-md-6">
									<input type="email" name="email" placeholder="Email">
								</div>
								<div class="col-lg-12">
									<input type="text" name="subject" placeholder="Subject">
                                                                        <textarea placeholder="Message" name="msg"></textarea>
									<button class="site-btn btn-sm">Send</button>
								</div>
							</div>
                                                    <h3>${nof}</h3>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page section end -->


      <!-- Footer top section -->
        <section class="footer-top-section">
            <div class="container">
                <div class="footer-top-bg">
                    <img src="img/footer-top-bg.png" alt="">
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="footer-logo text-white">
                            <img src="img/footer-logo.png" alt="">
                            <p>Our company's website is pleased to bring you games at extremely low prices. If you want to be part of our family. Join now.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="footer-widget mb-5 mb-md-0">
                            <h3 class="fw-title">Address</h3>
                            </br>
                            </br>
                            <div class="latest-blog">
                                <div class="lb-item">
                                    <div class="lb-thumb set-bg" data-setbg="img/latest-blog/1.jpg"></div>
                                    <div class="lb-content">
                                        <p>FPT University, Hi-Tech Park, District 9 Ho Chi Minh City 71216 Vietnam · ~3.6 km </p>
                                    </div>
                                </div>
                            </div>
                            </br>
                            </br>
                            <h3 class="fw-title">Phone / Mail</h3></br>
                            <div class="latest-blog">
                                <div class="lb-item">
                                    <div class="lb-thumb set-bg" data-setbg="img/latest-blog/1.jpg"></div>
                                    <div class="lb-content">

                                        <p>
                                            Mail: CUONGHCSE150679@fpt.edu.vn Phone: +84 776 190 244</p>
                                    </div></br></br>
                                </div>

                            </div>
                        </div>    
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="footer-widget">
                            <h4 class="fw-title">Our Team</h4>
                            <div class="top-comment">
                                <div class="tc-item">
                                    <div class="tc-thumb set-bg" data-setbg="1.jpg"></div>

                                    <div class="tc-content">
                                        <p><a href="#">Phan Thiên Ân</a></br> <span>on</span>  FPT University HCM</p>
                                        <div class="tc-date">09xx.xxx.xxx</div>
                                    </div>
                                </div>
                                <div class="tc-item">
                                    <div class="tc-thumb set-bg" data-setbg="2.jpg"></div>

                                    <div class="tc-content">
                                        <p><a href="#">Nguyễn Quang Minh</a></br> <span>on</span>  FPT University HCM</p>
                                        <div class="tc-date">09xx.xxx.xxx</div>
                                    </div>
                                </div>
                                <div class="tc-item">
                                    <div class="tc-thumb set-bg" data-setbg="3.jpg"></div>
                                    <div class="tc-content">
                                        <p><a href="#">Phạm Quang Quý</a></br> <span>on</span>  FPT University HCM</p>
                                        <div class="tc-date">09xx.xxx.xxx</div>
                                    </div>
                                </div>
                                <div class="tc-item">
                                    <div class="tc-thumb set-bg" data-setbg="4.jpg"></div>
                                    <div class="tc-content">
                                        <p><a href="#">Huỳn Chí Cường</a></br> <span>on</span>  FPT University HCM</p>
                                        <div class="tc-date">09xx.xxx.xxx</div>
                                    </div>
                                </div>
                                <div class="tc-item">
                                    <div class="tc-thumb set-bg" data-setbg="5.jpg"></div>
                                    <div class="tc-content">
                                        <p><a href="#">Võ Chí Cường</a></br> <span>on</span>  FPT University HCM</p>
                                        <div class="tc-date">09xx.xxx.xxx</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer top section end -->

        <!-- Footer section -->
        <footer class="footer-section">
            <div class="container">
                <ul class="footer-menu">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="review.jsp">Games</a></li>
                    <li><a href="categories.jsp">Blog</a></li>
                    <li><a href="community.jsp">Forums</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>

            </div>
      
        <script src='http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
        <!--Back to Top Button Start-www.thenaynhe.com--><script>
jQuery(document).ready(function() {
var offset = 220;
var duration = 500;
jQuery(window).scroll(function() {
if (jQuery(this).scrollTop() > offset) {
jQuery('.back-to-top').fadeIn(duration);} else {
jQuery('.back-to-top').fadeOut(duration);}});
jQuery('.back-to-top').click(function(event) {
event.preventDefault();
jQuery('html, body').animate({scrollTop: 0}, duration);
return false;})});</script>
<style>
div#page {
max-width: 900px;
margin-left: auto;
margin-right: auto;
padding: 20px;}
.back-to-top {
position: fixed;
bottom: 2em;
right: 0px;
text-decoration: none;
color: #000000;
background-color: rgba(235, 235, 235, 0.80);
font-size: 12px;
padding: 1em;
display: none;}
.back-to-top:hover {
text-decoration: none;}</style>
<a href="#" class="back-to-top"><img src="them-nut-len-dau-trang-back-to-top-button-63-4.jpg" alt="Back to Top" /></a>


	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.marquee.min.js"></script>
	<script src="js/main.js"></script>


	<!-- load for map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWTIlluowDL-X4HbYQt3aDw_oi2JP0Krc&sensor=false"></script>
	<script src="js/map.js"></script>

    </body>
</html>