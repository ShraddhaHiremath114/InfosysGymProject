<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Error</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .error-container {
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
    }
    .error-container h2 {
        color: #d9534f;
        margin-bottom: 20px;
    }
    .error-container p {
        margin-bottom: 20px;
    }
    .back-btn {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        background: #0275d8;
        color: white;
        text-decoration: none;
        display: inline-block;
    }
    .back-btn:hover {
        background: #025aa5;
    }
</style>
</head>
<body>
    <div class="error-container">
        <h2>Login Error</h2>
        <p>Invalid username or password. Please try again.</p>
        <a href="loginPage" class="back-btn">Back to Login</a>
    </div>
</body>
</html>
