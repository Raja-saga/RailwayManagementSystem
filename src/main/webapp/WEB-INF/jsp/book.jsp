<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<div class="container mt-4">
  <h2>Book Seats</h2>
  <form method="post" action="${pageContext.request.contextPath}/ticket/book">
    <input type="hidden" name="trainId" value="${trainId}"/>
    <div class="mb-3">
      <label>Seat Number</label>
      <input name="seatNumber" type="number" min="1" class="form-control" required/>
    </div>
    <button class="btn btn-success">Confirm Booking</button>
  </form>
</div>
<%@ include file="footer.jsp" %>
