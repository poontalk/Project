<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head><title>${title}</title></head>
<body>
<div id="header"><h1>${title}</h1></div>
<div class="container">
    <jsp:include page="/WEB-INF/view/layouts/Hader.jsp"/>
    <jsp:include page="/WEB-INF/view/layouts/Nav.jsp"/>
    <div id="container">
        <i>กรอกข้อมูลในฟอร์ม. เครื.องหมายดอกจัน (*) หมายถึงห้ามว่าง</i><br><br>
        <form:form action="${pageContext.request.contextPath}/product/save "  modelAttribute="product" method="POST">
            <form:hidden path="id"/>
            <table>
                <colgroup>
                    <col style="width: 160px;">
                    <col style="width: auto;">
                </colgroup>
                <tbody>
                <tr><td><label>รหัสสินค้า:</label></td>
                    <td><form:input path="code"/>
                        <form:errors path="code" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>ชื.อสินค้า:</label></td>
                    <td><form:input path="name"/>
                        <form:errors path="name" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>ราคา:</label></td>
                    <td><form:input path="price" cssClass="number"/>
                        <form:errors path="price" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>รายละเอียด:</label></td>
                    <td><form:textarea path="description"
                                       cols="50" rows="5"></form:textarea>
                        <form:errors path="description" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label></label></td>
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
<jsp:include page="/WEB-INF/view/layouts/Footer.jsp"/>
</body>
</html>
