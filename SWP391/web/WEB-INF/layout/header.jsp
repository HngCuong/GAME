<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="en-us" />
<link rel="stylesheet" href="../template/css/bootstrap.min.css"/>
<link rel="stylesheet" href="../template/css/font-awesome.min.css"/>
<link rel="stylesheet" href="../template/css/owl.carousel.css"/>
<link rel="stylesheet" href="../template/css/style.css"/>
<link rel="stylesheet" href="../template/css/animate.css"/>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>
<link rel="stylesheet" href="<c:url value="/css/reset_pwd.css" />" type="text/css">

<header class="header" style="padding-top:0px">
    <div class="header__top"  >
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i>CUONGHCSE150679@fpt.edu.vn</li>
                            <li>Support 24/24</li>
                            <li><a href="../template/index.jsp">Home</a></li>
                            <li><a href="../template/categories.jsp">Blog</a></li>
                            <li><a href="../template/community.jsp?index=1">forums</a></li>
                            <li><a href="../template/contact.jsp">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="header__top__right">
                        <!--Language--> 
                        <div class="header__top__right__language">
                            <!--for user-->
                            <c:if test="${user.userName == null}">
                                <a href="<c:url value="/user/login_form.do" />"><i style="margin-right: 8px" class="fa fa-user"></i>Login</a>
                            </c:if>
                            <c:if test="${user.role == 'USER'}">
                                <div><i style="margin-right: 8px" class="fa fa-user"></i>${user.userName}</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <!--<li><a href="#">My Profile</a></li>-->
                                    <li><a><button onclick="document.getElementById('reset').style.display = 'block'" style="font-size: 20px;
                                                   border: #222222;
                                                   color: white;
                                                   background-color: #222222;
                                                   padding: 0;
                                                   padding-right: 30px">Reset Pass</button></a></li>
                                    
                                    <li ><a href="<c:url value="../status_user.jsp" />"><button style="font-size: 20px;
                                                                                                border: #222222;
                                                                                                color: white;
                                                                                                background-color: #222222;
                                                                                                padding: 0;
                                                                                                padding-right: 30px">History Order</button></a></li>
                                    <li ><a href="<c:url value="/user/logout.do" />"><button style="font-size: 20px;
                                                                                             border: #222222;
                                                                                             color: white;
                                                                                             background-color: #222222;
                                                                                             padding: 0;
                                                                                             padding-right: 30px">Log out</button></a></li>
                                </ul>
                            </c:if>                                       
                            <%--<li><a href="<c:url value="/user/reset_form.do" />">Reset Password</a></li>--%>
                            <c:if test="${user.role == 'ADMIN'}">
                                <div><i style="margin-right: 8px" class="fa fa-user"></i>${user.userName}</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li ><a href="<c:url value="/admin/manage.do?op=listFull" />"><button style="font-size: 20px;
                                                                                                          border: #222222;
                                                                                                          color: white;
                                                                                                          background-color: #222222;
                                                                                                          padding: 0;
                                                                                                          padding-right: 30px">Management</button></a></li>
                                    <li ><a href="<c:url value="../index2.jsp" />"><button style="font-size: 20px;
                                                                                           border: #222222;
                                                                                           color: white;
                                                                                           background-color: #222222;
                                                                                           padding: 0;
                                                                                           padding-right: 30px">Contact</button></a></li>
                                  
                                    <li ><a href="<c:url value="../show.jsp" />"><button style="font-size: 20px;
                                                                                         border: #222222;
                                                                                         color: white;
                                                                                         background-color: #222222;
                                                                                         padding: 0;
                                                                                         padding-right: 30px">Account Staff</button></a></li>
                                    <li ><a href="<c:url value="../admin.jsp" />"><button style="font-size: 20px;
                                                                                          border: #222222;
                                                                                          color: white;
                                                                                          background-color: #222222;
                                                                                          padding: 0;
                                                                                          padding-right: 30px">New Account</button></a></li>
                                     <li ><a href="<c:url value="../status.jsp" />"><button style="font-size: 20px;
                                                                                          border: #222222;
                                                                                          color: white;
                                                                                          background-color: #222222;
                                                                                          padding: 0;
                                                                                          padding-right: 30px">Total Order</button></a></li>
                                    <li ><a href="<c:url value="/user/logout.do" />"><button style="font-size: 20px;
                                                                                             border: #222222;
                                                                                             color: white;
                                                                                             background-color: #222222;
                                                                                             padding: 0;
                                                                                             padding-right: 30px">Log out</button></a></li>
                                </ul>
                            </c:if>
                            <c:if test="${user.role == 'STAFF'}">
                                <div><i style="margin-right: 8px" class="fa fa-user"></i>${user.userName}</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <!--<li><a href="#">My Profile</a></li>-->

                                    <li ><a href="<c:url value="../create_blog.jsp" />"><button style="font-size: 20px;
                                                                                                border: #222222;
                                                                                                color: white;
                                                                                                background-color: #222222;
                                                                                                padding: 0;
                                                                                                padding-right: 30px">Post</button></a></li>

                                    <li ><a href="<c:url value="/user/logout.do" />"><button style="font-size: 20px;
                                                                                             border: #222222;
                                                                                             color: white;
                                                                                             background-color: #222222;
                                                                                             padding: 0;
                                                                                             padding-right: 30px">Log out</button></a></li>
                                </ul>
                            </c:if>              
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="<c:url value="/home/homepage.do?op=list" />"><img src="<c:url value="/img/logo1.png" />" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="<c:url value="/home/shop-grid.do" /> ">
                                <input type="text" placeholder="What do you need?" name="fname" value="${fname}">
                                <button type="submit" class="site-btn" name="op" value="search">SEARCH</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="<c:url value="/home/shoping-cart.do?op=view" />"><i class="fa fa-shopping-bag"></i></a></li>                       
                    </ul>
                    <div class="header__cart__price">item: <span><fmt:formatNumber value="${total}" type="currency" /></span></div>
                </div>
            </div>
            <c:if test="${cap_userName != null}">
                <div class="col-lg-12">
                    <p style="font-size: 35px; text-align: center; color: #000">Welcome back, ${cap_userName}</p>
                </div>
            </c:if>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>All Genre</span>
                    </div>
                    <ul>
                        <c:forEach var="genre" items="${listGenre}">
                            <li><a href="<c:url value="/home/shop-grid.do?op=listByGenre&genreID=${genre.genreID}" />">${genre.genreName}</a></li>
                            </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <nav class="header__menu">
                    <ul>
                        <li class="${action=='homepage'?'active':''}"><a href="<c:url value="/home/homepage.do?op=list"/>">Home</a></li>
                        <li class="${action=='shop-grid'?'active':''}"><a href="<c:url value="/home/shop-grid.do?op=listAll"/>">Shop</a></li>
                        <li class="${action=='shoping-cart'?'active':''}"><a href="<c:url value="/home/shoping-cart.do?op=view"/>">Shoping Cart</a></li>
                        <li class="${action=='checkout'?'active':''}"><a href="<c:url value="/home/checkout.do?op=view"/>">Check Out</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</section>
