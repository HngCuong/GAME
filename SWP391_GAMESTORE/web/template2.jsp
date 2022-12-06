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
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
<style>
    body{color: #ffffff}.card{padding: 8%;padding-top: 35px;margin-top: 20px;margin-bottom: 80px}textarea[name="message"]{resize: none}#e-mail{height: 45px}#message{height: 120px}input.input-box, textarea.input-box{background-color : #616161;border: #616161;color: #BDBDBD}input.input-box:focus, textarea.input-box:focus{background-color: #000000;color: #BDBDBD}.rm-border:focus{border-color: inherit;-webkit-box-shadow: none;box-shadow: none}form .form-control::-webkit-input-placeholder{color: #9E9E9E}::-moz-placeholder{color: #9E9E9E !important}input.btn-purple{background-color: #5C6BC0;color: #ffffff}
</style>

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
                                   
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="http://localhost:8080/GameStore/home/homepage.do?op=list" />"><span>Back to Shoping Site</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="EditBlog.jsp?index=1" />"><span>Edit Blog</span></a></li>
                                 <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="create_blog.jsp" />"><span>Create Blog</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2 " href="<c:url value="http://localhost:8080/GameStore/user/logout.do" />"><span>Log Out</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col">
                   <div class="bg-light">
    <div class="container">
        <div class="row justify justify-content-center" style="background-color: white">
            <div class="col-11 col-md-8 col-lg-6 col-xl-5">
               
                    <div class="card bg-dark">
                        <div class="row mt-0">
                            <div class="col-md-12 ">
                                <h4 class="">Create a Blog</h4>
                                <p>Please fill in a blank</p>
                            </div>
                        </div>
                         <form action ="FindHistory3">
                        <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">
                                <p class="mb-1">Picture</p>                                
                                <input type="file" name="image" required="">                             
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">
                                <p class="mb-1">Tittle</p> <input id="e-mail" type="text" placeholder="Enter Tittle" name="tittle" class="form-control input-box rm-border" required="">
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">
                                <p class="mb-1">Short Description</p> <input id="e-mail" type="text" placeholder="Enter short description" name="short" class="form-control input-box rm-border" required="">
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                                <p class="mb-1">Long Description</p> <textarea id="message" type="text" placeholder="Enter long description" name="long" class="form-control input-box rm-border" required=""></textarea>
                            </div>
                        </div>
                            
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                                <p class="mb-1" style="color:blue">
                                    
                                    <c:out value="${msg}" />
                                </p> 
                            </div>
                        </div> 
                        <div class="form-group row justify-content-center mb-0">
                            <div class="col-md-12 px-3"> <input type="submit" value="Submit" class="btn btn-block btn-purple rm-border"> </div>
                        </div  > </br>
                         </form>
                         <button style="width: 200;height: 44px;text-align: center" onclick="window.location.href='http://localhost:8080/GameStore/home/homepage.do?op=list'">
                                        Cancel
                                </button>
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