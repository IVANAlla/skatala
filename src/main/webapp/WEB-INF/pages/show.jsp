<%@ taglib prefix="ht" uri="http://www.springframework.org/tags/form" %>
<%--@elvariable id="person" type="java"--%>
<%--
  Created by IntelliJ IDEA.
  User: Alla
  Date: 07.12.2024
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<html lang="en">

<head>
    <title>человек</title>
</head>
<body>

<!--/*@thymesVar id="person" type="javax"*/-->
<p th:text="${user.getId()}">VALUE</p>

<p   th:text="${user.getName()}">VALUE</p>
<p   th:text="${user.getEmail()}">VALUE</p>
<p   th:text="${user.getAge()}">VALUE</p>

</div>
<a th:href="@{/users/{id}/edit(id=${person.getId()})}">Edit</a>
<form th:metod="DELITE" th:action="@{/users/{id}(id=${person.getId()})}">
    <input type="submit" value="DELITE"/>
</form>
</body>
</html>
