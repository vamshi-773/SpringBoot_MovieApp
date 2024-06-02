<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <nav class="navbar">
        <ul class="navbar-contents">
            <li class="nav-link"><a href="#"><button class="btn login-button"><i class="fas fa-lock lock-icon"></i>  LOGOUT</button></a></li>
            <li class="nav-link"><a href="#"><button class="btn login-button"><i class="fas fa-light fa-user-plus"></i>  PROFILE</button></a></li>
        </ul>
    </nav>
    <a href="#"><h1 style="position: absolute;left:10px;top:5px;color: white;letter-spacing: 5px;"><b>MBS</b></h1></a>
</head>
<body>
    <div class="rec-movies">
    <h2 style="color: white;">RECOMENDED MOVIES</h2>
    <ul>
        <li class="rec-cards">
    <div class="card" style="width: 18rem;">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFKkTHLlCm_GvhUjdb6ChLqyZQkOnCw4l02Q&usqp=CAU" class="card-img-top" alt="..." style="width: 100%px;height: 190px;">
        <div class="card-body">
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#"><button>BOOK</button></a>
        </div>
      </div>
    </li>
    <li class="rec-cards">
        <div class="card" style="width: 18rem;">
            <img src="https://m.media-amazon.com/images/M/MV5BMmY5MDZlMDMtMzQzNC00NzUzLTg1NjEtMTY1YmIyM2I2OTNhXkEyXkFqcGdeQXVyMTUwMDg3OTQy._V1_.jpg" class="card-img-top" alt="..." style="width: 100%px;height: 190px;">
            <div class="card-body">
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#"><button>BOOK</button></a>
            </div>
          </div>
        </li>
        <li class="rec-cards">
            <div class="card" style="width: 18rem;">
                <img src="https://www.thetelugufilmnagar.com/wp-content/uploads/2023/03/MemFamous.webp" class="card-img-top" alt="..." style="width: 100%px;height: 190px;">
                <div class="card-body">
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#"><button>BOOK</button></a>
                </div>
              </div>
            </li>
            <li class="rec-cards">
                <div class="card" style="width: 18rem;">
                    <img src="https://www.cinejosh.com/reviewsimg/big/ee-nagaraniki-emaindi-review_b_2906180226.jpg" class="card-img-top" alt="..." style="width: 100%px;height: 190px;">
                    <div class="card-body">
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#"><button>BOOK</button></a>
                    </div>
                  </div>
                </li>
    </ul>
    </div>
    <div class="upcoming-movies">
        <h2 style="color: white;">UPCOMING MOVIES</h2>
        <ul>
            <li class="rec-cards">
        <div class="card" style="width: 18rem;">
            <img src="https://upload.wikimedia.org/wikipedia/en/0/0e/Salaar.jpg" class="card-img-top" alt="..." style="width: 100%px;height: 190px;">
            <div class="card-body">
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#"><button>PRE-BOOK</button></a>
            </div>
          </div>
        </li>
        <li class="rec-cards">
            <div class="card" style="width: 18rem;">
                <img src="https://www.thetelugufilmnagar.com/wp-content/uploads/2023/01/has-arrived.webp" class="card-img-top" alt="..." style="width: 100%px;height: 190px;">
                <div class="card-body">
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#"><button>PRE-BOOK</button></a>
                </div>
              </div>
            </li>
            <li class="rec-cards">
                <div class="card" style="width: 18rem;">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgKYHRl5--zV2_1gMYNRMD3LS9H0CklW_2hQ&usqp=CAU" class="card-img-top" alt="..." style="width: 100%px;height: 190px;">
                    <div class="card-body">
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#"><button>PRE-BOOK</button></a>
                    </div>
                  </div>
                </li>
                <li class="rec-cards">
                    <div class="card" style="width: 18rem;">
                        <img src="https://upload.wikimedia.org/wikipedia/en/3/3f/Jailer_film_poster.jpg" class="card-img-top" alt="..." style="width: 100%px;height: 190px;">
                        <div class="card-body">
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#"><button>PRE-BOOK</button></a>
                        </div>
                      </div>
                    </li>
        </ul>
        </div>
</body>
</html>