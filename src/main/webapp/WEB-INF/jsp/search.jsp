<html>
<head><title>Search Trains</title></head>
<body>
<h2>Search Trains</h2>
<form action="${pageContext.request.contextPath}/train/search" method="post">
    <label>Source:</label>
    <input type="text" name="source" required /><br/>
    <label>Destination:</label>
    <input type="text" name="destination" required /><br/>
    <input type="submit" value="Search" />
</form>
</body>
</html>
