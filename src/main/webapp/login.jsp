<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<style>
    body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    font-family: Arial, sans-serif;
    background-image: url(image/desktopBackground.png);
    width: 100%;
    height: 100vh;
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
}
</style>
<body>
    <div class="center-container">
        <div class="login-box">
            <h1>Login</h1>
            <%String msg=request.getParameter("msg");
             if("fail".equals(msg)){%>
                <p class="error-message">Incorrect username or password</p>
           <%} %>
            <form method="post" action="adminLogin">
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit" name=login class="login-btn">Login</button>
            </form>
        </div>
    </div>
</body>
</html>
