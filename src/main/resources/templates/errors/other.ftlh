<!DOCTYPE HTML>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8"/>
    <title>Error Page</title>
    <link th:rel="stylesheet" th:href="@{/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css} "/>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4 mt-5">
            <form method="post" th:action="@{/index}">
                <div class="form-group">
                    <div><b><p style="font-size:30px">Error</p></b></div>
                    <div><p style="font-size:24px">An unexpected error has occurred</p></div>
                </div>
                <button class="btn btn-primary" type="button" onclick="window.location.href='/';">Back to home page</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>