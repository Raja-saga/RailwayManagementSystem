<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>Available Trains</title></head>
<body>
<h2>Trains</h2>
<table border="1">
  <tr><th>ID</th><th>Name</th><th>Source</th><th>Destination</th><th>Action</th></tr>
  <c:forEach var="train" items="${trains}">
    <tr>
      <td>${train.id}</td>
      <td>${train.name}</td>
      <td>${train.source}</td>
      <td>${train.destination}</td>
      <td>
        <a href="${pageContext.request.contextPath}/train/${train.id}/seats">View Seats</a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
