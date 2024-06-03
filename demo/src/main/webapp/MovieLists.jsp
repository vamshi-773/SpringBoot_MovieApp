<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MovieLists</title>
    <style>
  .navbar {
    background-color: rgba(255, 255, 255, .5); 
    color:yellow;
  }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="homePage">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link" href="movieLists">Movie Lists</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</head>
<body>
 <%@ include file="AddList.jsp" %>
<center>
<div class="dropdown" style="margin:20px auto;">
    <a class="btn btn-secondary dropdown-toggle primary" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        Movies List
    </a>
    <ul class="dropdown-menu">
        <c:forEach items="${lobj}" var="lobj">
            <li><a class="dropdown-item" href="http://localhost:1818/movieList/${lobj.name}">${lobj.name}</a></li>
        </c:forEach>
    </ul>
</div>
</center>
</body>
</html>
