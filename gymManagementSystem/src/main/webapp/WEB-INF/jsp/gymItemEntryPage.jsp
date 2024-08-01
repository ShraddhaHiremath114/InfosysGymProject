<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Exercises</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        form input[type="text"],
        form button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        table {
            width: 100%;
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
            background-color: #ff6600;
            color: white;
        }
        .action-btn {
            color: #fff;
            background-color: #ff6600;
            padding: 5px 10px;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Manage Exercises</h1>
        <form:form id="trainer-page" action="/gymitem" method="post" modelAttribute="itemRecord">
            <div>
                <label for="itemName">Exercise Name:</label>
                <form:input path="itemName" required="required"/>
            </div>
            <form:hidden path="itemId"/>
            <div>
                <label for="totalSeat">Total Seat:</label>
                <form:input path="totalSeat" required="required"/>
            </div>
            <button type="submit">Add Exercise</button>
            <br/>
            <button type="reset">Reset</button>
        </form:form>
        <table>
            <thead>
                <tr>
                    <th>Item Id</th>
                    <th>Item Name</th>
                    <th>Total Seat</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${itemList}">
                    <tr>
                        <td>${item.itemId}</td>
                        <td>${item.itemName}</td>
                        <td>${item.totalSeat}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
    </div>
</body>
</html>
