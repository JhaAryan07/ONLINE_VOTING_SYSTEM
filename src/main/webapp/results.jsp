<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="com.securevote.model.Candidate" %>
<!DOCTYPE html>
<html>
<head>
    <title>Results - Online Voting System</title>
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
        <%-- If user logged in show user navbar --%>
        <% if (session.getAttribute("user") != null) { %>
        <a href="dashboard">Dashboard</a>
        <a href="vote.jsp">Cast Vote</a>
        <a href="results">Results</a>
        <a href="logout">Logout</a>
        <% } else { %>
        <a href="index.jsp">Home</a>
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
        <a href="results">Results</a>
        <% } %>
    </div>

    <h2>Election Results</h2>

    <table>
        <tr>
            <th>Candidate</th>
            <th>Party</th>
            <th>Votes</th>
        </tr>

        <%
            List<Candidate> candidates =
                    (List<Candidate>) request.getAttribute("candidates");

            if (candidates != null) {
                for (Candidate c : candidates) {
        %>
        <tr>
            <td><%= c.getName() %></td>
            <td><%= c.getParty() %></td>
            <td><%= c.getVotes() %></td>
        </tr>
        <%
                }
            }
        %>
    </table>

    <div class="footer">© Online Voting System</div>
</div>
</body>
</html>
