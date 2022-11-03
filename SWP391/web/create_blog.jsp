<%-- 
    Document   : create_blog
    Created on : Oct 28, 2022, 10:47:56 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
<style>
    body{color: #ffffff}.box{margin: auto}.card{padding: 8%;padding-top: 35px;margin-top: 60px;margin-bottom: 80px}textarea[name="message"]{resize: none}#e-mail{height: 45px}#message{height: 120px}input.input-box, textarea.input-box{background-color : #616161;border: #616161;color: #BDBDBD}input.input-box:focus, textarea.input-box:focus{background-color: #000000;color: #BDBDBD}.rm-border:focus{border-color: inherit;-webkit-box-shadow: none;box-shadow: none}form .form-control::-webkit-input-placeholder{color: #9E9E9E}::-moz-placeholder{color: #9E9E9E !important}input.btn-purple{background-color: #5C6BC0;color: #ffffff}
</style>
<div class="bg-light">
    <div class="container">
        <div class="row justify justify-content-center">
            <div class="col-11 col-md-8 col-lg-6 col-xl-5">
                <form action ="FindHistory3">
                    <div class="card bg-dark">
                        <div class="row mt-0">
                            <div class="col-md-12 ">
                                <h4 class="">Create a Blog</h4>
                                <p>Please fill in a blank</p>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">
                                <p class="mb-1">Picture</p> 
                                
                                
                                <input type="text" name="image" >
                               
                               
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">
                                <p class="mb-1">Name</p> <input id="e-mail" type="text" placeholder="Enter your email" name="tittle" class="form-control input-box rm-border">
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <div class="col-md-12 mb-0">
                                <p class="mb-1">Short Description</p> <input id="e-mail" type="text" placeholder="Enter your email" name="short" class="form-control input-box rm-border">
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <div class="col-md-12 mb-2">
                                <p class="mb-1">Long Description</p> <textarea id="message" type="text" placeholder="Enter your message" name="long" class="form-control input-box rm-border"></textarea>
                            </div>
                        </div>
                        <div class="form-group row justify-content-center mb-0">
                            <div class="col-md-12 px-3"> <input type="submit" value="Submit" class="btn btn-block btn-purple rm-border"> </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
 