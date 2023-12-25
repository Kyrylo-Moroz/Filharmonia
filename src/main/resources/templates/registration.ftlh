<!DOCTYPE html>
<html>
<head>
    <title>Filharmonia</title>
</head>
<body>
<h1>Filharmonia</h1><hr>
<h4>Регистрация</h4>
<form action="/registration" method="post">
    Имя пользователя: <input type="text" name="name"><br><br>
    Эл. почта: <input type="email" name="email"><br><br>
    Номер телефона: <input type="tel" name="phoneNumber" placeholder="+38(0XX)XXX-XX-XX" required pattern="\+38\(0[0-9]{2}\)[0-9]{3}-[0-9]{2}-[0-9]{2}"><br><br>


    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вход"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>