<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHILHARMONIC</title>
    <style>
        body {
            font-family: 'Raleway', Arial, Helvetica, sans-serif;
            margin: 20px;
            text-align: left;
            background: #f8f8f8;
            display: flex;
            justify-content: space-between;
        }

        .left-side {
            flex: 1;
            padding: 20px;
            color: #000;
        }

        .right-side {
            flex: 1;
            padding: 20px;
            text-align: right;
        }

        img {
            margin-bottom: 10px;
            width: 100%;
        }

        button {
            background-color: #83014d;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #560c37;
        }
    </style>
</head>
<body>

<div class="left-side">
    <h1><a href="/" style="text-decoration: none; color: inherit;">PHILHARMONIC</a></h1>
    <hr>
    <h4>Product information</h4>
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
            <button type="submit" value="Choose a ticket">Choose a ticket</button>
    </form>
</div>

<div class="right-side">
    <#list images as img>
        <img src="/images/${img.id}" height="500px" style="display: none;"/><br><br>
    </#list>

    <button onclick="plusDivs(-1)">❮ Prev</button>
    <button onclick="plusDivs(1)">Next ❯</button>
</div>

<script>
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function showDivs(n) {
        var i;
        var x = document.querySelectorAll('.right-side img');
        if (n > x.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = x.length }
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        x[slideIndex - 1].style.display = "block";
    }
</script>

</body>
</html>
