<%--
  Created by IntelliJ IDEA.
  User: dani
  Date: 2019-10-21
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
    request.setAttribute("userName", "admin");
    request.setAttribute("password", "password");
%>

<html>
<head>
    <title>Login</title>
    <%@ include file="partials/header.html" %>
</head>
<body>

<%@ include file="partials/navbar.html" %>

<form action="/login.jsp" method="post">
    <label for="userName">Username:</label>
    <input type="text" id="userName" name="userName"><br>
    <label for="password">Password:</label>
    <input type="text" id="password" name="password"><br>
    <button>Submit</button>

<%--    this if statment is not an appropriate way to use the jstl tags <C:if, --%>
<%--    use them only when deciding what HTML to display not for java logic--%>
<%--    use <% if logic here... %> instead--%>

    <c:if test="${param.userName.equalsIgnoreCase('admin') && param.password.equalsIgnoreCase('password')}">
        <% response.sendRedirect("/profile.jsp");%>
    </c:if>

</form>
<%@ include file="partials/footer.html" %>
</body>

</html>
