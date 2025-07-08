<%@ include file="header.jsp" %>
<div class="container mt-4">
  <h2>Register</h2>
  <c:if test="${not empty msg}"><div class="alert alert-success">${msg}</div></c:if>
  <form method="post" action="register">
    <div class="mb-3">
      <label>Username</label>
      <input name="username" class="form-control"/>
    </div>
    <div class="mb-3">
      <label>Password</label>
      <input name="password" type="password" class="form-control"/>
    </div>
    <div class="mb-3">
      <label>Full Name</label>
      <input name="fullName" class="form-control"/>
    </div>
    <button class="btn btn-primary">Sign Up</button>
  </form>
</div>
<%@ include file="footer.jsp" %>
