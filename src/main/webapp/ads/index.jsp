
<%--
  Created by IntelliJ IDEA.
  User: dani
  Date: 2019-10-22
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Ads Page</title>
</head>
<body>
<h1> Here are some ads</h1>

<c:forEach var="ad" items="${ads}">
    <div class="ad">
        <h1>Title: ${ad.title}</h1>
        <h2>User: ${ad.userId}</h2>
        <p>description: ${ad.description}</p>
    </div>
</c:forEach>
</body>
</html>
