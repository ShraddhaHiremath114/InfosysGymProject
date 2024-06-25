<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
        /* CSS styles */
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        html, body {
            width: 100%;
            height: 100%;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .register-container {
            background-color: #fff;
            padding: 20px 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-top: 84px;
            margin-bottom: 90px;
        }
        .register-container h2 {
            margin-bottom: 15px;
            color: #333;
        }
        .register-container label {
            display: block;
            margin-bottom: 3px;
            color: #555;
        }
        .register-container input, .register-container select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .register-container button {
            width: 50%;
            padding: 8px;
            background-color: rgb(20, 165, 222);
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        .register-container .login-link {
            text-align: center;
            margin-top: 7px;
            color: #666a6e;
        }
        .register-container .login-link a {
            color: #007bff;
            text-decoration: none;
        }
        .register-container .login-link a:hover {
            text-decoration: underline;
        }
        .error {
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <center><h2>Register</h2></center>
        <form action="<%= request.getContextPath() %>/register" method="post">
            <label for="first_name">First Name</label>
            <input type="text" id="first_name" name="firstName" required>
            <label for="last_name">Last Name</label>
            <input type="text" id="last_name" name="lastName" required>
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
            <label for="phone_number">Phone Number</label>
            <input type="tel" id="phone_number" name="phoneNumber" required pattern="\d{10}">
            <label for="type">User Type</label>
            <select id="type" name="type" required>
                <option value="customer">Customer</option>
                <option value="admin">Admin</option>
            </select>
            <label for="username">User ID</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$">
            <center><button type="submit">Register</button></center>
        </form>
        <div class="login-link">
            <p>Already have an account? <a href="<%= request.getContextPath() %>/loginpage">Login here</a></p>
        </div>
    </div>
</body>
</html>
