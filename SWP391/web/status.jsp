<%-- 
    Document   : status
    Created on : Oct 28, 2022, 10:22:47 AM
    Author     : DELL
--%>

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
            <div class="col-md-12">
                <div class="rounded">
                    <div class="table-responsive table-borderless">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center">S. No.</th>
                                    <th>UserID</th>
                                    <th>Phone</th>
                                    <th>status</th>
                                    <th>Total</th>
                                    <th>Created</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody class="table-body">
                              
                                <tr class="cell-1" data-toggle="collapse" data-target="#demo-2">
                                    <td class="text-center">2</td>
                                    <td>#SO-13488</td>
                                    <td>Tinder Steel</td>
                                    <td><span class="badge badge-success">SUCCESS</span></td>
                                    <td>$3664.00</td>
                                    <td>Yesterday</td>
                                    <td class="table-elipse" data-toggle="collapse" data-target="#demo"><i class="fa fa-ellipsis-h text-black-50"></i></td>
                                </tr>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>