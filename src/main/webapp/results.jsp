<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="com.securevote.model.Candidate" %>
<!DOCTYPE html>
<html>
<head>
    <title>Election Results</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

    <jsp:include page="header.jsp" />

    <div class="container">
        <h2>Live Election Results</h2>

        <table>
            <tr>
                <th>Candidate Name</th>
                <th>Party Affiliation</th>
                <th>Total Votes</th>
            </tr>
            <%
                List<Candidate> candidates = (List<Candidate>) request.getAttribute("candidates");
                if (candidates != null) {
                    for (Candidate c : candidates) {
            %>
            <tr>
                <td><%= c.getName() %></td>
                <td><%= c.getParty() %></td>
                <td><strong><%= c.getVotes() %></strong></td>
            </tr>
            <%      }
                } else {
            %>
            <tr>
                <td colspan="3">No results available at this time.</td>
            </tr>
            <% } %>
        </table>

        <jsp:include page="footer.jsp" />
    </div>

</body>
</html>