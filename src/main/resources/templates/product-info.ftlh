<!DOCTYPE html>
<html>
<head>
    <title>Filharmonia</title>
</head>
<body>
<h1>FILHORMONIA</h1><hr>
<h4>Інформація про товар</h4>
<b>Назва: </b>${product.title}<br>
<b>Опис: </b>${product.description}<br>
<b>Ціна: </b>${product.price}<br>
<b>Місто: </b>${product.city}<br>
<b>Автор: </b>${product.author}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Видалити товар "/>
</form>
</body>
</html>