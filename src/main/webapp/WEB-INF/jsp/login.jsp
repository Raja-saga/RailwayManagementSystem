<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>Login</title></head>
<body>
<h2>Login</h2>
<form action="${pageContext.request.contextPath}/login" method="post">
    <label>Email:</label>
    <input type="text" name="email" required /><br/>
    <label>Password:</label>
    <input type="password" name="password" required /><br/>
    <input type="submit" value="Login" />
</form>
<c:if test="${not empty error}">
    <div style="color:red">${error}</div>
</c:if>
<c:if test="${not empty message}">
    <div style="color:green">${message}</div>
</c:if>
<p>New user? <a href="${pageContext.request.contextPath}/signup">Sign up here</a></p>
</body>
</html>

