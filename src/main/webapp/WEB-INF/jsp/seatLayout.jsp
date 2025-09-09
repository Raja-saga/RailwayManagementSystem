<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="header.jsp" %>
<div class="container mt-4">
  <h2>Seats for Train: ${train.name}</h2>
  <table class="table table-bordered">
    <tr>
    <c:forEach var="i" begin="1" end="${train.totalSeats}" varStatus="status">
      <td>
        <c:choose>
          <c:when test="${fn:contains(bookedSeats, i)}">
            <span class="text-danger">Seat ${i} - Booked</span>
          </c:when>
          <c:otherwise>
            <form action="${pageContext.request.contextPath}/ticket/book" method="post">
              <input type="hidden" name="trainId" value="${train.id}" />
              <input type="hidden" name="seatNumber" value="${i}" />
              <button class="btn btn-sm btn-success">Book Seat ${i}</button>
            </form>
          </c:otherwise>
        </c:choose>
      </td>
      <c:if test="${status.index % 10 == 9}"></tr><tr></c:if>
    </c:forEach>
    </tr>
  </table>
</div>
<%@ include file="footer.jsp" %>
