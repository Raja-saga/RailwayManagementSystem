<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>IRCTC Ticketing</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/train/search">IRCTC</a>
    <div>
      <a class="btn btn-outline-light btn-sm" href="${pageContext.request.contextPath}/ticket/my">My Tickets</a>
      <a class="btn btn-outline-light btn-sm" href="${pageContext.request.contextPath}/logout">Logout</a>
    </div>
  </div>
</nav>
