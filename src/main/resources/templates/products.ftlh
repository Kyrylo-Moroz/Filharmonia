<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
</head>
<body>
<h1>PHILHARMONIC</h1>
<hr>
<#if user.email??>
    <h3>Username: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Log out"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Admin panel</a>
    <#else>
        <a href="/user/${user.id}">My profile</a>
    </#if>

<#else>
    <a href="/login">Login</a></h1>
</#if>
<hr>
<h4>Products</h4>
<form action="/" method="get">
    Search by name: <input type="text" name="title">
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p>
            <b>${product.title}</b> | Start time: ${product.start_time} |
            Price normal: ${product.normalTicketPrice} pln. |
            Price VIP: ${product.vipTicketPrice} pln. |
            <a href="/product/${product.id}">More details...</a>
            <#if user.isAdmin()>
        <form action="/product/delete/${product.id}" method="post" style="display: inline;">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" onclick="return confirm('Are you sure you want to delete this product?');">Delete</button>
        </form>
        </#if>
        </p>
    </div>
<#else>
    <h3>There are no products</h3>
    <a href="/">Back</a>
</#list>
<#if user.isAdmin()>
    <#if user.email??>
        <hr>
        <h3>Create a new product</h3>
        <form action="/product/create" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
            Product name: <input type="text" name="title" onkeydown="return event.key !== 'Enter'"/><br><br>
            Description: <input type="text" name="description" onkeydown="return event.key !== 'Enter'"/><br><br>
            Start time: <input type="time" name="start_time" onkeydown="return event.key !== 'Enter'"/><br><br>
            End time: <input type="time" name="end_time" onkeydown="return event.key !== 'Enter'"/><br><br>
            Price normal: <input type="text" name="normalTicketPrice" onkeydown="return event.key !== 'Enter'"/><br><br>
            Price VIP: <input type="text" name="vipTicketPrice" onkeydown="return event.key !== 'Enter'"/><br><br>
            City: <input type="text" name="city" onkeydown="return event.key !== 'Enter'"/><br><br>
            The first photo: <input type="file" name="file1" onkeydown="return event.key !== 'Enter'"/><br><br>
            Second photo: <input type="file" name="file2" onkeydown="return event.key !== 'Enter'"/><br><br>
            The third photo: <input type="file" name="file3" onkeydown="return event.key !== 'Enter'"/><br><br>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Add product"/>
        </form>

        <script>
            function validateForm() {
                // Tutaj możesz dodać dodatkową walidację, jeśli to konieczne
                return true;
            }
        </script>
    </#if>
</#if>
</body>
</html>