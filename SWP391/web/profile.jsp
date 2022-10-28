<%-- 
    Document   : profile
    Created on : Oct 27, 2022, 11:25:51 PM
    Author     : DELL
--%>

<%@page import="java.awt.Toolkit"%>
<%@page import="java.awt.Image"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body{
    font-family: 'Poppins', sans-serif;
    background-color: aliceblue;
}

.wrapper{
    padding: 30px 50px;
    border: 1px solid #ddd;
    border-radius: 15px;
    margin: 10px auto;
    max-width: 600px;
}
h4{
    letter-spacing: -1px;
    font-weight: 400;
}
.img{
    width: 70px;
    height: 70px;
    border-radius: 6px;
    object-fit: cover;
}
#img-section p,#deactivate p{
    font-size: 12px;
    color: #777;
    margin-bottom: 10px;
    text-align: justify;
}
#img-section b,#img-section button,#deactivate b{
    font-size: 14px; 
}

label{
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 500;
    color: #777;
    padding-left: 3px;
}

.form-control{
    border-radius: 10px;
}

input[placeholder]{
    font-weight: 500;
}
.form-control:focus{
    box-shadow: none;
    border: 1.5px solid #0779e4;
}
select{
    display: block;
    width: 100%;
    border: 1px solid #ddd;
    border-radius: 10px;
    height: 40px;
    padding: 5px 10px;
    /* -webkit-appearance: none; */
}

select:focus{
    outline: none;
}
.button{
    background-color: #fff;
    color: #0779e4;
}
.button:hover{
    background-color: #0779e4;
    color: #fff;
}
.btn-primary{
    background-color: #0779e4;
}
.danger{
    background-color: #fff;
    color: #e20404;
    border: 1px solid #ddd;
}
.danger:hover{
    background-color: #e20404;
    color: #fff;
}
@media(max-width:576px){
    .wrapper{
        padding: 25px 20px;
    }
    #deactivate{
        line-height: 18px;
    }
}
</style>

<form action="Edit">
<div class="wrapper bg-white mt-sm-5">
    <h4 class="pb-4 border-bottom">Account settings</h4>
    <div class="d-flex align-items-start py-3 border-bottom">
        <img 
            height="150px"
            width="150px"
            src="${img}" 
            alt="vi du" name="image"/>
       
        <div class="pl-sm-4 pl-2" id="img-section">
            <b>Profile Photo</b>
            <p>Accepted file type .png. Less than 1MB</p>
            <input type="file" name="image" >
            <button class="btn button border"><b>Upload</b></button>
        </div>
      
    </div>
    <div class="py-2">
        <div class="row py-2">
            <div class="col-md-6">
                <label for="firstname">First Name</label>
                <input type="text" class="bg-light form-control" placeholder="Steve" name="fname">
            </div>
            <div class="col-md-6 pt-md-0 pt-3">
                <label for="lastname">Last Name</label>
                <input type="text" class="bg-light form-control" placeholder="Smith" name="lname">
            </div>
        </div>
        <div class="row py-2">
            <div class="col-md-6">
                <label for="email">Address</label>
                <input type="text" class="bg-light form-control" placeholder="TP.Thủ Đức" name="address">
            </div>
            <div class="col-md-6 pt-md-0 pt-3">
                <label for="phone">Phone Number</label>
                <input type="tel" class="bg-light form-control" placeholder="+1 213-548-6015" name="phone">
            </div>
        </div>
        <div class="row py-2">
            <div class="col-md-6">
                <label for="country">Country</label>
                <input type="text" class="bg-light form-control" placeholder="Viet Nam" name="country">
            </div>
            <div class="col-md-6 pt-md-0 pt-3" id="lang">
                <label for="language">Age</label>
                <div class="arrow">
                    <select name="age" id="language" class="bg-light">
                        <% for (int i = 13; i <= 60; i++){ 
                        String a = String.valueOf(i);
                        %>
                        <option value=
                                <%=a%>
                                ><%=a%></option>
                            
                       <% }                
                        %>
                     
                    </select>
                </div>
            </div>
        </div>
                        <%
                            String n = request.getParameter("user");
                            %>
                              <input type="hidden" name="user" value=<%=n%> 
        <div class="py-3 pb-4 border-bottom">
            <button class="btn btn-primary mr-3">Save Changes</button>
            <button class="btn border button" onclick="location.href='home/homepage.do?op=list'">Cancel</button>
            <h1  </h1>
        </div>
      
               
</div>
</div>
</form>