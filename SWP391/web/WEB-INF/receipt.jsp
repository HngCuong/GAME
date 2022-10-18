<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Receipt</title>
<style type="text/css">
    table { border: 0; }
    table td { padding: 5px; }
</style>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
</head>
<body>
    
<div align="center">
    <h1>Payment Done. Thank you for purchasing our products</h1>
    <br/>
    <h2>Receipt Details:</h2>
    <table>
        <tr>
            <td><button>OUT</button><b>Merchant</b></td>
            <td>Company ABC Ltd.</td>
        </tr>
        <tr>
            <td><b>Payer:</b></td>
            <td>${payer.firstName} ${payer.lastName}</td>      
        </tr>
        <tr>
            <td><b>Description:</b></td>
            <td>${transaction.description}</td>
        </tr>
        <tr>
            <td><b>Subtotal:</b></td>
            <td>${transaction.amount.details.subtotal} USD</td>
        </tr>
        <tr>
            <td><b>Shipping:</b></td>
            <td>${transaction.amount.details.shipping} USD</td>
        </tr>
        <tr>
            <td><b>Tax:</b></td>
            <td>${transaction.amount.details.tax} USD</td>
        </tr>
        <tr>
            <td><b>Total:</b></td>
            <td>${transaction.amount.total} USD</td>
        </tr> 
          
    </table>
        
</div>
<script type="text/javascript">
<!-- Begin
// Created by: Lee Underwood
function reFresh() {
  window.open(location.replace("https://viblo.asia/p/tu-dong-load-trang-voi-rails-va-thu-vien-js-infinite-scroll-YWOZrgpylQ0"))
}
/* Set the number below to the amount of delay, in milliseconds,
you want between page reloads: 1 minute = 60000 milliseconds. */
window.setInterval("reFresh()",6000);
// End -->
</script>

</body>
</html>