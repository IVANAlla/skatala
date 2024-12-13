
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<html lang="en">
<head>
    <title>List of Cars</title>
</head>
<body>
<header>
    <h2></h2>
</header>

<div>

    <th:block th:each="msg : ${messages}">

        <h1 th:text="${msg}"></h1>
    </th:block>

</div>
</body>
</html>
</html>

