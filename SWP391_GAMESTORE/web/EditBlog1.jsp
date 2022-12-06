<%@page import="models.Blog"%>
<%@page import="models.Comment"%>
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
                                   
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="http://localhost:8080/GameStore/home/homepage.do?op=list" />"><span>Back to Shoping Site</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="EditBlog.jsp?index=1" />"><span>Edit Blog</span></a></li>
                                 <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="create_blog.jsp" />"><span>Create Blog</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="http://localhost:8080/GameStore/user/logout.do" />"><span>Log Out</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="container mt-5">
                        <div class="d-flex justify-content-center row">
                            <div class="col-md-10">
                                <form action="FindAccount4">
                                    <input type="text" name="search"><button>Search</button>
                                </form>
                                <div class="rounded">
                                    <div class="table-responsive table-borderless">
                                        <table class="table">
                                            <thead>
                                                 <tr>
                                                    <th class="text-center">S. No.</th>
                                                    <th>Name</th>
                                                    <th>Description</th>
                                                    <th>Update</th>
                                                    <th>Delete</th>
                                                    
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody class="table-body">
                                                <%int count = 1;
                    UserDAO dao = new UserDAO();
                    String a =request.getParameter("search");
                    List<Blog> list = dao.showBlog(a);
                    for (Blog op : list) {
                    
                                                %> 
                                               <tr class="cell-1" data-toggle="collapse" data-target="#demo">
                                                    <td class="text-center"><%=count%></td>
                                                    <td><%=op.getTittle()%></td>
                                                    <td><%=op.getSmall()%></td>
                                                    <td><a href="create_blog1.jsp?name=<%=op.getTittle()%>"><button value="">Update</button> </a></td>
                                                    <td><a href="DeleteBlog?name=<%=op.getSmall()%>"><button value="">Delete</button> </a></td>
                                                
                                                    <td class="table-elipse" data-toggle="collapse" data-target="#demo"><i class="fa fa-ellipsis-h text-black-50"></i></td>
                                                </tr>



                                                <% count = count + 1;
                                                    }%>

                                            </tbody>
                                        </table>
                                    </div>
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