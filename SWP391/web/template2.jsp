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
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="./home/homepage.do?op=list"/>"><i class="fa fa-shopping-cart mr-1"></i><span>Back to Shoping Site</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="#" ><i class="fa fa-tachometer mr-1"></i><span>Dashboard</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="./user/logout.do" />"><i class="fa fa-sign-out mr-1"></i><span>Log Out</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col">


                </div>
            </div>
        </div>
    </div>
</body>

</html>