<!DOCTYPE html>
<html>
<head>
    <title>PHILHARMONIC</title>
    <style>
        .field {
            position: relative;
            margin-bottom: 10px;
        }

        .field input[type="email"],
        .field input[type="password"] {
            width: 10%;
            padding: 0.625rem;
            border: 2px solid #83014d;
            border-radius: 4px;
            outline: none;
            transition: background-color 250ms, border-color 250ms;
        }

        .field input[type="email"]:focus,
        .field input[type="password"]:focus {
            background-color: #efeff7;
            border-color: #83014d;
        }

        .field label {
            position: absolute;
            left: 10px;
            top: 10px;
            color: #83014d;
            background-color: #ffffff;
            padding: 0 5px;
            transition: top 250ms, left 250ms, font-size 250ms;
        }

        .field input[type="email"]:focus + label,
        .field input[type="password"]:focus + label {
            top: -10px;
            left: 5px;
            font-size: 0.875rem;
            color: #83014d;
        }
        .field input:not(:placeholder-shown) + label,
        .field input:focus + label {
            top: -20px;
            left: 0;
            font-size: 12px;
            color: #666;
        }


    </style>
</head>
<body>
<h1>PHILHARMONIC</h1>
<hr>
<h4>Authorization</h4>
<form action="/login" method="post">
    <div class="field">
        <input type="email" name="username" id="email" required>
        <label for="email">Email</label>
    </div>
    <br>
    <div class="field">
        <input type="password" name="password" id="password" required>
        <label for="password">Password</label>
        <button type="button" id="togglePassword">Show Password</button><br>
    </div>
    <br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Zaloguj się">
</form>
<a href="/registration">Register</a>
<script>
    document.getElementById('togglePassword').addEventListener('click', function (e) {
        const password = document.getElementById('password');
        const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
        password.setAttribute('type', type);
        this.textContent = type === 'password' ? 'Show Password' : 'Hide Password';
    });
</script>
</body>
</html>
