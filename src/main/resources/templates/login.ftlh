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

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px 0;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .submit-button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 0 0;
            border: none;
            cursor: pointer;
            width: 100%;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }
        .submit-button:hover {
            background-color: #226d23;
        }

        .back-to-registration {
            text-decoration: underline;
            color: #226d23;
            cursor: pointer;
            text-align: center;
            display: block;
            margin-top: 15px;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
        }

        .toggle-password {
            position: relative;
            margin-left: 310px;
            top: -45px;
            cursor: pointer;
        }

        .toggle-password input {
            display: none;
        }

        .toggle-password label {
            background-color: #f0f0f0;
            border: 1px solid #ccc;
            padding: 5px;
            border-radius: 3px;
            cursor: pointer;
        }

        .toggle-password input:checked + label {
            background-color: #4CAF50;
            color: white;
        }
        h1 {
            text-align: center;
        }

    </style>
</head>
<body>
<div class="container">
    <h1><a href="/" style="text-decoration: none; color: inherit;">PHILHARMONIC</a></h1>
    <hr>
    <h4>Login</h4>
    <form action="/login" method="post">
        Email: <input type="email" name="username" required><br>
        Password: <input type="password" id="password" name="password" required>
        <div class="toggle-password">
            <input type="checkbox" id="show-password">
            <label for="show-password">&#10004;</label>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" class="submit-button" value="Login"/>
    </form>
    <a href="http://localhost:8080/registration" class="back-to-registration">Register</a>
    <#if errorMessage??>
        <div class="error-message">${errorMessage}</div>
    </#if>
</div>
<script>
    document.getElementById('show-password').addEventListener('change', function(e) {
        var passwordInput = document.getElementById('password');
        if (e.target.checked) {
            passwordInput.type = 'text';
        } else {
            passwordInput.type = 'password';
        }
    });
</script>
</body>
</html>
