<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 20px;
            text-align: center;
        }

        h1, h4 {
            color: #343a40;
        }

        hr {
            border: 1px solid #343a40;
            margin: 20px 0;
        }

        img {
            margin-bottom: 10px;
        }

        b {
            color: #007bff;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
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
<b>End time: </b>${product.end_time}<br>
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
