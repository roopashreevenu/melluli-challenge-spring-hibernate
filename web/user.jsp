<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Details</title>
</head>
<body>
<h2>User Details</h2>
</body>

<c:if test="${not empty user}">
    <ul>
        <li><b>Id:</b>      ${user.id}</li>
        <li><b>Name:</b>    ${user.name}</li>
        <li><b>Gender:</b>  ${user.gender}</li>
        <li><b>Age:</b>     ${user.age}</li>
        <li><b>City:</b>    ${user.city}</li>
        <li><b>Country:</b> ${user.country}</li>
    </ul>
</c:if>

</html>
