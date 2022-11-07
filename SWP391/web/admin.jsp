<!DOCTYPE html>
<!dashboard>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                                 <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="EditBlog.jsp?index=1" />"><span>All Blog</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="http://localhost:8080/GameStore/user/logout.do" />"><span>Log Out</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            <div class="col">
                <div class="row flex-lg-nowrap" style="padding-top: 30px">
                    <div style="text-align: center;color:blue"> <h4>CREATE ACCOUNT</h4></div></br>
                    </br>
                    <div style="">
                        <form action="userBlog">
                            <input type="text" name="user" placeholder="Enter account" required></br>
                            <input type="password" name="password" placeholder="Enter password" required></br>
                            <button>register</button>                          
                        </form>
                        <h3>${success}</h3>
                          <a href="test"><button>Show Account</button></a>
                    </div>
                </div>
            </div>
                  
         </div>
    </div>
    
</body>

</html>