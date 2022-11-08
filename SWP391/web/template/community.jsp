<%-- 
    Document   : community.jsp
    Created on : Nov 7, 2022, 4:39:18 PM
    Author     : DELL
--%>


<%@page import="models.Forum"%>
<%@page import="DAO.UserDAO"%>
<%@page import="java.util.List"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="models.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
	    <title>Game Warrior Template</title>
         <title>Game Warrior Template</title>
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

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
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
					<li><a href="community.jsp?index=1">Forums</a></li>
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
	<section class="page-info-section set-bg" data-setbg="img/page-top-bg/4.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2>Our Community</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Page info section -->


	<!-- Page section -->
	<section class="page-section community-page set-bg" data-setbg="img/community-bg.jpg">
		<div class="community-warp spad">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h3 class="community-top-title">All Member</h3>
					</div>
					<div class="col-md-6 text-lg-right">
						<form class="community-filter">
							<label for="fdf5">Show</label>
							<select id="fdf5">
								<option value="#">Everything</option>
								<option value="#">Everything</option>
							</select>
						</form>
					</div>
                                       <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                            Post on Forum
                                                        </button>       

                                                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">

                                                            <div class="modal-dialog">

                                                                <div class="modal-content">
                                                                    <form action="../Forum">
                                                                        <div class="modal-header">
                                                                            <h1 class="modal-title fs-5" id="exampleModalLabel">Reset Password</h1>
                                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                            
                                                                        </div>
                                                                        <div class="modal-body">
                                                                            <p>Enter Name</p>
                                                                            <input type = "text" name ="name">
                                                                            <p>Enter Message</p>
                                                                            <input type = "text" name ="msg">
                                                                            <p>Enter Image</p>
                                                                            <input type = "file" name ="img">
                                                                        </div>
                                                                        <div class="modal-footer">
                                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                                             
                                                                            <button type="submit" class="btn btn-primary">Save changes</button>
                                                                           

                                                                        </div>
                                                                    </form>
                                                                </div>

                                                            </div>


                                                        </div>
				</div>
				<ul class="community-post-list">
					<%        String a = request.getParameter("index");
                                                  int b = Integer.parseInt(a);                     
                                                UserDAO util = new UserDAO();
                                                List<Forum> list1 = util.showForum();
                                                 List<Forum> blog = util.showForumPaging(b);
                                                    for (Forum o : blog) {

                                                %> 
                                                <li>
						<div class="community-post">
							<div class="author-avator set-bg" data-setbg="img/authors/1.jpg"></div>
							<div class="post-content">
								<h5><%=o.getName()%><span>posted an update</span></h5>
								<div class="post-date"><%=o.getDate()%></div>
								<p><%=o.getMsg()%></p>
                                                                <%if(o.getImg().isEmpty()){}else{ %>
								<div class="attachment-file">
									<img src="<%=o.getImg()%>" alt="">
								</div>
							<%}%>
                                                        </div>
						</div>
					</li>
                                                <% 
                                                    }%>		
				</ul>
                                     <% int size = 0;
                            if (list1.size() % 4 != 0) {
                                size = (list1.size() / 4) + 1;
                            } else {
                                size = list1.size() / 4;
                            }

                        %> 

                        <div class="site-pagination">
                            <!-- <span class="active">01.</span>-->
                            <%for (int i = 1; i <= size; i++) {
                                   if (i == b) {%> 
                            <a href="community.jsp?index=<%=i%>"> <span class="active"> <%=i%> </span> </a> <% continue;
                               }%>

                            <a href="community.jsp?index=<%=i%>"> <span class=""> <%=i%> </span> </a> 


                            <% }%>
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
                jQuery(document).ready(function () {
                    var offset = 220;
                    var duration = 500;
                    jQuery(window).scroll(function () {
                        if (jQuery(this).scrollTop() > offset) {
                            jQuery('.back-to-top').fadeIn(duration);
                        } else {
                            jQuery('.back-to-top').fadeOut(duration);
                        }
                    });
                    jQuery('.back-to-top').click(function (event) {
                        event.preventDefault();
                        jQuery('html, body').animate({scrollTop: 0}, duration);
                        return false;
                    })
                });</script>
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
    </body>
</html>