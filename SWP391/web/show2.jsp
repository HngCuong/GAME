<%@page import="models.Forum"%>
<%@page import="models.User"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="DAO.UserDAO"%>
<!DOCTYPE html>
<!dashboard>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <link rel="stylesheet" href="styles.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.29.2/dist/sweetalert2.min.js"></script>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@7.29.2/dist/sweetalert2.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <style>
            @import url('https://fonts.googleapis.com/css?family=Assistant');

            body {
                background: #eee;
                font-family: Assistant, sans-serif
            }

            .cell-1 {
                border-collapse: separate;
                border-spacing: 0 4em;
                background: #ffffff;
                border-bottom: 5px solid transparent;
                /*background-color: gold;*/
                background-clip: padding-box;
                cursor: pointer;
            }

            thead {
                background: #dddcdc;
            }


            .table-elipse {
                cursor: pointer;
            }

            #demo {
                -webkit-transition: all 0.3s ease-in-out;
                -moz-transition: all 0.3s ease-in-out;
                -o-transition: all 0.3s 0.1s ease-in-out;
                transition: all 0.3s ease-in-out;
            }

            .row-child {
                background-color: #000;
                color: #fff;
            }
        </style>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

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
                    <div class="container mt-5">
                        <div class="d-flex justify-content-center row">
                            <div class="col-md-10">
                                <form action="FindAccount">
                                    <input type="text" name="search"><button>Search</button>
                                </form>
                                <div class="rounded">
                                    <div class="table-responsive table-borderless">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">S. No.</th>
                                                    <th>Name</th>
                                                    <th>Password</th>
                                                    <th>Change Pass</th>
                                                    <th>Delete account</th>
                                                    <th>Created</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody class="table-body">
                                                <%int count = 1;
                                                    String a = request.getParameter("index");
                                                    int b = Integer.parseInt(a);
                                                    count =(( b -1 ) * 4) + 1; 
                                                    UserDAO dao = new UserDAO();
                                                   List<User> list1 = dao.showStaff();
                                                    List<User> list = dao.showStaffPaging(b);
                                                    for (User op : list) {

                                                %> 
                                                <tr class="cell-1" data-toggle="collapse" data-target="#demo">
                                                    <td class="text-center"><%=count%></td>
                                                    <td><%=op.getUserName()%></td>
                                                    <td><%=op.getPassword()%></td>
                                                    <td>
                                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                            Edit
                                                        </button>       
                                                        
                                                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                
                                                                <div class="modal-dialog">
                                                                   
                                                                    <div class="modal-content">
                                                                        <form action="Change">
                                                                        <div class="modal-header">
                                                                            <h1 class="modal-title fs-5" id="exampleModalLabel">Reset Password</h1>
                                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                            
                                                                        </div>
                                                                        <div class="modal-body">
                                                                            <p>Enter Account</p>
                                                                            <input type = "text" name ="name">
                                                                            <p>Enter Password</p>
                                                                            <input type = "text" name ="new">
                                                                        </div>
                                                                        <div class="modal-footer">
                                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                                             
                                                                            <button type="submit" class="btn btn-primary">Save changes</button>
                                                                           

                                                                        </div>
                                                                    </form>
                                                                    </div>
                                                                         
                                                                </div>
                                                                                                                               

                                                            </div>
                                                           

                                                    </td>
                                                    <td><a href="test?name=<%=op.getUserName()%>">Delete</a></td>
                                                    <td>ADMIN</td>
                                                    <td class="table-elipse" data-toggle="collapse" data-target="#demo"><i class="fa fa-ellipsis-h text-black-50"></i></td>
                                                </tr>



                                                <% count = count + 1;
                                                    }%>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
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
                            <a href="show2.jsp?index=<%=i%>"> <button class="active"> <%=i%> </button> </a> <% continue;
                               }%>

                            <a href="show2.jsp?index=<%=i%>"> <button class=""> <%=i%> </button> </a> 


                            <% }%>
                        </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>

</html>