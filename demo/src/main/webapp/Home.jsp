<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Example</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="home.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
    <form method="post" action="searchMovie">
        <div class="input-group">
            <input type="text" class="form-control rounded" placeholder="Enter Movie Name Here" aria-label="Search" aria-describedby="search-addon" name="Name" style="text-align: center;">
            <button class="btn btn-outline-primary search-btn" type="submit" data-mdb-ripple-init style="color: yellow; border-color: yellow;">search</button>
        </div>
    </form>
    
    <c:if test="${obj ne null}">
        <div class="card" style="width: 25rem;margin:10px auto;">
    <img src="${obj.post}" class="card-img-top" alt="..." style="width: 100%px;height: 190px;">
    <div class="card-body" style="background-color: white;">
        <h5 class="card-title" style="background-color: white;text-align: center;">${obj.title}</h5>
        <p class="card-title" style="background-color: white;text-align: center;">Release Year:${obj.year}</p>
        <p class="card-text" style="background-color: white;">${obj.plot}</p>
        <div class="text-center"> <!-- Added text-center class here -->
            <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  Add To List
</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Available Lists</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <c:forEach items="${lobj}"  var="lobj">
           <a href="addmovie/${lobj.name}">Add To ${lobj.name} List</a>
           <br/>
        </c:forEach>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
        </div>
    </div>
</div>
    </c:if>
   <p style="color:white;">${sma}</p>
</body>
</html>
