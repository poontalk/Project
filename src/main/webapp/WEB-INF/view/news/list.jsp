
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>${title}</title>
</head>
<body>
    <jsp:include page="/WEB-INF/view/layouts/Hader.jsp"/>
    <jsp:include page="/WEB-INF/view/layouts/Nav.jsp"/>
    <center><h1>✦— — — — — ${title} — — — — —✦</h1></center>
    <div class="container">

        <input type="button" value="เพิมข่าว"
               onclick="window.location.href='${pageContext.request.contextPath}/news/create'; return false;"
               class="add-button"
        />

        <table>
            <thead>
            <tr>
                <th>รูป</th>
                <th>ชื่อ</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach var="Newsfeed" items="${Newsfeeds}">
                <tr>
                    <td>.............</td>

                    <td><a href="${pageContext.request.contextPath}/news/${Newsfeed.id}/lists">
                            ${Newsfeed.headlines}<br>
                             ${Newsfeed.newsDate}${Newsfeed.newsTime}</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <jsp:include page="/WEB-INF/view/layouts/Footer.jsp"/>
</body>
</html>
