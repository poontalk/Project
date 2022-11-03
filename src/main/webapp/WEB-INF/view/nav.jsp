<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security"
           uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="${pageContext.request.contextPath}/logout"
           method="POST" name="frmLogout"></form:form>
<nav>
  <ul>
    <li><a href="${pageContext.request.contextPath}">หน้าหลัก</a></li>
    <li><a href="${pageContext.request.contextPath}/product/list">รายการสินค้า
    </a></li>
    <li><a href="${pageContext.request.contextPath}/shop/list">รายการร้านค้า
    </a></li>
    <li><a onclick="javascript: frmLogout.submit();">ลงชื่อออกจากระบบ</a></li>
  </ul>
</nav>
<hr>