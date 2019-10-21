<%--
  Created by IntelliJ IDEA.
  User: dani
  Date: 2019-10-21
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Enter Some Info!</title>
</head>
<body>

<h1>Please enter your first and last name below</h1>
<form action="/information.jsp"  method="post">
    <label for ="firstname">First Name:</label>
    <input type="text" id = "firstname" name="firstname" placeholder="please enter first name"><br>
    <label for ="lastname">Last Name:</label>
    <input type="text" id = "lastname" name="lastname" placeholder="please enter last name">
    <button>Submit information</button>
</form>
<%@ include file="Partials/footer.html" %>
</body>
</html>
