<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
    <style>
        body {
            font-family: 'Raleway', Arial, Helvetica, sans-serif;
            margin: 20px;
            text-align: center;
            background: #f8f8f8;
        }
        hr{
            border: 1px solid #343a40;
            margin: 20px 0;
        }
    </style>
</head>
<body>
<h1><a href="/" style="text-decoration: none; color: inherit;">PHILHARMONIC</a></h1>
<hr>
<h3>Editing a user: ${user.name}</h3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Save</button>
</form>
</body>
</html>