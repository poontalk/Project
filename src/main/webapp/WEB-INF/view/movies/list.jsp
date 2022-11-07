
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>${title}</title>
    <link href="${pageContext.request.contextPath}/assets/css/style-movie.css" rel="stylesheet"/>
</head>
<body>
<jsp:include page="/WEB-INF/view/layouts/Hader.jsp"/>
<jsp:include page="/WEB-INF/view/layouts/Nav.jsp"/>
<center><h1>${title}</h1></center>
<input type="button" value="อัพเดต${title}" onclick="window.location.href='${pageContext.request.contextPath}/movies/create';
               return false;" class="add-button"/>
<div class="container">
    <table>
        <thead>
        <tr>
            <th>รหัสหนัง</th><th>ชื่อหนัง</th><th>ระยะเวลาหนัง</th><th>เรดผู้ชม</th><th>ราคาหนัง</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="Movie" items="${Movies}">
            <tr>
                <td><a href="${pageContext.request.contextPath}/movies/${Movie.mid}">${Movie.code}</a></td>
                <td>${Movie.movieName}</td>
                <td>${Movie.movieTime}</td>
                <td>${Movie.AGERange}</td>
                <td class="number">
                    <fmt:formatNumber type="number" pattern="###,###.00" value="${Movie.moviePrice}"/>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<jsp:include page="/WEB-INF/view/layouts/Footer.jsp"/>
</body>
</html>
