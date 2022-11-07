
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>${title}</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/layouts/Hader.jsp"/>
<jsp:include page="/WEB-INF/view/layouts/Nav.jsp"/>
<center><h1>${title}</h1></center>
<div class="container">
    <div id="container">
        <i>กรอกข้อมูลในฟอร์ม. เครื่องหมายดอกจัน (*) หมายถึงห้ามว่าง</i><br><br>
        <form:form action="${pageContext.request.contextPath}/showtime/save" modelAttribute="showtime" method="POST">
            <form:hidden path="sid"/>
            <table>
                <colgroup>
                    <col style="width: 250px;">
                    <col style="width: auto;">
                </colgroup>
                <tbody>
                <tr><td><label>รหัสรอบฉายภาพยนต์:</label></td>
                    <td><form:input path="code"/>
                        <form:errors path="code" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>วันที่ฉาย:</label></td>
                    <td><form:input path="showtimeDate"/>
                        <form:errors path="showtimeDate" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>เวลาที่ฉาย:</label></td>
                    <td><form:input path="time" />
                        <form:errors path="time" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label></label></td>
                    <td>
                        <input type="submit" value="บันทึก" class="save"/>
                        <input type="button" value="ลบ" onclick="if((confirm('คุณแน่ใจทหรืออไม่ที่จะลบหนังเรื่องนี้?'))) {
                            window.location.href='${pageContext.request.contextPath}/showtime/${showtime.sid}/delete'; return false; }"
                               class="cancel-button"/>

                    </td>
                </tr>
                </tbody>
            </table>
        </form:form>
    </div>
</div>
<jsp:include page="/WEB-INF/view/layouts/Footer.jsp"/>
</body>
</html>
