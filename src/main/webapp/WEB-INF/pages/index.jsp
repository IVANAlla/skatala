<%--&lt;%&ndash;@elvariable id="person" type="jdk.javadoc.internal.doclets.toolkit.PropertyUtils"&ndash;%&gt;--%>
<%--&lt;%&ndash;@elvariable id="people" type="web"&ndash;%&gt;--%>
<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: Alla--%>
<%--  Date: 07.12.2024--%>
<%--  Time: 17:27--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" %>--%>
<%--<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">--%>
<%--<html lang="en">--%>

<%--<head>--%>
<%--    <title>все люди</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div th:each="person : ${users}">--%>
<%--    <h1 th:text="${person}"></h1>--%>
<%--    <a th:href="@{/users/{id}(id=${person.getId()})}" th:text="${person.getName()}">users</a>--%>
<%--    <a href="users/new">CREATE NEW USER</a>--%>
<%--    <table border="1">--%>
<%--        <tr>--%>
<%--            <th>Name</th>--%>
<%--            <th>Email</th>--%>
<%--            <th>Age</th>--%>
<%--        </tr>--%>
<%--&lt;%&ndash;            <tr th:each="msg : ${users}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td th:utext="${msg.name}"></td>&ndash;%&gt;--%>

<%--&lt;%&ndash;                <td th:utext="${msg.email}"> ...</td>&ndash;%&gt;--%>

<%--&lt;%&ndash;                <td th:utext="${msg.age}"> ...</td>>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--        </table>--%>



<%--    <a th:text="${person.getId()}">user</a>--%>
<%--   <a th:text="${person.getName()}">user</a>--%>

<%--        </div>--%>
<%--        </body>--%>
<%--        </html>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
      xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>All users</title>
</head>
<body>
<h2>Users</h2>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Age</th>
    </tr>
    </thead>
    <tbody>
    <tr var="user" items="${users}">
    <tr th:each="user : ${users}">
        <td th:text="${user.id}"></td>
        <td th:text="${user.name}"></td>
        <td th:text="${user.email}"></td>
        <td th:text="${user.age}"></td>
        <td>
            <form th:action="@{/users/edit}">
                <button type="submit" th:name="id" th:value="${user.id}">Edit</button>
            </form>
        </td>
        <td>
            <form method="post" th:action="@{/users/delete}">
                <button type="submit" th:name="id" th:value="${user.id}">Delete</button>
            </form>
        </td>
    </tr>
    </tr>
    </tbody>
</table>
<a href="/users/new">Create new user</a>
</body>
</html>