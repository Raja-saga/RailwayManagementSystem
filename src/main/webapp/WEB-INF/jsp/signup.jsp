<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<div class="container mt-4">
  <h2>Register</h2>
  <form action="${pageContext.request.contextPath}/signup" method="post">
    <div class="mb-3">
      <label>Name</label>
      <input name="name" class="form-control" required/>
    </div>
    <div class="mb-3">
      <label>Email</label>
      <input name="email" type="email" class="form-control" required/>
    </div>
    <div class="mb-3">
      <label>Password</label>
      <input name="password" type="password" class="form-control" required/>
    </div>
    <button class="btn btn-success">Sign Up</button>
  </form>
</div>
<%@ include file="footer.jsp" %>
