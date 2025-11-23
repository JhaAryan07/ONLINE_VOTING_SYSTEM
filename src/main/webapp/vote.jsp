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
        <p>Government of India</p>
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
        <select name="candidate" required>
            <option value="">-- Choose One --</option>
            <option value="Candidate A">Candidate A</option>
            <option value="Candidate B">Candidate B</option>
            <option value="Candidate C">Candidate C</option>
        </select>

        <button type="submit">Submit Vote</button>

    </form>

    <div class="footer">
        © Online Voting System
    </div>

</div>

</body>
</html>
