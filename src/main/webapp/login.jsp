<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Online Voting System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>
<div class="container">

    <div class="header">
        <img src="${pageContext.request.contextPath}/images/emblem.png" alt="Government Emblem">
        <h1>Online Voting System</h1>
        <p>GUVI PROJECT THIRD SEMESTER</p>
    </div>

    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
        <a href="results">Results</a>
    </div>

    <h2>Login</h2>

    <% String error = (String) request.getAttribute("error");
        if (error != null) { %>
    <p class="error"><%= error %></p>
    <% } %>

    <form action="login" method="post">
        <label>Username</label>
        <input type="text" name="username" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <button type="submit">Login</button>
    </form>

    <div class="footer">© Online Voting System</div>
</div>
</body>
</html>
