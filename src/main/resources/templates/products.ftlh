<!DOCTYPE html>
<html>
<head>
    <title>FILHARMONIA</title>
</head>
<body>
<h1>FILHARMONIA</h1>
<hr>
<#if user.email??>
    <h3>Им'я користувача: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Панель адміністратора</a>
    </#if>
<#else>
    <a href="/login">Війти</a></h1>
</#if>
<hr>
<h4>Towary</h4>
<form action="/" method="get">
    Пошук по назві: <input type="text" name="title">
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> normal ${product.normalTicketPrice} pln. VIP ${product.vipTicketPrice} pln. | <a href="/product/${product.id}">Детальніше...</a></p>
    </div>
<#else>
    <h3>Товаров нет</h3>
</#list>
<#if user.isAdmin()>
    <#if user.email??>
        <hr>
        <h3>Створити новий товар</h3>
        <form action="/product/create" method="post" enctype="multipart/form-data">
            Назва: <input type="text" name="title"/><br><br>
            Опис: <input type="text" name="description"/><br><br>
            Ціна normal: <input type="text" name="normalTicketPrice"/><br><br>
            Ціна VIP: <input type="text" name="vipTicketPrice"/><br><br>
            Місто: <input type="text" name="city"/><br><br>
            Перша фотографія: <input type="file" name="file1"/><br><br>
            Друга фотографія: <input type="file" name="file2"/><br><br>
            Третя фотографія: <input type="file" name="file3"/><br><br>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Додати товар "/>
        </form>
    </#if>
</#if>
</body>
</html>