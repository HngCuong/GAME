<%-- 
    Document   : index
    Created on : Sep 29, 2022, 9:54:05 AM
    Author     : DELL
--%>

<%@page import="DAO.ProductDAO"%>
<%@page import="java.util.List"%>
<%@page import="models.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>SWP GAME STORE</title>
        <meta charset="UTF-8">
        <meta name="description" content="SWP GAME STORE">
        <meta name="keywords" content="warrior, game, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="img/favicon.ico" rel="shortcut icon"/>
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" href="css/owl.carousel.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/animate.css"/>
    </head>
    
    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>
        <style>
            .dropdown {
                position: ;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: static;
                background-color: none;
                min-width: 160px;

                padding: 12px 16px
                    z-index: 1;
                min-height: 150x;
            }

            .dropdown:hover .dropdown-content {
                display: block;

            }
        </style>
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
                        <li><a href="community.jsp?index=1">Forums</a></li>
                        <li><a href="contact.jsp">Contact</a></li>S
                    </ul>
                </nav>
            </div>
        </header>
        <!-- Header section end -->

        <!-- Hero section -->
        <section class="hero-section">
            <div class="hero-slider owl-carousel">
                <div class="hs-item set-bg" data-setbg="img/slider-1.jpg">
                    <div class="hs-text">
                        <div class="container">
                            <h2>The Best <span>Games</span> Out There</h2>
                            <p>Team 5 is an online distribution platform <br> Digital rights management, multiplayer video games, and internet-based social communication services developed by FPT students. <br>Team 5 provides users with information about new games coming to the market and community features such as being able to leave comments under the posts of the page. </p>
                            <a href="contact.jsp" class="site-btn">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="hs-item set-bg" data-setbg="img/slider-2.jpg">
                    <div class="hs-text">
                        <div class="container">
                            <h2>The Best <span>Games</span> Out There</h2>
                            <p>Team 5 is an online distribution platform <br> Digital rights management, multiplayer video games, and internet-based social communication services developed by FPT students. <br>Team 5 provides users with information about new games coming to the market and community features such as being able to leave comments under the posts of the page. </p>
                            <a href="#" class="site-btn">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero section end -->

        <!-- Latest news section -->
        <div class="latest-news-section">
            <div class="ln-title">Latest Games</div>
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

        <!-- Recent game section  -->
        <section class="recent-game-section spad set-bg" data-setbg="img/recent-game-bg.png">
            <div class="container">
                <div class="section-title">
                    <div class="cata new">new</div>
                    <h2>Recent Games</h2>
                </div>
                <div class="row">
                    <script type="text/javascript">

                        function Redirect() {
                            window.location = "../home/homepage.do?op=list";
                        }
                          function Redirect1() {
                            window.location = "http://localhost:8080/demoSWP/index.jsp";
                        }

                    </script>
                    <%
                     for (Product op : list) {%>

                    <div class="col-lg-6 col-md-6" onclick="Redirect();">
                        <div class="recent-game-item">
                            <div class="rgi-thumb set-bg" data-setbg="<%=op.getLinkImg1()%>" >
                                <div class="cata new">new</div>
                            </div>
                            <div class="rgi-content">
                                <h5><%=op.getProductName()%></h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>

                                <div class="rgi-extra">
                                    <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                    <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                </div>
                            </div>
                        </div>
                        </br>

                    </div>
                    <%}%> 
                </div>
            </div>
        </section>
        <!-- Recent game section end -->
        <div onclick="Redirect1();">
                <image src="pic1.png" >
                            </div>
                            
                
        <!-- Review section -->
        <section class="review-section spad set-bg" data-setbg="">
            <div class="container" onclick="Redirect();">
                <div class="section-title">
                    <div class="cata new">new</div>
                    <h2>Top Rating</h2>
                </div>
                <div class="row">
                    <%

                        List<Product> listR = dao.topRating();
                     for (Product op : listR) {%>

                    <div class="col-lg-6 col-md-6">
                        <div class="review-item">
                            <div class="review-cover set-bg" data-setbg=<%=op.getLinkImg1()%>>
                                <div class="score yellow"><%=op.getRating()%>  </div>
                            </div>
                            <div class="review-text">
                                <h5><%=op.getProductName()%></h5>
                                <p><%=op.getDesc()%></p>
                            </div>
                        </div>
                        </br></br>
                    </div>
                    <%}%> 
                </div>
            </div>
        </section>
        <!-- Review section end -->

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

<!--Back to Top Button End-www.thenaynhe.com-->
        <!-- Footer section end -->
  </footer>
        <!--====== Javascripts & Jquery ======-->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.marquee.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>