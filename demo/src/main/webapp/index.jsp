<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1" style="border-radius: 50%;height: 15px;width: 15px;"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2" style="border-radius: 50%;height: 15px;width: 15px;"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3" style="border-radius: 50%;height: 15px;width: 15px;"></button>
        </div>
        <div class="carousel-inner">* 
            <div class="carousel-item active" style="width:100%;height:641px; background: url(https://wallpapercave.com/wp/wp4926029.jpg);background-size:cover;">
            <h1 style="color: white; position: absolute;top:35%;letter-spacing: 3px;right: 15px;"><b>SPIDER MAN FAR</b></h1>
            <h1  style="color: white; position: absolute;top:45%;letter-spacing: 3px;right: 35px;"><b>FROM HOME</b></h1>
            </div>
            <div class="carousel-item c2" style="width:100%;height:641px; background: url(https://cdn.wallpapersafari.com/63/91/EGjUcK.jpg);background-size:cover;">
                <h1 style="color: white; position: absolute;top:50%;letter-spacing: 3px;right: 15px;"><b>LOOPER</b></h1>
            </div>
            <div class="carousel-item c3" style="width:100%;height:641px; background: url(https://www.teahub.io/photos/full/67-675374_hollywood-movies-background.jpg);background-size:cover;">
                <h1 style="color: white; position: absolute;top:45%;letter-spacing: 3px;right: 15px;border-color: black;"><b>OBLIVION</b></h1>  
            </div>
        </div>
        <a href="#"><h1 style="position: absolute;left:10px;top:5px;color: white;letter-spacing: 5px;"><b>WNTW</b></h1></a>
        <nav class="navbar">
            <ul class="navbar-contents">
                <li class="nav-link"><a href="login"><button class="btn login-button"><i class="fas fa-lock lock-icon"></i>  LOGIN</button></a></li>
                <li class="nav-link"><a href="userRegister"><button class="btn login-button"><i class="fas fa-light fa-user-plus"></i> SIGN-UP</button></a></li>
            </ul>
        </nav>
        <ul class="pg-ending">
            <li class="nav-link"><a href="movieLists"><button class="btn" style="background-color: yellow;border-color: yellow;"><b>Create Lists</b></button></a></li>
            <li class="nav-link"><a href="#"><button class="btn login-button">MORE</button></a></li>
        </ul>
    </div>
</body>
</html>
