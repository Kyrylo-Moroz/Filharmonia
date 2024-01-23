<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #FFFAF0;
            margin: 20px;
            text-align: center;
        }

        h1, h3, h4 {
            color: #343a40;
            font-weight: normal;
        }

        hr {
            border: 0;
            height: 1px;
            background-color: #343a40;
            margin: 20px 0;
        }

        a {
            text-decoration: none;
            color: #007bff;
            transition: color 0.3s ease;
        }

        a:hover {
            text-decoration: underline;
            color: #0056b3;
        }

        form {
            margin-top: 20px;
            display: inline-block;
            text-align: left;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        input[type="text"], input[type="time"], input[type="file"] {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin: 5px 0;
            width: calc(100% - 16px);
        }

        div.product-info {
            background-color: #ffffff;
            border: 1px solid #ddd;
            padding: 15px;
            margin: 10px 0;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        div.product-info p {
            color: #555;
            line-height: 1.6;
        }

        button.delete-btn {
            background-color: #dc3545;
            color: #ffffff;
            padding: 5px 10px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button.delete-btn:hover {
            background-color: #c82333;
        }

        .admin-link, .profile-link, .login-link, .back-link {
            display: inline-block;
            margin-top: 15px;
            background-color: #28a745;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .admin-link:hover, .profile-link:hover, .login-link:hover, .back-link:hover {
            background-color: #218838;
        }

        .product-info {
            border: 1px solid #e1e1e1;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            background-color: #ffffff;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .product-info:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }

        .product-info p {
            padding: 15px;
            margin: 0;
            color: #333;
            line-height: 1.4;
        }

        .product-info b {
            display: block;
            font-size: 1.1em;
            margin-bottom: 5px;
        }

        .product-info {
            flex: 0 1 400px;
            margin-bottom: 20px;
        }
        .header-container {
            height: 80px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #FFFAF0;
            padding: 10px;
        }

    </style>
</head>
<body>
<div class="header-container">
    <div class="left">
        <h1><a href="/" style="text-decoration: none; color: inherit;">PHILHARMONIC</a></h1>
    </div>
    <div class="right">
        <#if user.email??>
            <h3><a href="/user/${user.id}">Username: <i>${user.name}</i></a></h3>
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" value="Log out"/>
            </form>
            <#if user.isAdmin()>
                <a href="/admin" class="admin-link">Admin panel</a>
            <#else>
            </#if>
        <#else>
            <a href="/login" class="login-link">Login</a></h3>
        </#if>
    </div>
</div>

<hr>

<form action="/" method="get">
    Search by name: <input type="text" name="title">
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <a href="/product/${product.id}" class="product-link">
        <div class="product-info">

            <img src="/images/${product.previewImageId}"
                 class="card-img-top">
            <p>
                <b>${product.title}</b> | Start time: ${product.start_time} |
                Price normal: ${product.normalTicketPrice} pln. |
                Price VIP: ${product.vipTicketPrice} pln. |

                <#if user.isAdmin()>
            <form action="/product/delete/${product.id}" method="post" style="display: inline;">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="submit" class="delete-btn" onclick="return confirm('Are you sure you want to delete this product?');">Delete</button>
            </form>
            </#if>
            </p>
        </div>
<#else>
    <h3>There are no products</h3>
    <a href="/" class="back-link">Back</a>
</#list>
<#if user.isAdmin()>
    <#if user.email??>
        <hr>
        <h3><a href="javascript:void(0);" onclick="return false;">Create a new product</a></h3>
        <form action="/product/create" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
            Product name: <input type="text" name="title" onkeydown="return event.key !== 'Enter'" required/><br><br>
            Description: <input type="text" name="description" onkeydown="return event.key !== 'Enter'" required/><br><br>
            Start time: <input type="time" name="start_time" onkeydown="return event.key !== 'Enter'" required/><br><br>
            End time: <input type="time" name="end_time" onkeydown="return event.key !== 'Enter'" required/><br><br>
            Price normal: <input type="text" name="normalTicketPrice" onkeydown="return event.key !== 'Enter'" required/><br><br>
            Price VIP: <input type="text" name="vipTicketPrice" onkeydown="return event.key !== 'Enter'" required/><br><br>
            City: <input type="text" name="city" onkeydown="return event.key !== 'Enter'" required/><br><br>
            The first photo: <input type="file" name="file1" onkeydown="return event.key !== 'Enter'" required/><br><br>
            Second photo: <input type="file" name="file2" onkeydown="return event.key !== 'Enter'"/><br><br>
            The third photo: <input type="file" name="file3" onkeydown="return event.key !== 'Enter'"/><br><br>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Add product"/>
        </form>

        <script>
            function validateForm() {
                return true;
            }
        </script>
    </#if>
</#if>
</body>
</html>