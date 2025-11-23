<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.securevote.model.User" %>

<%
    HttpSession s = request.getSession(false);
    User userHeader = (s != null) ? (User) s.getAttribute("user") : null;
%>

<div class="topbar">
    <div class="topbar-title">Online Voting System</div>

    <div class="topbar-nav">
        <% if (userHeader == null) { %>
        <a href="index.jsp">Home</a>
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
        <a href="results">Results</a>
        <% } else { %>
        <a href="dashboard">Dashboard</a>
        <a href="vote.jsp">Vote</a>
        <a href="results">Results</a>
        <a href="logout">Logout</a>
        <% } %>
    </div>
</div>
