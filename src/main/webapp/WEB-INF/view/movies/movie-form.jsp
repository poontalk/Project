<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head><title>${title}</title></head>
<body>
<jsp:include page="/WEB-INF/view/layouts/Hader.jsp"/>
<jsp:include page="/WEB-INF/view/layouts/Nav.jsp"/>
<div id="header"><h1>${title}</h1></div>
<div class="container">
    <div id="container">
        <i>กรอกข้อมูลในฟอร์ม. เครื่องหมายดอกจัน (*) หมายถึงห้ามว่าง</i><br><br>
        <form:form action="${pageContext.request.contextPath}/movies/save"
                   modelAttribute="movies" method="POST">
            <form:hidden path="mid"/>
            <table>
                <colgroup>
                    <col style="width: 250px;">
                    <col style="width: auto;">
                </colgroup>
                <tbody>
                <!--<tr><td><label>รูปภาพหนัง:</label></td>
                    <td><input type="file" name="fileUpload" size="50" /></td>
                </tr>-->
                <tr><td><label>รหัสภาพยนตร์:</label></td>
                    <td><form:input path="code"/>
                        <form:errors path="code" cssClass="error"/>
                    </td>
                </tr>
                <tr>
                    <td><label>ประเภท</label></td>
                    <td>
                        <form:select path="category.code">
                            <form:option value="" label="-- กรุณาเลือกประเภท --"/>
                            <form:options items="${category}" itemLabel="categoryName" itemValue="code"/>
                        </form:select>
                        <form:errors path="category.code" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>ชื่อหนัง:</label></td>
                    <td><form:input path="movieName"/>
                        <form:errors path="movieName" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>ระยะเวลาหนัง:</label></td>
                    <td><form:input path="movieTime" />
                        <form:errors path="movieTime" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>เรดผู้ชม:</label></td>
                    <td><form:input path="AGERange" cssClass="number"/>
                        <form:errors path="AGERange" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>ราคาหนัง:</label></td>
                    <td><form:input path="moviePrice" cssClass="number"/>
                        <form:errors path="moviePrice" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>รายละเอียด:</label></td>
                    <td><form:textarea path="movieDetail" cols="100" rows="5"></form:textarea>
                    </td>
                </tr>
                <tr><td><label></label></td>
                    <td>
                        <input type="submit" value="บันทึก" class="save"/>
                        <input type="button" value="ลบ"
                               onclick="if((confirm('คุณแน่ใจทหรืออไม่ที่จะลบหนังเรื่องนี้?'))) {
                                       window.location.href='${pageContext.request.contextPath}/movies/${movies.mid}/delete'; return false; }"
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