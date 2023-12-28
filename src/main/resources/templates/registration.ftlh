<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
</head>
<body>
<h1>PHILHARMONIC</h1><hr>
<h4>Registration</h4>
<form action="/registration" method="post">
    Username: <input type="text" name="name"><br><br>
    Email: <input type="email" name="email"><br><br>
    Phone number: <input type="tel" name="phoneNumber" placeholder="+48 XXX-XXX-XXX" required pattern="+48 \[0-9]{3}[0-9]{3}[0-9]{3}"maxlength="12"><br><br>


    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Login"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>