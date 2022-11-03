<%-- 
    Document   : ListBlog
    Created on : Nov 2, 2022, 1:19:04 AM
    Author     : DELL
--%>

<%@page import="models.Blog"%>
<%@page import="java.util.List"%>
<%@page import="DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<style>
    body{
        background-color:#1e1c2a;
    }

    .card{
        border:none;
        background-color:#252836;
        color:#fff;
        border-radius:12px;
    }

    .user-timing{

        right:9px;
        bottom:9px;
        color:#fff;
    }
    .views-content{
        color:#606271;
    }
    .views{
        font-size:12px;

    }


    .dots{
        display:flex;
        height:10px;
        width:10px;
        background-color:green;
        border-radius:50%;
        margin-left:5px;
        margin-bottom:6px;
    }



    .days-ago{
        margin-top: -10px;
        color: #606271;
    }


    .snipimage img{
        height: 200px;
    }
</style>
<div class="container mt-4">
    <button>BACK</button>
    <div class="card p-3">
        <div class="row">
            <form action="FindHistory4">
                <input type="text" name="search"><button>search</button>
                
            </form>
            <div class="col-md-8">
                <%int count = 1;
                    UserDAO dao = new UserDAO();
                    String a = request.getParameter("all");
                    List<Blog> list = dao.showBlog();
                    for (Blog op : list) {

                %> 
               
                
                <div class="col-md-4">
                    <div class="position-relative snipimage">
                       <a href="Blog.jsp?img=<%=op.getImage()%>&tittle=<%=op.getTittle()%>&big=<%=op.getBig()%> "> <img src="<%=op.getImage()%>" class="rounded img-fluid w-100 img-responsive">  </a>
                      
                    </div>
                </div>
                <div class="mt-2">
                    <div class="d-flex justify-content-between align-items-center">
                        <h5 class="mb-1"><%=op.getTittle()%></h5>
                        <span><i class="fa fa-heart text-danger"></i> </span>
                    </div>
                    <div class="d-flex justify-content-md-start justify-content-between views-content mt-2">
                        <div class="d-flex flex-row align-items-center">
                            <i class="fa fa-eye"></i>
                            <span class="ms-1 views">100</span>
                        </div>
                        <div class="d-flex flex-row align-items-center ms-2">
                            <i class="fa fa-heart"></i>
                            <span class="ms-1 views">50</span>

                        </div>
                    </div>
                    <div class="d-flex flex-row mt-3">

                        <img src="https://i.imgur.com/rvQ3LAt.jpg" width="50" class="rounded-circle">
                        <div class="ms-2 d-flex flex-column">
                            <div class="d-flex flex-row align-items-center">
                                <h6><%=op.getAuthor()%></h6>
                                <span class="dots"></span>
                            </div>
                            <span class="days-ago">New</span>
                        </div>

                    </div>
                </div>

                <% count = count + 1;

                        if (count > 1 && a == null) {
                            break;
                        }
                    }%>

                     


            </div>

        </div>


    </div>
                    <div style="text-align: center; color: blue"><p><a href="http://localhost:8080/GameStore/ListBlog.jsp?all=1">show all</a><p></div>
</div>