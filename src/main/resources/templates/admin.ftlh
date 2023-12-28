<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
</head>
<body>
<h1>PHILHARMONIC</h1>
<hr>
<h4>Administrator Panel</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Activity</th>
        <th>Roles</th>
        <th>Ban</th>
        <th>Edit</th>
        <th>Detailed Information</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}</#list></th>
            <th>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Бан">
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Edit</a></th>
            <th><a href="/user/${user.id}">Detailed Information</a></th>
        </tr>
    <#else>
        <h3>No users found</h3>
    </#list>
</table>
</body>
</html>