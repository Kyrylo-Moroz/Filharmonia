<!DOCTYPE html>
<html>
<head>
    <title>Filharmonia</title>
</head>
<body>
<h1>FILHORMONIA</h1><hr>
<h4>Towary</h4>
<#list products as product>
    <div>
        <p><b>${product. title}</b> ${product.price} | <a href ="/product/${product.id}">Подробниее...</a></p>
    </div>
</#list>
<hr>
<h3>Створити новий товар</h3>
<form action="/product/create" method="post">
    Назва: <input type="text" name="title"/><br><br>
    Опис: <input type="text" name="description"/><br><br>
    Ціна: <input type="text" name="price"/><br><br>
    Місто: <input type="text" name="city"/><br><br>
    Автор: <input type="text" name="author"/><br><br>
    <input type="submit" value="Додати товар "/>
</form>
</body>
</html>