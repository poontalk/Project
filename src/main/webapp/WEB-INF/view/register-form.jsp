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

        <form:form action="${pageContext.request.contextPath}/login/save" modelAttribute="User" method="POST">
            <table>
                <colgroup>
                    <col style="width: 160px;">
                    <col style="width: auto;">
                </colgroup>
                <tbody>

                <tr><td><label>ชื่อ:</label></td>
                    <td><form:input path="firstName"/> </td>
                </tr>
                <tr><td><label>นามสกุล:</label></td>
                    <td><form:input path="lastName"/> </td>
                </tr>
                <tr><td><label>ที่อยู่:</label></td>
                    <td><form:input path="address"/> </td>
                </tr>
                <tr><td><label>ชื่อผู่ใช้งาน:</label></td>
                    <td><form:input path="username"/> </td>
                </tr>
                <tr><td><label>รหัสผ่าน:</label></td>
                    <td><form:input path="password"/> </td>
                </tr>
                    <td>
                        <input type="submit" value="บันทึก" class="save"/>
                        <input type="button" value="ยกเลิก"
                               onclick="window.location.href='logins'; return false;"
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