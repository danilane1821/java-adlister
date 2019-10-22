<%--
  Created by IntelliJ IDEA.
  User: dani
  Date: 2019-10-21
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="pickcolor.jsp" %>

<html>
<head>
    <title>Favorite background color</title>
</head>
<body style="background-color:<%= color %>">
<h1>now the background color is <%= color %>!</h1>
</body>
</html>
