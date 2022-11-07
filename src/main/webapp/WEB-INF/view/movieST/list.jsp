
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>${title}</title>
    <link href="${pageContext.request.contextPath}/assets/css/sysle-movie-showtime.css" rel="stylesheet"/>
</head>
<body>
    <jsp:include page="/WEB-INF/view/layouts/Hader.jsp"/>
    <jsp:include page="/WEB-INF/view/layouts/Nav.jsp"/>
    <center><h1>${title}</h1></center>
    <input type="button" value="เพิ่ม${title}"
           onclick="window.location.href='${pageContext.request.contextPath}/showtime/create';
                   return false;" class="add-button"/>

    <c:forEach var="showtime" items="${showtime}">
        <tr>
            <td><a href="${pageContext.request.contextPath}/movieST/${showtime.sid}">${showtime.code}</a></td>
            <td>${showtime.showtimeDate}</td>

        </tr>
    </c:forEach>

    <jsp:include page="/WEB-INF/view/layouts/Footer.jsp"/>
</body>
</html>
