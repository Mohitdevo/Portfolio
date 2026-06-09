<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <link rel="stylesheet" href="style.css">
</head>
<style>
    body{
        background-image: url(image/desktopBackground.png);
    width: 100%;
    height: 100vh;
    background-size: cover;
    background-position: center;
    overflow:hidden;
    }
    
    .popup{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100vh;
    background: rgba(0,0,0,0.5);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 999;
}
.password-box{
    position: relative;
    width: 100%;
    margin-bottom: 15px;
}

.password-box input{
    width: 100%;
    padding: 12px 45px 12px 12px;
    box-sizing: border-box;
}

.eye{
    position: absolute;
    right: 15px;
    top: 50%;
    transform: translateY(-50%);
    cursor: pointer;
    font-size: 18px;
    user-select: none;
}
</style>
<body>


    <div class="change-password-container">
        <h1>Change Password</h1>
        
  <% String msg = request.getParameter("msg");
boolean showPopup = "success".equals(msg); 
   if(showPopup) {%>
     <div class="popup"style="display:<%=showPopup ? "flex" : "none" %>">
      <jsp:include page="sucess.jsp"/> </div> 
    <%} else if ("fail".equals(msg)){ %>
        <p style="color: red;">Old password is incorrect</p>
          <%} else if ("notmatched".equals(msg)){ %>
          <p style="color: red;">New password not matched</p>
          <%} %>

        <form action="changePassword" method="post">

    <div class="password-box">
        <input type="password" id="oldPassword" name="oldPassword" placeholder="Current Password" required>
        <span class="eye" onclick="togglePassword('oldPassword', this)">👀</span>
    </div>

    <div class="password-box">
        <input type="password" id="newPassword" name="newPassword" placeholder="New Password" required>
        <span class="eye" onclick="togglePassword('newPassword', this)">👀</span>
    </div>

    <div class="password-box">
        <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm New Password" required>
        <span class="eye" onclick="togglePassword('confirmPassword', this)">👀</span>
    </div>

    <button type="submit">Change Password</button>
</form>

        <a href="admin.jsp" class="button">Back to Dashboard</a>
    </div>
    
    <script>
function togglePassword(inputId, eyeIcon) {
    const input = document.getElementById(inputId);

    if (input.type === "password") {
        input.type = "text";
        eyeIcon.textContent = "🙈"; // hide icon
    } else {
        input.type = "password";
        eyeIcon.textContent = "👀"; // show icon
    }
}
</script>
</body>
</html>
