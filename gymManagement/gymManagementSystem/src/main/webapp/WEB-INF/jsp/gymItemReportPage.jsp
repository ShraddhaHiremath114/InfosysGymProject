<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item Report</title>
<style type="text/css">
body {

            background-image: url("/Files/unisex3.jpg");
            background-size: cover;
            background-repeat: no-repeat !important;
            background-attachment: fixed;
            display: flex;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }
        table {
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            color: white;
        }
        td{
        color: white;
        }
        a{
        color: white;
        }
</style>
</head>
<body>
<div class="container" align="center">
<form action="gymitems" method="post">
<table border="2">
<tr>
<th>Item Number</th>
<th>Item Name</th>
<th>Total Seat/Slot</th>
</tr>
<c:forEach items="${itemList}" var="item">
<tr>
<td>${item.itemId}</td>
<td>${item.itemName}</td>
<td>${item.totalSeat}</td>

</tr>
<br/><br/>

</c:forEach>
</table>
<br/><br/>
<a href="/index">return</a>

</form>
</div>
</body>
</html>