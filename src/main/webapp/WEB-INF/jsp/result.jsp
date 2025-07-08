<%@ include file="header.jsp" %>
<div class="container mt-4">
  <h2>Search Trains</h2>
  <form method="post" action="search">
    <div class="row">
      <div class="col-md-5 mb-3">
        <input name="source" placeholder="Source" class="form-control"/>
      </div>
      <div class="col-md-5 mb-3">
        <input name="destination" placeholder="Destination" class="form-control"/>
      </div>
      <div class="col-md-2 mb-3">
        <button class="btn btn-success w-100">Search</button>
      </div>
    </div>
  </form>
</div>
<%@ include file="footer.jsp" %>
