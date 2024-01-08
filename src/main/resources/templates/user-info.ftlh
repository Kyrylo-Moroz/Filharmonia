<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
</head>
<body>
<h1><a href="/" style="text-decoration: none; color: inherit;">PHILHARMONIC</a></h1>
<h3>Detailed information about the user: ${user.name}</h3>
<b>Phone number: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>Purchased tickets:</h4>
<#list user.tickets as ticket>
    <div>
        <p>
            Ticket: <b>${ticket.type}</b> | Start time: ${ticket.product.start_time} | Price: ${ticket.price} pln. |
            Product: ${ticket.product.title} | Description: ${ticket.product.description}
            | <a href="/delete-ticket/${ticket.id}" onclick="return confirm('Are you sure you want to delete this ticket?');">Delete ticket</a>
        </p>
    </div>
<#else>
    <h3>There are no tickets</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>
