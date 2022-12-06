<%@page import="models.Forum"%>
<!DOCTYPE html>
<!dashboard>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="models.ContactDTO"%>
<%@page import="java.util.List"%>
<%@page import="DAO.UserDAO"%>
<html lang="en">

    <head>
        <script>
            window.history.replaceState("new","","GameStore")
         </script>   
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

        <title>Admin panel</title>
    </head>

    <body>
        <div class="container">
            <div class="row flex-lg-nowrap" >
                <div class="col-12 col-lg-auto mb-3" style="width: 200px;padding-top:34px">
                    <div class="card p-3" style="">
                        <div class="e-navlist e-navlist--active-bg">
                                <ul class="nav">
                            <li class="nav-item"><a class="nav-link px-2  " href="<c:url value="http://localhost:8080/GameStore/admin/manage.do?op=listFull" />"><span>Manage Product</span></a></li>
                            <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="http://localhost:8080/GameStore/home/homepage.do?op=list" />"><span>Back to Shoping Site</span></a></li>
                            <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="index.jsp" />"><span>Dashboard</span></a></li>
                            <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="index2.jsp" />"><i class="fa fa-tachometert "></i><span>Contact</span></a></li>
                            <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="status.jsp" />"><span>Total Order</span></a></li>
                            <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="admin.jsp" />"><span>Create Account</span></a></li>
                            <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="show.jsp" />"><span>ShowAccount</span></a></li>
                            <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="EditComment" />"><span>All Comments</span></a></li>
                            <%

            UserDAO dao1 = new UserDAO();
            List<Forum> list3 = dao1.showSpam();
            if (!list3.isEmpty()) {
        %> 
    <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="spam.jsp" />"><span style="color:red">Spam on Forum</span></a></li>
        <%} else {

        %> 
    <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="spam.jsp" />"><span>Spam on Forum</span></a></li>
        <%}   %> 
                           

                            <li  class="nav-item"><a class="nav-link px-2 " href="<c:url value="http://localhost:8080/GameStore/user/logout.do" />"><span id="sp">Log Out</span></a></li>
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
                            </form>
                            </br>


                            <%
                                UserDAO dao = new UserDAO();
                                List<ContactDTO> list = dao.contact();
                                for (ContactDTO op : list) {
                            %> 
                            <div class="d-flex flex-start">
                                <div class="card w-100">
                                    <div class="card-body p-4">
                                        <div class="">
                                            <h5>UserName: <%= op.getUser()%></h5>
                                            <%if(op.getStauts().equals("CHECK")){ %>
                                            <p style="color:blue"><%=op.getStauts()%></p><%}else{%>
                                            
                                                <p style="color:red"><%=op.getStauts()%></p>
                                                    <%}%>
                                            <p>
                                              Email: <%= op.getEmail()%></p>
                                            <p> Tittle: <%= op.getSubject()%></p>
                                             <p> Problem: <%= op.getMsg()%> 
                                            </p>

                                            <div class="d-flex justify-content-between align-items-center">

                                                <form action="Reply"">
                                                    <textarea placeholder="Message" name="reply" style="width: 800px;height: 64px"></textarea>
                                                    <input type="hidden" name="email" value=" <%= op.getEmail()%>"
                                                    <i class=" fa-reply me-1"></i> <button>Reply</button>
                                                    <input type="hidden" name="check" value="<%=op.getMsg()%> " >
                                                </form>
                                                </br>

                                                <a href="DeleteReply?name=<%= op.getUser()%>&msg=<%= op.getMsg()%> "><button value="">Check</button> </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <br>
                            <% }%>
                         

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