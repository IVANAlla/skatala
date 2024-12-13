<%--@elvariable id="users" type=""--%>
<%--@elvariable id="user" type="java"--%>
<%--
  Created by IntelliJ IDEA.
  User: Alla
  Date: 13.12.2024
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<html lang="en">
<head>
    <title>NEW USER</title>
</head>
<body>
<form th:method="PATCH" th:action="@{/users/{id}(id=${user.getId()})}" th:object="${user}">
    <label for="name">Enter name:</label>
    <input type="text" th:field="*{user.getName}" id="name"/>
    <br/>
    <br/>

    <label for="email">Enter email:</label>
    <input type="text" th:field="*{user.getEmail}" id="email"/>
    <br/>
    <br/>
    <label for="age">Enter age:</label>
    <input type="text" th:field="*{user.getAge}" id="age"/>
    <br/>
    <br/>
    <input type="submit" value="UPDATE!"/>
</form>
</body>
</html>
</html>
