<%--
  Created by IntelliJ IDEA.
  User: dani
  Date: 2019-10-21
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<% String color = request.getParameter("color"); %>--%>
<html>
<head>
    <title>Pick a color..any color!</title>
</head>
<body>


<form action="/backgroundcolor.jsp" method="post">
    <label for="color">Enter your favorite color</label>
    <input id="color" type="text" name="color">
    <button>Submit</button>
</form>
</body>
</html>
