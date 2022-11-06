<!DOCTYPE html>
<!dashboard>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="models.ContactDTO"%>
<%@page import="java.util.List"%>
<%@page import="DAO.UserDAO"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="styles.css">
        
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.29.2/dist/sweetalert2.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@7.29.2/dist/sweetalert2.min.css">
        <title>Admin panel</title>
    </head>

    <body>
        <div class="container">
            <div class="row flex-lg-nowrap" >
                <div class="col-12 col-lg-auto mb-3" style="width: 200px;padding-top:34px">
                    <div class="card p-3" style="">
                        <div class="e-navlist e-navlist--active-bg">
                            <ul class="nav">
                               <li class="nav-item"><a class="nav-link px-2  " href="#"><i class="fa fa-fw fa-bar-chart mr-1"></i><span>Manage Product</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="http://localhost:8080/GameStore/home/homepage.do?op=list" />"><i class="fa fa-shopping-cart mr-1"></i><span>Back to Shoping Site</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="index.jsp" />"><i class="fa fa-tachometert mr-1"></i><span>Dashboard</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="index2.jsp" />"><i class="fa fa-tachometert mr-1"></i><span>Contact</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="status.jsp" />"><i class="fa fa-tachometert mr-1"></i><span>Total Order</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="admin.jsp" />"><i class="fa fa-tachometert mr-1"></i><span>Create Account</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="show.jsp" />"><i class="fa fa-tachometert mr-1"></i><span>ShowAccount</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="http://localhost:8080/GameStore/user/logout.do" />"><i class="fa fa-sign-out mr-1"></i><span>Log Out</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <style>
                        link-muted { color: #aaa; } .link-muted:hover { color: #1266f1; }
                    </style>

<section style="background-color: #e7effd;">
            <div class="container my-5 py-5 text-dark">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-11 col-lg-9 col-xl-7">


                    </div>
                </div>
                <form action="SearchContact">
                                    <div style="text-align: center">
                        <input type="text" name="search"> <button>Search</button>
                    </div>
                </form></br>
             
                <%
                    UserDAO dao = new UserDAO();
                    String name = request.getParameter("search");
                    List<ContactDTO> list = dao.searchContact(name);
                    for (ContactDTO op : list) {


                %> 
                <div class="d-flex flex-start">
                
                    <div class="card w-100">
                        <div class="card-body p-4">
                            <div class="">
                                <h5> <%= op.getUser()%></h5>
                                 <p style="color:red">Not Check</p>
                                <p>
                                              Email: <%= op.getEmail()%></p>
                                            <p> Tittle: <%= op.getSubject()%></p>
                                             <p> Problem: <%= op.getMsg()%> 
                                            </p>
                               
                                <div class="d-flex justify-content-between align-items-center">
                                    
                                    <form action="Reply"">
                                        <textarea placeholder="Message" name="reply" style="width: 800px;"></textarea>
                                        <input type="hidden" name="email" value=" <%= op.getEmail()%>"
                                        <i class=" fa-reply me-1"></i> <button>Reply</button>
                                    </form>
                                                                                </br>

                                    
                                      <a href="DeleteReply?name=<%= op.getUser()%>&msg=<%= op.getMsg()%> " class="link-muted"><i class="fas fa-times me-1"></i> Check</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <br>
                <%
                    }%>
            </div>
        </div>
    </div>
</section>
    </div>
</div>
</div>
</div>
</body>

</html>