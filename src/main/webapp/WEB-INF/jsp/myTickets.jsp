<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>My Tickets</title></head>
<body>
<h2>My Booked Tickets</h2>
<table border="1">
    <tr><th>Ticket ID</th><th>Train</th><th>Seat No</th><th>Action</th></tr>
    <c:forEach var="ticket" items="${tickets}">
        <tr>
            <td>${ticket.id}</td>
            <td>${ticket.train.name}</td>
            <td>${ticket.seatNumber}</td>
            <td><a href="${pageContext.request.contextPath}/ticket/cancel?id=${ticket.id}">Cancel</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

