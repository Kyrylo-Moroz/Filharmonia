<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
        }

        .container {
            width: 300px;
            margin: auto;
            padding: 20px;
            border: 2px solid #ccc;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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
            background-color: #28a745;
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
            background-color: #218838;
        }
        .back-to-login-button:hover {
            background-color: #218838;
        }

        .back-to-login-button {
            background-color: #555;
            width: 87%;
            margin-top: 15px;
            margin-left: auto;
            margin-right: auto;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
        }

        .toggle-password {
            position: relative;
            margin-left: 270px;
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
            background-color: #28a745;
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
    <h4>Registration</h4>
    <form action="/registration" method="post">
        Username: <input type="text" name="name" required><br>
        Email: <input type="email" name="email" required><br>
        Phone number: <input type="tel" name="phoneNumber" placeholder="XXX-XXX-XXX" pattern="[0-9]+" maxlength="9" required><br>
        Password: <input type="password" id="password" name="password" required>
        <div class="toggle-password">
            <input type="checkbox" id="show-password">
            <label for="show-password">&#10004;</label>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" class="submit-button" value="Register"/>
    </form>
    <a href="http://localhost:8080/login" class="back-to-login-button">Back to Login</a>
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
