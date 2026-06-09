<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<Style>
.overlay{
    position: fixed;
    top: 0;
    left: 0;

    width: 100%;
    height: 100vh;

    background: rgba(0,0,0,0.5);

    display: flex;
    justify-content: center;
    align-items: center;

}
    .container{        
        width: 200px;
        height: 200px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(63, 41, 41, 0.5);
        text-align: center;
       }
       p{
         color: green;
         font-size: 20px;
       }
    button{
    margin-top: 30px;
    padding: 10px 20px;
    background-color: red;
    color: #fff;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    box-shadow: 0 2px 8px rgba(0,0,0,0.3);
}
</Style>
</head>
<body>
<div class="overlay">
    <Div class="container">
        <p>Password changed successfully</p>
        <button onclick="window.location = 'logout'">OK</button>
    </Div>
</div>
</body>

</html>