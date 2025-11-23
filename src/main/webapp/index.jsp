<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Online Voting System</title>

    <!-- FIXED CSS LINK -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<div class="container">

    <div class="header">
        <img src="${pageContext.request.contextPath}/images/emblem.png" alt="Government Emblem">
        <h1>Online Voting System</h1>
        <p>Government of India</p>
    </div>

    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
        <a href="results">Results</a>
    </div>

    <h2>Welcome</h2>
    <p>Please login or register to continue.</p>

    <button onclick="location.href='login.jsp'">Login</button>
    <button onclick="location.href='register.jsp'">Register</button>
    <button onclick="location.href='results'">View Results</button>

    <div class="footer">
        © Online Voting System
    </div>

</div>

</body>
</html>
