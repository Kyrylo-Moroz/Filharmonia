<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            width: 300px;
            margin: auto;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px 0;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .submit-button,
        .back-to-login-button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }

        .back-to-login-button {
            background-color: #555;
            margin-top: 15px;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>PHILHARMONIC</h1>
    <hr>
    <h4>Registration</h4>
    <form action="/registration" method="post">
        Username: <input type="text" name="name" required><br>
        Email: <input type="email" name="email" required><br>
        Phone number: <input type="tel" name="phoneNumber" placeholder="XXX-XXX-XXX" pattern="+48 \[0-9]{3}[0-9]{3}[0-9]{3}" maxlength="12" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" class="submit-button" value="Register"/>
    </form>
    <a href="http://localhost:8080/login" class="back-to-login-button">Back to Login</a>
    <#if errorMessage??>
        <div class="error-message">${errorMessage}</div>
    </#if>
</div>
</body>
</html>
