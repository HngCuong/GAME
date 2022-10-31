<%-- 
    Document   : index2
    Created on : Oct 15, 2022, 1:06:41 AM
    Author     : DELL
--%>
<!Contact >
<%@page import="models.ContactDTO"%>
<%@page import="java.util.List"%>
<%@page import="DAO.UserDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
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
                    List<ContactDTO> list = dao.contact();
                    for (ContactDTO op : list) {


                %> 
                <div class="d-flex flex-start">
                    <img class="rounded-circle shadow-1-strong me-3"
                         src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(31).webp" alt="avatar" width="65"
                         height="65" />
                    <div class="card w-100">
                        <div class="card-body p-4">
                            <div class="">
                                <h5> <%= op.getUser()%></h5>
                                <p class="small">15 second</p>
                                <p>
                                    <%= op.getEmail()%> <br>
                                    <%= op.getSubject()%> <br>
                                    <%= op.getMsg()%> 
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
                <%break;
                    }%>
                <div style="text-align: center"><a href="index2.jsp"><button>Show ALL</button></a></div>

            </div>
        </div>
    </div>
</section>
</body>
</html>
