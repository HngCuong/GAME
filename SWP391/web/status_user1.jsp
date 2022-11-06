<!DOCTYPE html>
<!dashboard>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="models.User"%>
<%@page import="java.sql.Date"%>
<%@page import="models.Checkout"%>
<%@page import="java.util.List"%>
<%@page import="DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <link rel="stylesheet" href="styles.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.29.2/dist/sweetalert2.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@7.29.2/dist/sweetalert2.min.css">
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
                              
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="http://localhost:8080/GameStore/home/homepage.do?op=list" />"><i class="fa fa-shopping-cart mr-1"></i><span>Back to Shoping Site</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="profile.jsp" ><i class="fa fa-tachometer mr-1"></i><span>Edit Profile</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="status_user.jsp" ><i class="fa fa-tachometer mr-1"></i><span>History Order</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="http://localhost:8080/GameStore/user/logout.do" />"><i class="fa fa-sign-out mr-1"></i><span>Log Out</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col">
                  <div class="container mt-5">
        <div class="d-flex justify-content-center row">
            <div class="col-md-12">
                 <div style="text-align: center; color: blue"><h1>Check Order</h1></div></br>
                  <form action="FindHistory">
                    <input type="text" name="search"><button>Search</button>
                </form>
                <div class="rounded">
                    <div class="table-responsive table-borderless">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center">S. No.</th>
                                    <th>UserID</th>
                                    <th>Phone</th>
                                    <th>status</th>
                                    <th>Total</th>
                                    <th>Created</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody class="table-body">
                                                           
                     <%int count = 1;
                    UserDAO dao = new UserDAO();
                   
                   String a = (String)request.getParameter("search");
                    User b = (User)session.getAttribute("user");
                     int c = b.getId();
                    List<Checkout> list = dao.searchChekoutbyDay(a,c);
                    for (Checkout op : list) {
                    
                %> 
                
                                <tr class="cell-1" data-toggle="collapse" data-target="#demo-2">
                                    <td class="text-center"><%=count%></td>
                                    <td><%=op.getUserID()%></td>
                                    <td><%=op.getPhone()%></td>
                                    <td><span class="badge badge-success">SUCCESS</span></td>
                                    <td><%=op.getTotal()%></td>
                                    <td><%=op.getDateOder()%></td>
                                    <td class="table-elipse" data-toggle="collapse" data-target="#demo"><i class="fa fa-ellipsis-h text-black-50"></i></td>
                                </tr>
               
                <% count = count+1;
             
                    
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