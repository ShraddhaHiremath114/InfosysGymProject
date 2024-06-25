<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Slot Report</title>
</head>
<body>
<div class="container" align="center">
<form action="/slotreport" method="post">
<table border="2">
<tr>
<th>Item Number</th>
<th>Item Name</th>
<th>Slot Price</th>
<th>Enquire</th>
</tr>
<c:forEach items="${slotList}" var="slot">
<tr>
<td>${slot.slotId}</td>
<td>${slot.slotTime}</td>
<td>${slot.pricing}</td>
<td><a href="/slot-show/${slot.slotId}">Slot Enquire</a></td>

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