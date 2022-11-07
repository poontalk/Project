<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head><title>${title}</title></head>
<body>
<jsp:include page="/WEB-INF/view/layouts/Hader.jsp"/>
<jsp:include page="/WEB-INF/view/layouts/Nav.jsp"/>
<center><h1>✦— — — — — ${title} — — — — —✦</h1></center>
<div class="container">
    <div id="container">
        <form:form action="${pageContext.request.contextPath}/news/save "  modelAttribute="Newsfeeds" method="POST">
            <form:hidden path="id"/>
            <table>
                <colgroup>
                    <col style="width: 160px;">
                    <col style="width: auto;">
                </colgroup>
                <tbody>
                <tr><td><label>รหัสข่าว:</label></td>
                    <td><form:input path="code"/>
                        <form:errors path="code" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>ชือข่าว:</label></td>
                    <td><form:input path="headlines"/>
                        <form:errors path="headlines" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>รายละเอียด:</label></td>
                    <td><form:textarea path="detail" cols="50" rows="5"></form:textarea>
                        <form:errors path="detail" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>วันที่:</label></td>
                    <td><form:input path="newsDate"/>
                        <form:errors path="newsDate" cssClass="error"/>
                    </td>
                </tr>
                <tr><td><label>เวลา:</label></td>
                    <td><form:input path="newsTime"/>
                        <form:errors path="newsTime" cssClass="error"/>
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
