<%-- 
    Document   : single-blog
    Created on : Sep 29, 2022, 10:36:12 AM
    Author     : DELL
--%>

<%@page import="models.Comment"%>
<%@page import="models.Blog"%>
<%@page import="DAO.UserDAO"%>
<%@page import="models.Product"%>
<%@page import="java.util.List"%>
<%@page import="DAO.ProductDAO"%>
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
        <!-- Latest news section end --
        <!-- Page section -->
        <section class="page-section single-blog-page spad">
            <div class="container">
                <div class="row">
                    <%String a = request.getParameter("img");
                        String b = request.getParameter("tittle");
                        String c = request.getParameter("big");
                        String d = request.getParameter("small");

                    %>
                    <div class="col-lg-8">
                        <div class="blog-thumb set-bg" data-setbg="<%=a%>">
                            <div class="cata new">new</div>
                            <div class="rgi-extra">
                                <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                            </div>
                        </div>
                        <div class="blog-content">
                            <h3><%=b%></h3>
                            <p><%=c%></p>
                        </div>
                
                        <div class="comment-form-warp">
                            <h4 class="comment-title">Leave Your Comment</h4>
                            <form class="comment-form" action="../Comment">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" placeholder="Name" name="name" required="">
                                    </div>
                                   
                                    <div class="col-lg-12">
                                        <input type="text" placeholder="Subject">
                                        <textarea placeholder="Message" name="msg" required=""></textarea>
                                        <button class="site-btn btn-sm">Send</button>
                                        <input type="hidden" name="tittle" value="<%=b%>">
                                        <input type="hidden" name="img" value="<%=a%>">
                                        <input type="hidden" name="big" value="<%=c%>">
                                        
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- sidebar -->
                    <div class="col-lg-4 col-md-7 sidebar pt-5 pt-lg-0">
                        <!-- widget -->
                        <div class="widget-item">
                            <form class="search-widget">
                                <input type="text" placeholder="Search">
                                <button><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                        <!-- widget -->
                    <div class="widget-item">
                            <h4 class="widget-title">Latest Posts</h4>
                            <div class="latest-blog">
                                  <%
                         UserDAO tool =new UserDAO();  
                   List<Blog> blog1 = tool.showBlogdown();
                    for (Blog o : blog1) {
                %> 
                                <div class="lb-item">
                                 <a href="single-blog.jsp?img=<%=o.getImage()%>&tittle=<%=o.getTittle()%>&big=<%=o.getBig()%>&small=<%=o.getSmall()%>" class="lb-author">     <div class="lb-thumb set-bg" data-setbg="<%=o.getImage()%>"></div></a>
                                    <div class="lb-content">
                                        <%=o.getTittle()%>
                                        <p><%=o.getSmall()%></p>
                                        <p>    By Admin</p>
                                    </div>
                                </div>
                              <%}  %> 
                            </div>
                        </div>
                        <!-- widget -->
                        <div class="widget-item">
                            <h4 class="widget-title">Top Comments</h4>
                            <div class="top-comment">
                                   <%
                   List<Comment> blog2 = tool.showComment();
                    for (Comment p : blog2) {
                        if(p.getTittle().equals(b)){
                %> 
                                <div class="tc-item">
                                    <div class="tc-thumb set-bg" data-setbg="img/authors/1.jpg"></div>
                                    <div class="tc-content">
                                        <p><a href=""> <%=p.getName()%> </a> <span>on</span>  <%=p.getMsg()%></p>
                                        <div class="tc-date"><%=p.getDate()%></div>
                                    </div>
                                </div>                              
                                <%}}  %> 
                            </div>
                        </div>
                    </div>
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