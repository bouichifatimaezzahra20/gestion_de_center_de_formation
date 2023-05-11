<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My details</title>
    <link rel="stylesheet" href="detail.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"
    defer></script>
    <script src="regester.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light ">
        <div class="container-fluid">
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">About</a>
              </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
              </li>
              <div class="logo"><img src="image/logo.png" alt="logo">              </div>
            <form class="d-flex">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>
    <div class="wrapper">
        <div class="section">
                <div class="hamburger">
              
            </div>
             
        </div>
        <div class="sidebar">
            <div class="profile">
                <h3>My Account</h3>
            </div>
            <ul>
                <li>
                    <a href="#" class="active">
                        <span class="icon"><i class="fa-regular fa-user" style="color: #0081c9;"></i></span>
                        <span class="item">My details</span>
                    </a>
                </li>
                <li>
                    <a href="./historique.html">
                        <span class="icon"><i class="fa-regular fa-box-archive" style="color: #000000;"></i></span>
                        <span class="item">My history</span>
                    </a>
                </li>
                <li>
                    <a href="./inscription.html">
                        <span class="icon"><i class="fa-solid fa-list-check" style="color: #000000;"></i></span>
                        <span class="item">My registration</span>
                    </a>
                </li>
                <li>
                </div>
        <form class="form
        ">
            <h5>Personnal information</h5>
            <hr>
            <div class="mb-3 d-flex gap-4">
                <div class="w-50" >

                    <label for="firstName" class="form-label">FirstName</label>
                    <input type="text" class="form-control" id="firstName" name="firstName">

                </div>
          <div class="w-50" >
            <label for="lastName" class="form-label">LastName</label>
            <input type="text" class="form-control" id="firstName" name="laststName">
          </div>
            
        </div>
          <div class="mb-3 d-flex gap-4">
            <div class="w-50" >
                <label for="Address" class="form-label">Address</label>
                <input type="tel" class="form-control" id="Address" name="Address">
            </div>
          <div class="w-50" >
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email">
          </div>
            
          </div>
         
          <div class="mb-3 w-50" >
            <label for="Password" class="form-label">Password</label>
            <input type="password" class="form-control" id="Password" name="Password">
          </div>
          <button type="submit" class="btn btn-primary" name="editUser">Save</button>

            </form>  
</body>
</html>
