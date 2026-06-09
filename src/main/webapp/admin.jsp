<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<style>
    /* General Reset */
body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    background-image: url(image/desktopBackground.png);
    width: 100%;
    height: 100vh;
    background-size: cover;
    background-position: center;
}

/* Container Styling */
.dashboard-container, .view-container {
    background: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 550px;
}

h1 {
    margin-bottom: 20px;
    font-size: 24px;
    color: #333333;
}

p {
    font-size: 16px;
    color: #555555;
    margin-bottom: 30px;
}

/* Button Styling */
.button {
    display: inline-block;
    text-decoration: none;
    color: #ffffff;
    background: #007BFF;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 16px;
    transition: background 0.3s;
    margin: 5px;
}

.button:hover {
    background: #0056b3;
}

.logout-btn {
    background: #dc3545;
}

.logout-btn:hover {
    background: #c82333;
}
nav a{
        position:fixed;
        top:0;
        left:0;
        color:white;
        text-decoration:none;
        font-size:20px;
    }
   

</style>
<body>

<nav> <a href="index.jsp" class="backbtn">◀</a></nav>
    <div class="dashboard-container">
        <h1>Welcome to the Admin Dashboard</h1>
        <p>Hello,${admin}!</p>
        <div class="dashboard-buttons">
            <a href="viewMessages" class="button">View Messages</a>
            <a href="changePassword.jsp" class="button">Change Password</a>
            <a href="logout" class="button logout-btn">Logout</a>
        </div>
    </div>
</body>
</html>
