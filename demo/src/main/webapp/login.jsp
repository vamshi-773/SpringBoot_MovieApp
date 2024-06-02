<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Classic Login Form Example</title>
  <link href="https://fonts.googleapis.com/css?family=Assistant:400,700" rel="stylesheet"><link rel="stylesheet" href="login.css">

</head>
<body>
<section class='login' id='login'>
  <div class='head'>
  <h1 class='company'>What's Next To Watch</h1>
  </div>
  <h2 class="msg" style="text-align: center;color:#fd5c63;">${msg}</h2>
  <p class='msg'>Welcome back</p>
  <div class='form'>
    <form method="post" action="userlogin">
  <input type="text" placeholder='Email' class='text' id='username' name ="email" required><br>
  <input type="password" placeholder='Password' class='password' name="password"><br>
  <button type="submit" class="btn-login">Login</button>
    </form>
  </div>
</section>
</body>
</html>


