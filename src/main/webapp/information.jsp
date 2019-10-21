<%--
  Created by IntelliJ IDEA.
  User: dani
  Date: 2019-10-21
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information</title>
</head>
<body>
<h1> Welcome, <%= request.getParameter("firstname") %> <%= request.getParameter("lastname") %>!</h1>

<%@ include file="Partials/footer.html" %>
</body>
</html>
