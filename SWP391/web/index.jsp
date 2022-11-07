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
                <div class="row flex-lg-nowrap">
        <div class="col mb-9">
            <div class="cards">
                <div class="card">
                    <div class="card-content">
                        <div class="number">1217</div>
                        <div class="card-name">  Users</div>
                    </div>
                    <div class="icon-box">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                </div>
                  <div class="card">
                    <div class="card-content">
                        <div class="number">4500</div>
                        <div class="card-name">  Product</div>
                    </div>
                    <div class="icon-box">
                        <i class="fa fa-square"></i>
                    </div>
                </div>
                <div class="card">
                    <div class="card-content">
                        <div class="number">42</div>
                        <div class="card-name">  Orders</div>
                    </div>
                    <div class="icon-box">
                        <i class="fa fa-shopping-cart"></i>
                    </div>
                </div>
               
                <div class="card">
                    <div class="card-content">
                        <div class="number">$4500</div>
                        <div class="card-name">Earnings</div>
                    </div>
                    <div class="icon-box">
                        <i class="fas fa-dollar-sign"></i>
                    </div>
                </div>
                              
            </div>
            <div class="charts">
                <div class="chart">
                    <h2>Earnings (past 12 months)</h2>
                    <div>
                        <canvas id="lineChart"></canvas>
                    </div>
                </div>
                <div class="chart doughnut-chart">
                    <h2>Employees</h2>
                    <div>
                        <canvas id="doughnut"></canvas>
                    </div>
                </div>
            </div>
            </div>
        </div>
                </div>
            </div>
         </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
    <script src="chart1.js"></script>
    <script src="chart2.js"></script>
</body>

</html>