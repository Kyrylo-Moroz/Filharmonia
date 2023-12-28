<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
</head>
<body>
<h1>PHILHARMONIC</h1>
<hr>
<h4>Product information</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Product name: </b>${product.title}<br>
<b>Product description: </b>${product.description}<br>
<b>Start time: </b>${product.start_time}<br>
<b>end time: </b>${product.end_time}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b>${product.user.name}<br>
<form action="/purchase-ticket" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="hidden" name="productId" value="${product.id}">
    <label>
        <input type="radio" name="ticketType" value="normal" checked>
        Price normal: ${product.normalTicketPrice}
    </label><br>
    <label>
        <input type="radio" name="ticketType" value="vip">
        Price VIP: ${product.vipTicketPrice}
    </label><br>
    <input type="submit" value="Choose a ticket"/>
</form>

</body>
</html>
