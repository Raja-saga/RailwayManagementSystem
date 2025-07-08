<%@ include file="header.jsp" %>
<div class="container mt-4">
  <h2>Book Seats</h2>
  <form method="post" action="book">
    <input type="hidden" name="trainId" value="${trainId}"/>
    <div class="mb-3">
      <label>Number of Seats</label>
      <input name="seats" type="number" min="1" class="form-control"/>
    </div>
    <button class="btn btn-success">Confirm Booking</button>
  </form>
</div>
<%@ include file="footer.jsp" %>
