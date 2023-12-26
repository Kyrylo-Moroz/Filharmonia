<!DOCTYPE html>
<html>
<head>
    <title>FILHORMONIA</title>
</head>
<body>
<h1>FILHORMONIA</h1>
<hr>
<h4>Інформація про товар</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Назва товару: </b>${product.title}<br>
<b>Опис товару: </b>${product.description}<br>
<b>Місто: </b>${product.city}<br>
<b>Автор: </b>${product.user.name}<br>
<form action="/purchase-ticket" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="hidden" name="productId" value="${product.id}">
    <label>
        <input type="radio" name="ticketType" value="normal" checked>
        Ціна normal: ${product.normalTicketPrice}
    </label><br>
    <label>
        <input type="radio" name="ticketType" value="vip">
        Ціна VIP: ${product.vipTicketPrice}
    </label><br>
    <input type="submit" value="Вибрати білет"/>
</form>

</body>
</html>
