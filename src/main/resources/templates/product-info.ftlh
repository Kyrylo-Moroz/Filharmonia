<!DOCTYPE html>
<html>
<head>
    <title>Filharmonia</title>
</head>
<body>
<h1>FILHORMONIA</h1><hr>
<h4>Інформація про товар</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Назва товару: </b>${product.title}<br>
<b>Опис товару: </b>${product.description}<br>
<b>Ціна: </b>${product.price}<br>
<b>Город: </b>${product.city}<br>
<b>Автор: </b>${product.user.name}<br>
<b>Номер телефона: </b>${product.user.phoneNumber!"недоступний"}<br>
</body>
</html>
