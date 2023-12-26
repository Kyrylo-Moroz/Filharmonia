<!DOCTYPE html>
<html>
<head>
    <title>FILHARMONIA</title>
</head>
<body>
<h1>FILHARMONIA</h1><hr>
<h3>Подробна інформація про користувача: ${user.name}</h3>
<b>Номер телефону: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>Придбані білети:</h4>
<#list user.tickets as ticket>
    <div>
        <p>Білет: <b>${ticket.type}</b> | Ціна: ${ticket.price} pln. | Продукт: ${ticket.product.title} | Опис: ${ticket.product.description}</p>
    </div>
<#else>
    <h3>Білетів немає</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>
