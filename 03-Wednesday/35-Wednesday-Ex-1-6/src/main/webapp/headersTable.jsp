<%-- 
    Document   : headersTable
    Created on : 29-08-2019, 10:25:12
    Author     : Camilla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Table of Headers</title>
        <base href="${pageContext.request.contextPath}/" />
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    </head>
    <body>
        <h1 class="colorblue">Headers</h1>
        <table border="1">
            <thead>
            <th>Header Key</th>
            <th>Header Value</th>
        </thead>
        <tbody>
            <c:forEach items="${headersMap}" var="headersMap">
                <tr>
                    <td>${headersMap.key}</td>
                    <td>${headersMap.value}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
