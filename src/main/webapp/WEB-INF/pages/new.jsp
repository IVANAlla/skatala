<%--
  Created by IntelliJ IDEA.
  User: Alla
  Date: 13.12.2024
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%><%--    <div th:if="${fields.hasErrors('user.getName()')}" th:errors="*{user.getName()}">Name error</div>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<html lang="en">
<head>
    <title>NEW USER</title>
</head>
<body>
<form th:method="POST" th:action="@{/users}" th:object="${user}">
    <label for="name">Enter name:</label>
    <input type="text" th:field="*{user.getName}" id="name"/>

<br/>
    <br/>
<input type="submit" value="CREATE!"/>
</form>
<form th:method="POST" th:action="@{/users}" th:object="${user}">
    <label for="email">Enter email:</label>
    <input type="text" th:field="*{user.getEmail}" id="email"/>
    <br/>
    <br/>
    <input type="submit" value="CREATE!"/>
</form>
<form th:method="POST" th:action="@{/users}" th:object="${user}">
    <label for="age">Enter age:</label>
    <!--/*@thymesVar id="getAge" type="javax"*/-->
    <input type="text" th:field="*{user.getAge}" id="age"/>
    <br/>
    <br/>
    <input type="submit" value="CREATE!"/>
</form>
</body>
</html>
</html>