<!DOCTYPE html>
<html>
<head>
    <title>FILHORMONIA</title>
</head>
<body>
<h1>FILHORMONIA</h1><hr>
<h4>Регістрація</h4>
<form action="/registration" method="post">
    Им`я користувача: <input type="text" name="name"><br><br>
    Email: <input type="email" name="email"><br><br>
    Номер телефону: <input type="tel" name="phoneNumber" placeholder="+38(0XX)XXX-XX-XX" required pattern="\+38\(0[0-9]{2}\)[0-9]{3}-[0-9]{2}-[0-9]{2}"><br><br>


    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вход"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>