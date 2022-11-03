<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head><title>${title}</title></head>
<body>
<div id="header"><h1>${title}</h1></div>
<div class="container">
<%--    <jsp:include page="/WEB-INF/view/layouts/nav.jsp"/>--%>
    <div id="container">
        <i>กรอกข้อมูลในฟอร์ม. เครื่องหมายดอกจัน (*) หมายถึงห้ามว่าง</i><br><br>
        <form:form action="${pageContext.request.contextPath}/login/save" modelAttribute="login" method="POST">
            <table>
                <colgroup>
                    <col style="width: 160px;">
                    <col style="width: auto;">
                </colgroup>
                <tbody>
                <tr><td><label>ชื่อ:</label></td>
                    <td><form:input path="username"/> </td>
                </tr>
                <tr><td><label>รหัสผ่าน:</label></td>
                    <td><form:input path="password"/> </td>
                </tr>
                <tr><td><label>ยืนยันรหัสผ่าน:</label></td>
                    <td><form:input path="confirmPassword"/> </td>
                </tr>
                    <td>
                        <input type="submit" value="บันทึก" class="save"/>
                        <input type="button" value="ยกเลิก"
                               onclick="window.location.href='list'; return false;"
                               class="cancel-button"
                        />
                    </td>
                </tr>
                </tbody>
            </table>
        </form:form>
    </div>
</div>

</body>
</html>