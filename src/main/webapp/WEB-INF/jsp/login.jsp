<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<div class="container mt-4">
  <h2>Login</h2>
  <form action="${pageContext.request.contextPath}/login" method="post">
    <div class="mb-3">
      <label>Email</label>
      <input type="text" name="email" required class="form-control"/>
    </div>
    <div class="mb-3">
      <label>Password</label>
      <input type="password" name="password" required class="form-control"/>
    </div>
    <button class="btn btn-primary">Login</button>
  </form>

  <c:if test="${not empty error}">
    <div class="alert alert-danger mt-2">${error}</div>
  </c:if>
  <c:if test="${not empty message}">
    <div class="alert alert-success mt-2">${message}</div>
  </c:if>

  <p class="mt-3">New user? <a href="${pageContext.request.contextPath}/signup">Sign up here</a></p>
</div>
<%@ include file="footer.jsp" %>
