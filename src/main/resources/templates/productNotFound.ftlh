<!DOCTYPE HTML>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8"/>
    <title>Error Page</title>
    <link th:rel="stylesheet" th:href="@{/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css}"/>
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        .error-form {
            background-color: #ffffff;
            border: 1px solid #d6d6d6;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .error-heading {
            font-size: 30px;
            font-weight: bold;
            color: #83014d;
        }

        .error-message {
            font-size: 24px;
            color: #83014d;
        }

        .back-button {
            margin-top: 20px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4 mx-auto error-form">
            <form method="post" th:action="@{/index}">
                <div class="form-group text-center">
                    <div class="error-heading">Error</div>
                    <div class="error-message">Product not found</div>
                </div>
                <button class="btn btn-primary back-button" type="button" onclick="window.location.href='/';">Back to home page</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>