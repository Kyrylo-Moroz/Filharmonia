<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 20px;
        }

        h1 {
            color: #343a40;
            text-align: center;
        }

        h4 {
            color: #343a40;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dee2e6;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #218838;
            color: #ffffff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #d4edda;
        }

        form {
            display: inline-block;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        h3 {
            color: #343a40;
            text-align: center;
        }
    </style>
</head>
<body>
<h1><a href="/" style="text-decoration: none; color: inherit;">PHILHARMONIC</a></h1>
<hr>
<h4>Administrator Panel</h4>
<table>
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
            <td>${user.email}</td>
            <td>${user.phoneNumber}</td>
            <td><#if user.active>true<#else>false</#if></td>
            <td><#list user.roles as role>${role}</#list></td>
            <td>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Ban">
                </form>
            </td>
            <td><a href="/admin/user/edit/${user.id}">Edit</a></td>
            <td><a href="/user/${user.id}">Detailed Information</a></td>
        </tr>
    </#list>
    <#if users?size == 0>
        <tr>
            <td colspan="7"><h3>No users found</h3></td>
        </tr>
    </#if>
</table>
</body>
</html>
