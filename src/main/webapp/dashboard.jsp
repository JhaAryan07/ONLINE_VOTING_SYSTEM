<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.securevote.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard - Online Voting System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<div class="container">

    <div class="header">
        <img src="${pageContext.request.contextPath}/images/emblem.png" alt="Government Emblem">
        <h1>Online Voting System</h1>
        <p>Government of India</p>
    </div>

    <div class="navbar">
        <a href="dashboard">Dashboard</a>
        <a href="vote.jsp">Cast Vote</a>
        <a href="results">Results</a>
        <a href="logout">Logout</a>
    </div>

    <h2>Welcome, <%= user.getUsername() %></h2>
    <p>You can cast your vote or view the results.</p>

    <button onclick="location.href='vote.jsp'">Cast Vote</button>
    <button onclick="location.href='results'">View Results</button>

    <div class="footer">© Online Voting System</div>
</div>
</body>
</html>
