<%-- 
    Document   : Blog
    Created on : Nov 2, 2022, 1:37:55 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="text-align: center">
            <%String a = request.getParameter("img");
            String b = request.getParameter("tittle");
            String c = request.getParameter("big");
            
                %>
        <img src="<%=a%>" width="1000" height="600">
        <p style="color=red;font-size: 1.2cm"><%=b%></p>
        <p style="font-size: 80"><%=c%></p>
        </div>
        <a href="http://localhost:8080/demoSWP/index.jsp">Cllick</a>
        </body>
        
        
</html>
