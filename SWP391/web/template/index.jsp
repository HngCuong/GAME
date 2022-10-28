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
			<div class="user-panel dropdown">
				<a href="#">Login</a>  /  <a href="#">Register</a>
                                <div class="dropdown-content">
                        <a href="#">Login</a>  /  <a href="#">Register</a>
                        </div>
			</div>
                        
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


    <!-- Hero section -->
    <section class="hero-section">
        <div class="hero-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="img/slider-1.jpg">
                <div class="hs-text">
                    <div class="container">
                        <h2>The Best <span>Games</span> Out There</h2>
                        <p>Team 5 is an online distribution platform <br> Digital rights management, multiplayer video games, and internet-based social communication services developed by FPT students. <br>Team 5 provides users with information about new games coming to the market and community features such as being able to leave comments under the posts of the page. </p>
                        <a href="#" class="site-btn">Read More</a>
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
                for(Product op : list){ %>
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
                 <% 
                for(Product op : list){ %>
                
                        <div class="col-lg-6 col-md-6">
                    <div class="recent-game-item">
                        <div class="rgi-thumb set-bg" data-setbg=<%=op.getLinkImg1()%> >
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


    <!-- Tournaments section -->
    <section class="tournaments-section spad">
        <div class="container">
            <div class="tournament-title">Tournaments</div>
            <div class="row">
                <div class="col-md-6">
                    <div class="tournament-item mb-4 mb-lg-0">
                        <div class="ti-notic">Premium Tournament</div>
                        <div class="ti-content">
                            <div class="ti-thumb set-bg" data-setbg="img/tournament/1.jpg"></div>
                            <div class="ti-text">
                                <h4>World Of WarCraft</h4>
                                <ul>
                                    <li><span>Tournament Beggins:</span> June 20, 2018</li>
                                    <li><span>Tounament Ends:</span> July 01, 2018</li>
                                    <li><span>Participants:</span> 10 teams</li>
                                    <li><span>Tournament Author:</span> Admin</li>
                                </ul>
                                <p><span>Prizes:</span> 1st place $2000, 2nd place: $1000, 3rd place: $500</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="tournament-item">
                        <div class="ti-notic">Premium Tournament</div>
                        <div class="ti-content">
                            <div class="ti-thumb set-bg" data-setbg="img/tournament/2.jpg"></div>
                            <div class="ti-text">
                                <h4>DOOM</h4>
                                <ul>
                                    <li><span>Tournament Beggins:</span> June 20, 2018</li>
                                    <li><span>Tounament Ends:</span> July 01, 2018</li>
                                    <li><span>Participants:</span> 10 teams</li>
                                    <li><span>Tournament Author:</span> Admin</li>
                                </ul>
                                <p><span>Prizes:</span> 1st place $2000, 2nd place: $1000, 3rd place: $500</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Tournaments section bg -->


    <!-- Review section -->
    <section class="review-section spad set-bg" data-setbg="">
        <div class="container">
            <div class="section-title">
                <div class="cata new">new</div>
                <h2>Top Rating</h2>
            </div>
            <div class="row">
                 <%
              
                List<Product> listR = dao.topRating();
                for(Product op : listR){ %>
                
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
                        <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p>
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
            <p class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
        </div>
    </footer>
    <!-- Footer section end -->


    <!--====== Javascripts & Jquery ======-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.marquee.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>