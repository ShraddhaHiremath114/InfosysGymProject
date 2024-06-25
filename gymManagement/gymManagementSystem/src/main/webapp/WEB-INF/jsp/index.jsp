<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online GYM Management System</title>
    <style>
        body {
            background-image: url("/Files/unisex.jpg");
            background-size: cover;
            background-repeat: no-repeat !important;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
        }
        .navbar {
            display: flex;
            align-items: center;
            background-color: #ff6600;
            padding: 10px 20px;
        }
        .navbar .logo {
            font-size: 24px;
            color: white;
            font-weight: bold;
        }
        .navbar ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            flex: 1;
            justify-content: flex-end;
        }
        .navbar ul li {
            margin: 0 10px;
        }
        .navbar ul li a {
            text-decoration: none;
            color: black;
            font-size: 16px;
            padding: 10px 20px;
        }
        .navbar ul li a:hover,
        .navbar ul li a.active {
            background-color: #ddd;
            color: black;
        }
        .navbar .social-icons {
            display: flex;
            align-items: center;
        }
        .navbar .social-icons a {
            margin-left: 10px;
            color: black;
            font-size: 20px;
        }
        .welcome-message {
            color: white;
            text-align: center;
            margin-top: 20px;
        }
    </style>
    <script type="text/javascript">
        function fun() {
            alert(${output});
        }
    </script>
</head>
<body>
    <div class="navbar">
        <div class="logo">STAMINA.</div>
        <ul>
            <li><a href="/index" class="active">HOME</a></li>
            <li><a href="/gymslotbooking">SCHEDULE</a></li>
            <li><a href="/gymitem">ADD ITEMS</a></li>
            <li><a href="#">PRICING</a></li>
            <li><a href="/gymitems">GYM ITEMS</a></li>
            <li><a href="/slotentry">ADD SLOT</a></li>
            <li><a href="/slotreport">SLOTS</a></li>
            <li><a href="#">FEEDBACK</a></li>
            <li><a href="#">ADMIN</a></li>
            <li><a href="/logout">LOGOUT</a></li>
        </ul>
    </div>
    <div class="welcome-message">
        <h1>Welcome to Gym Management System</h1>
    </div>
</body>
</html>