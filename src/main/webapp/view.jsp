<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"
uri="jakarta.tags.core" %>
<%@ taglib prefix="fn"
uri="jakarta.tags.functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Messages</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    background-image:url(image/desktopBackground.png);
    background-size:cover;
    background-position:center;
    min-height:100vh;
}

nav{
    height:50px;
    background:gray;
    display:flex;
    justify-content:center;
    align-items:center;
    font-size:30px;
    color:white;
}

nav a{
    position:fixed;
    left:15px;
    color:white;
    text-decoration:none;
}

.container{
    margin:50px auto;
    width:90%;
}

table{
    width:100%;
    border-collapse:collapse;
    background:white;
}

th,td{
    border:1px solid black;
    padding:10px;
    text-align:left;
}

.heading th{
    background:#881c21;
    color:white;
}

tr:nth-child(even){
    background:#ddd;
}

.message-col{
    width:35%;
}

.delbtn{
    background:red;
    color:white;
    text-decoration:none;
    padding:8px 15px;
    border-radius:5px;
}

.delbtn:hover{
    background:darkred;
}

/* Popup */

.popup{
    display:none;
    position:fixed;
    top:0;
    left:0;
    width:100%;
    height:100vh;
    background:rgba(0,0,0,0.5);
    justify-content:center;
    align-items:center;
    z-index:9999;
}

.popup-box{
    background:white;
    width:400px;
    padding:25px;
    border-radius:10px;
    text-align:center;
}

.popup-box h3{
    margin-bottom:15px;
}

.popup-box p{
    word-break:break-word;
}

.popup-box button{
    margin-top:20px;
    padding:10px 20px;
    border:none;
    border-radius:5px;
    background:#007BFF;
    color:white;
    cursor:pointer;
}
</style>
</head>

<body>

<nav>
    <a href="admin.jsp">◀</a>
    All Messages
</nav>

<div class="container">
<table>

<thead>
<tr class="heading">
    <th>S.No</th>
    <th>Name</th>
    <th>Email</th>
    <th>Message</th>
    <th>Time</th>
    <th>Action</th>
</tr>
</thead>

<tbody>

<c:forEach var="msg" items="${messages}">
<tr>

<td>${msg.sno}</td>
<td>${msg.name}</td>
<td>${msg.email}</td>

<td class="message-col">
${fn:length(msg.message)>40 ? fn:substring(msg.message,0,40).concat("...") : msg.message}
<c:if test="${fn:length(msg.message)>40 }">
<a href="#" onclick="showMessage('${msg.message}'); return false;">
View More
</a>
</c:if>

</td>

<td>${msg.messageTime}</td>

<td>
<a href="deleteMessage?sno=${msg.sno}"
class="delbtn"
onclick="return confirm('Delete this message?')">
Delete
</a>
</td>

</tr>
</c:forEach>

</tbody>
</table>
</div>

<!-- Popup -->

<div id="popup" class="popup">
<div class="popup-box">

<h3>Full Message</h3>

<p id="fullMessage"></p>

<button onclick="closePopup()">
Close
</button>

</div>
</div>

<script>
function showMessage(message){
    document.getElementById("fullMessage").innerText = message;
    document.getElementById("popup").style.display = "flex";
}

function closePopup(){
    document.getElementById("popup").style.display = "none";
}
</script>

</body>
</html>