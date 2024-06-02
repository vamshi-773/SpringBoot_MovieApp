<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Register Page</title>
  <link href="https://fonts.googleapis.com/css?family=Assistant:400,700" rel="stylesheet">
  <link rel="stylesheet" href="login.css">
  <style>
    /* Add some space between the input fields */
    .form input {
      margin-bottom: 10px;
      margin-top: 10px;
    }
  </style>
</head>
<body>
  <section class='login' id='login'>
    <div class='head'>
      <h1 class='company'>What's Next To Watch</h1>
    </div>
    <div class='form'>
      <form action="userReg" method="post">
        <input type="text" placeholder='Full Name' name="name" class='text' id='fullname' required><br>
        <input type="email" placeholder='Email' name="email" class='email' id='email' required><br>
        <input type="password" placeholder='Password' name="password" class='password' required><br>
        <button class='btn-login' id='do-login' type="submit">REGISTER</button>
        <a href="login" class='forgot'>LOGIN</a>
      </form>
    </div>
  </section>
</body>
</html>

