<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="${pageContext.request.contextPath}/logout" method="POST" name="frmLogout"></form:form>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
    <link href="${pageContext.request.contextPath}/assets/css/style-h-f.css" rel="stylesheet"/>
</head>
<body>

<div style="background-color: white">
    <table style="width:100%;">
        <td class="div-Header"></td>
        <td class="div-Header">
            <img src="${pageContext.request.contextPath}/assets/img/SF.png" id="icon-SF">
        </td>
        <td class="div-Header">
            <div id="member">
                <table>
                    <td><img src="${pageContext.request.contextPath}/assets/img/messenger.png" style="width: 30px;margin:5px 10px 0 0;"></td>

                        <td>
                            <security:authorize access="!isAuthenticated()">

                            <a href="${pageContext.request.contextPath}/login/logins">เข้าสู่ระบบ/สมัคสมาชิก</a>
                        </security:authorize>
                            <security:authorize access="isAuthenticated()">
                                User: <security:authentication property="principal.username"/>
                                <li><a onclick="javascript: frmLogout.submit();">ลงชื่อออกจากระบบ</a></li>
                            </security:authorize></td>

                </table>
            </div>
        </td>
    </table>
</div>
</body>
</html>
