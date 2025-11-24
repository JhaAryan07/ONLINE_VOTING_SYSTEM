<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cast Your Vote</title>
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
        <a href="dashboard">Dashboard</a>
        <a href="results">Results</a>
        <a href="logout">Logout</a>
    </div>

    <h2>Cast Your Vote</h2>

    <form action="vote" method="post">

        <label>Select Candidate</label>
        <select name="candidateId" required>
            <option value="">-- Choose One --</option>
            <option value="1">Alice (Party A)</option>
            <option value="2">Bob (Party B)</option>
            <option value="3">Charlie (Party C)</option>
        </select>

        <button type="submit">Submit Vote</button>

    </form>

    <div class="footer">
        © Online Voting System
    </div>

</div>

</body>
</html>
