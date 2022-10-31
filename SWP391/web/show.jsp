<%-- 
    Document   : status_user
    Created on : Oct 28, 2022, 10:38:27 AM
    Author     : DELL
--%>
<%@page import="models.User"%>
<%@page import="java.util.List"%>
<%@page import="DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<div class="container mt-5">
        <div class="d-flex justify-content-center row">
            <div class="col-md-10">
                <div style="text-align: center; color: blue"><h1>All account staff</h1></div></br>
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
                    UserDAO dao = new UserDAO();
                    String a =request.getParameter("all");
                    List<User> list = dao.showStaff();
                    for (User op : list) {
                    
                %> 
                <tr class="cell-1" data-toggle="collapse" data-target="#demo">
                                    <td class="text-center"><%=count%></td>
                                    <td><%=op.getUserName()%></td>
                                    <td><%=op.getPassword()%></td>
                                    <td><form action="Change"><input type = "text" name ="new"><button>Change</button>
                                            <input type="hidden" name="name" value="<%=op.getUserName()%>">
                                        </form></td>
                                    <td><a href="test?name=<%=op.getUserName()%>">Delete</a></td>
                                    <td>ADMIN</td>
                                    <td class="table-elipse" data-toggle="collapse" data-target="#demo"><i class="fa fa-ellipsis-h text-black-50"></i></td>
                                </tr>
                
               
                <% count = count+1;
             
                    if(count > 1 && a==null)
                    {break;}
                        }%>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
                <div style="text-align: center; color: blue"><p><a href="http://localhost:8080/GameStore/show.jsp?all=1">show all</a><p></div>
            </div>
        </div>
    </div>