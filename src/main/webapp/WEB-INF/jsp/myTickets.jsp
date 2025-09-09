<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<div class="container mt-4">
  <h2>My Booked Tickets</h2>
  <table class="table table-bordered">
    <thead>
      <tr><th>Ticket ID</th><th>Train</th><th>Seat No</th><th>Action</th></tr>
    </thead>
    <tbody>
    <c:forEach var="ticket" items="${tickets}">
      <tr>
        <td>${ticket.id}</td>
        <td>${ticket.train.name}</td>
        <td>${ticket.seatNumber}</td>
        <td>
          <a class="btn btn-danger btn-sm"
             href="${pageContext.request.contextPath}/ticket/cancel?id=${ticket.id}">
            Cancel
          </a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
<%@ include file="footer.jsp" %>
