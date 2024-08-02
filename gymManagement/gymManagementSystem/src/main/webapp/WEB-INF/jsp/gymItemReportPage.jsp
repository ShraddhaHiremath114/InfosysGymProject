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
<%@include file="/WEB-INF/css/gymItemReportPage.css"%>
</style>
</head>
<body>
<div class="container" >
<form action="gymitems" method="post">
<table>
<caption><h1><i>GYM ITEMS</i></h1></caption>
<tr>
<th>Item Number</th>
<th>Item Name</th>
<th>Total Seat/Slot</th>
<th>Add To Slots</th>
</tr>
<c:forEach items="${itemList}" var="item">
<tr>
<td>${item.itemId}</td>
<td>${item.itemName}</td>
<td>${item.totalSeat}</td>
<td><a href="/slot-item-add/${item.itemId}">Add To Slots</a></td>
</tr>
<br/><br/>

</c:forEach>
</table>
<br/><br/>
<div class="return">
<a href="/index"><button type="button">Return</button></a>
</div>

</form>
</div>
</body>
</html>