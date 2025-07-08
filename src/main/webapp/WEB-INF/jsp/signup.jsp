<html>
<head><title>Sign Up</title></head>
<body>
<h2>Sign Up</h2>
<form action="${pageContext.request.contextPath}/signup" method="post">
    <label>Name:</label>
    <input type="text" name="name" required /><br/>
    <label>Email:</label>
    <input type="email" name="email" required /><br/>
    <label>Password:</label>
    <input type="password" name="password" required /><br/>
    <input type="submit" value="Register" />
</form>
</body>
</html>
