<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<div class="container mt-4">
  <h2>Available Trains</h2>
  <table class="table table-bordered">
    <thead>
      <tr><th>ID</th><th>Name</th><th>Source</th><th>Destination</th><th>Action</th></tr>
    </thead>
    <tbody>
    <c:forEach var="train" items="${trains}">
      <tr>
        <td>${train.id}</td>
        <td>${train.name}</td>
        <td>${train.source}</td>
        <td>${train.destination}</td>
        <td>
          <a class="btn btn-info btn-sm"
             href="${pageContext.request.contextPath}/train/${train.id}/seats">View Seats</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
<%@ include file="footer.jsp" %>
