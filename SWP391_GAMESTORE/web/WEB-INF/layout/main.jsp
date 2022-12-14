<%-- 
    Document   : header
    Created on : Jun 22, 2022, 8:47:05 PM
    Author     : buile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:url value="" var="context"/>
<fmt:setLocale value="en-us" />
<!DOCTYPE html>
<html >

    <head>
        <script>
            window.history.replaceState("new","","GameStore")
         </script>   
        <link rel="stylesheet" href="<c:url value="../template/css/animate.css" />" type="text/css">
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Ogani | Template</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
        <!-- Css Styles -->
        <link rel="stylesheet" href="<c:url value="../css/bootstrap.min.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="../css/font-awesome.min.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="../css/elegant-icons.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="../css/nice-select.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="../css/jquery-ui.min.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="../css/owl.carousel.min.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="../css/slicknav.min.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="../css/style.css" />" type="text/css">



    </head>

    <body>
   

        <!-- Header -->
        <jsp:include page="/WEB-INF/layout/header.jsp"/>
        <!-- Header End -->
    <!-- View -->
    <!-- controller ???? l???y t??? Servlet -> ch??? c???n 1 d??ng c?? th??? hi???n dc c??? 4 trang kh??ng c???n c??u ??i???u ki???n  -->
    <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp"/>
    <!-- View End-->
    <!-- Footer Section Begin -->

    <jsp:include page="/WEB-INF/layout/footer.jsp"/>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="<c:url value="/js/jquery-3.3.1.min.js" />"></script>
    <script src="<c:url value="/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/js/jquery.nice-select.min.js" />"></script>
    <script src="<c:url value="/js/jquery-ui.min.js" />"></script>
    <script src="<c:url value="/js/jquery.slicknav.js" />"></script>
    <script src="<c:url value="/js/mixitup.min.js" />"></script>
    <script src="<c:url value="/js/owl.carousel.min.js" />"></script>
    <script src="<c:url value="/js/main.js" />"></script>
    <!-- Js Plugins End-->
</body>

</html>
