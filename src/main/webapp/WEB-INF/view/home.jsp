
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<form:form action="${pageContext.request.contextPath}/logout" method="POST" name="frmLogout"></form:form>
<html>
<head>
    <title>Title</title>
</head>
<body>
<li><a href="${pageContext.request.contextPath}/login/logins">ลงชื่อเข้าสู่ระบบ</a></li>
<security:authorize access="isAuthenticated()">
    <li><a href="#" onclick="javascript: frmLogout.submit();">ลงชื่อออกจากระบบ</a></li>
</security:authorize>
</body>
</html>
