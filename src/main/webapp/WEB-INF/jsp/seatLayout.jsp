<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head><title>Seat Layout</title></head>
<body>
<h2>Seats for Train: ${train.name}</h2>
<table border="1">
    <tr>
    <c:forEach var="i" begin="1" end="${train.totalSeats}" varStatus="status">
        <td>
            <c:choose>
                <c:when test="${fn:contains(bookedSeats, i)}">
                    Seat ${i} - Booked
                </c:when>
                <c:otherwise>
                    <form action="${pageContext.request.contextPath}/ticket/book" method="post">
                        <input type="hidden" name="trainId" value="${train.id}" />
                        <input type="hidden" name="seatNumber" value="${i}" />
                        <input type="submit" value="Book Seat ${i}" />
                    </form>
                </c:otherwise>
            </c:choose>
        </td>
        <!-- Break row every 10 seats for layout -->
        <c:if test="${status.index % 10 == 9}"></tr><tr></c:if>
    </c:forEach>
    </tr>
</table>
</body>
</html>

