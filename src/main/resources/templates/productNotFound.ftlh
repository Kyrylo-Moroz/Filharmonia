<!DOCTYPE html>
<html xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <title>Produkt nie znaleziony</title>
</head>
<body>
<h2>Błąd: Produkt nie został znaleziony</h2>
<p th:text="${errorMessage}"></p>
<a href="/" class="btn btn-primary">Powrót do strony głównej</a>
</body>
</html>
