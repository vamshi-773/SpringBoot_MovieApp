<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Result</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
    body{
    background-color: #2e2e2e;
	}
	* {
    	font-family: roboto;
	}
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .card {
            width: 25rem;
            margin: 10px;
        }
        .navbar {
    background-color: rgba(255, 255, 255, .5); 
    color:yellow;
  }
    </style>
</head>
<body bgcolor="#2e2e2e">
<h1 style="text-align: center;"></h1>
 <nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="http://localhost:1818/homePage">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link" href="http://localhost:1818/movieLists">Movie Lists</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
    <div class="card-container">
        <c:forEach items="${ml}" var="mlobj">
            <div class="card" style="width: 18rem;">
                <img src="${mlobj.img}" class="card-img-top" alt="..." style="width: 100%px;height: 190px;">
                <div class="card-body" style="background-color: white;">
                    <h5 class="card-title" style="background-color: white;text-align: center;">${mlobj.name}</h5>
                </div>
            </div>
        </c:forEach>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
