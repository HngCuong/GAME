<%-- 
    Document   : single-blog
    Created on : Sep 29, 2022, 10:36:12 AM
    Author     : DELL
--%>

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
                        <div class="comment-warp">
                            <h4 class="comment-title">Top Coments</h4>
                            <ul class="comment-list">
                                <li>
                                    <div class="comment">
                                        <div class="comment-avator set-bg" data-setbg="img/authors/1.jpg"></div>
                                        <div class="comment-content">
                                            <h5>James Smith <span>June 21, 2018</span></h5>
                                            <p>Donec venenatis at eros sit amet aliquam. Donec vel orci efficitur, dictum nisl vitae, scelerisque nibh. Curabitur eget ipsum pulvinar nunc gravida interdum. </p>
                                            <a href="" class="reply">Reply</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="comment">
                                        <div class="comment-avator set-bg" data-setbg="img/authors/2.jpg"></div>
                                        <div class="comment-content">
                                            <h5>James Smith <span>June 21, 2018</span></h5>
                                            <p>Donec venenatis at eros sit amet aliquam. Donec vel orci efficitur, dictum nisl vitae, scelerisque nibh. Curabitur eget ipsum pulvinar nunc gravida interdum. </p>
                                            <a href="" class="reply">Reply</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="comment-form-warp">
                            <h4 class="comment-title">Leave Your Comment</h4>
                            <form class="comment-form">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" placeholder="Name">
                                    </div>
                                    <div class="col-md-6">
                                        <input type="email" placeholder="Email">
                                    </div>
                                    <div class="col-lg-12">
                                        <input type="text" placeholder="Subject">
                                        <textarea placeholder="Message"></textarea>
                                        <button class="site-btn btn-sm">Send</button>
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
                                <div class="lb-item">
                                    <div class="lb-thumb set-bg" data-setbg="img/latest-blog/1.jpg"></div>
                                    <div class="lb-content">
                                        <div class="lb-date">June 21, 2018</div>
                                        <p>Ipsum dolor sit amet, consectetur adipisc ing consecips</p>
                                        <a href="#" class="lb-author">By Admin</a>
                                    </div>
                                </div>
                                <div class="lb-item">
                                    <div class="lb-thumb set-bg" data-setbg="img/latest-blog/2.jpg"></div>
                                    <div class="lb-content">
                                        <div class="lb-date">June 21, 2018</div>
                                        <p>Ipsum dolor sit amet, consectetur adipisc ing consecips</p>
                                        <a href="#" class="lb-author">By Admin</a>
                                    </div>
                                </div>
                                <div class="lb-item">
                                    <div class="lb-thumb set-bg" data-setbg="img/latest-blog/3.jpg"></div>
                                    <div class="lb-content">
                                        <div class="lb-date">June 21, 2018</div>
                                        <p>Ipsum dolor sit amet, consectetur adipisc ing consecips</p>
                                        <a href="#" class="lb-author">By Admin</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- widget -->
                        <div class="widget-item">
                            <h4 class="widget-title">Top Comments</h4>
                            <div class="top-comment">
                                <div class="tc-item">
                                    <div class="tc-thumb set-bg" data-setbg="img/authors/1.jpg"></div>
                                    <div class="tc-content">
                                        <p><a href="#">James Smith</a> <span>on</span> Lorem consec ipsum dolor sit amet, co</p>
                                        <div class="tc-date">June 21, 2018</div>
                                    </div>
                                </div>
                                <div class="tc-item">
                                    <div class="tc-thumb set-bg" data-setbg="img/authors/2.jpg"></div>
                                    <div class="tc-content">
                                        <p><a href="#">Michael James</a> <span>on</span>Cras sit amet sapien aliquam</p>
                                        <div class="tc-date">June 21, 2018</div>
                                    </div>
                                </div>
                                <div class="tc-item">
                                    <div class="tc-thumb set-bg" data-setbg="img/authors/3.jpg"></div>
                                    <div class="tc-content">
                                        <p><a href="#">Justin More</a> <span>on</span> Lorem ipsum dolor consecsit amet, co</p>
                                        <div class="tc-date">June 21, 2018</div>
                                    </div>
                                </div>
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
                    <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="footer-widget mb-5 mb-md-0">
                    <h4 class="fw-title">Latest Posts</h4>
                    <div class="latest-blog">
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="img/latest-blog/1.jpg"></div>
                            <div class="lb-content">
                                <div class="lb-date">June 21, 2018</div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum </p>
                                <a href="#" class="lb-author">By Admin</a>
                            </div>
                        </div>
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="img/latest-blog/2.jpg"></div>
                            <div class="lb-content">
                                <div class="lb-date">June 21, 2018</div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum </p>
                                <a href="#" class="lb-author">By Admin</a>
                            </div>
                        </div>
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="img/latest-blog/3.jpg"></div>
                            <div class="lb-content">
                                <div class="lb-date">June 21, 2018</div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum </p>
                                <a href="#" class="lb-author">By Admin</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="footer-widget">
                    <h4 class="fw-title">Top Comments</h4>
                    <div class="top-comment">
                        <div class="tc-item">
                            <div class="tc-thumb set-bg" data-setbg="img/authors/1.jpg"></div>
                            <div class="tc-content">
                                <p><a href="#">James Smith</a> <span>on</span>  Lorem ipsum dolor sit amet, co</p>
                                <div class="tc-date">June 21, 2018</div>
                            </div>
                        </div>
                        <div class="tc-item">
                            <div class="tc-thumb set-bg" data-setbg="img/authors/2.jpg"></div>
                            <div class="tc-content">
                                <p><a href="#">James Smith</a> <span>on</span>  Lorem ipsum dolor sit amet, co</p>
                                <div class="tc-date">June 21, 2018</div>
                            </div>
                        </div>
                        <div class="tc-item">
                            <div class="tc-thumb set-bg" data-setbg="img/authors/3.jpg"></div>
                            <div class="tc-content">
                                <p><a href="#">James Smith</a> <span>on</span>  Lorem ipsum dolor sit amet, co</p>
                                <div class="tc-date">June 21, 2018</div>
                            </div>
                        </div>
                        <div class="tc-item">
                            <div class="tc-thumb set-bg" data-setbg="img/authors/4.jpg"></div>
                            <div class="tc-content">
                                <p><a href="#">James Smith</a> <span>on</span>  Lorem ipsum dolor sit amet, co</p>
                                <div class="tc-date">June 21, 2018</div>
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