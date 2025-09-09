<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<div class="container mt-4">
  <h2>Search Trains</h2>
  <form action="${pageContext.request.contextPath}/train/search" method="post">
    <div class="row">
      <div class="col-md-5 mb-3">
        <input name="source" placeholder="Source" required class="form-control"/>
      </div>
      <div class="col-md-5 mb-3">
        <input name="destination" placeholder="Destination" required class="form-control"/>
      </div>
      <div class="col-md-2 mb-3">
        <button class="btn btn-success w-100">Search</button>
      </div>
    </div>
  </form>
</div>
<%@ include file="footer.jsp" %>
