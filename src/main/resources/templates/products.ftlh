<!DOCTYPE html>
<html>
<head>
    <title>Filharmonia</title>
</head>
<body>
<h1>Filharmonia| <a href="/login">Войти</a></h1><hr>
<form action ="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вийти">
</form>
<h4>Towary</h4>
<form action="/" method="get">
    Пошук по назві: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} pln. | <a href="/product/${product.id}">Подробніше...</a></p>
    </div>
<#else>
    <h3>Товаров нет</h3>
</#list>
<hr>
<h3>Створити новий товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Назва: <input type="text" name="title"/><br><br>
    Опис: <input type="text" name="description"/><br><br>
    Ціна: <input type="text" name="price"/><br><br>
    Місто: <input type="text" name="city"/><br><br>
    Автор: <input type="text" name="author"/><br><br>
    Перша фотографія: <input type="file" name="file1"/><br><br>
    Друга фотографія: <input type="file" name="file2"/><br><br>
    Третя фотографія: <input type="file" name="file3"/><br><br>
    <input type="submit" value="Додати товар "/>
</form>
</body>
</html>