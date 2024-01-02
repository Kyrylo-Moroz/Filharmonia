<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
</head>
<body>
<h1>PHILHARMONIC</h1><hr>
<h4>Authorization</h4>
<form action="/login" method="post">
    Email: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Zaloguj się"/>
</form>
<a href="/registration">Register</a>
</body>
</html>