<div style="${not empty message1 ? "display: block;" : ""}" id="reset" class="modal">
    <form class="modal-content animate" action="<c:url value="/user/reset_form.do" />" method="post">
        <span onclick="document.getElementById('reset').style.display = 'none'" class="close" title="Close Modal">&times;</span>
        <div class="container-form">
            <h1>Reset Password</h1>
            <hr>
            <input type="hidden" name="id" value="${user.id}" />
            <input type="hidden" name="userName" value="${user.userName}" />
            <input type="hidden" name="role" value="${user.role}" />
            <label for="newPassword1"><b>Enter new password</b></label>
            <input type="password" placeholder="Enter new Password" name="newPassword1" value="${empty newPassword2 ? "" : newPassword}"  ${message1=="Reset Password Completed. Login again to see change." ? "disabled" : "required"} >
            <label for="newPassword2"><b>Confirm Password</b></label>
            <input type="password" placeholder="Confirm Password" name="newPassword2" ${message1=="Reset Password Completed. Login again to see change." ? "disabled" : "required"}>
            <p style="color: red; position: relative; text-align: center; margin: 0">${message1}</p>
            <button class="reset" type="submit" ${message1=="Reset Password Completed. Login again to see change." ? "disabled" : ""}>Reset</button>
        </div>
    </form>
</div>
<!--====== Javascripts & Jquery ======-->
<script src="../template/js/jquery-3.2.1.min.js"></script>
<script src="../template/js/bootstrap.min.js"></script>
<script src="../template/js/owl.carousel.min.js"></script>
<script src="../template/js/jquery.marquee.min.js"></script>
<script src="../template/js/main.js"></script>
<script>
            // Get the modal
            var modal = document.getElementById('reset');

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
</script>      
<!-- Header Section End -->

