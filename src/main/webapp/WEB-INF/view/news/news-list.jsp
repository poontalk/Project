
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>${title}</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/layouts/Hader.jsp"/>
<jsp:include page="/WEB-INF/view/layouts/Nav.jsp"/>
<center><h1>✦— — — — — ${title} — — — — —✦</h1></center>
<div class="container">
<form:form action="${pageContext.request.contextPath}/news/save "  modelAttribute="Newsfeeds" method="POST">
    <table>
        <tbody>
            <tr>
                <td>.......รูป......</td>
            </tr>
            <tr><td>${Newsfeeds.headlines}<br></td></tr>
            <tr><td>${Newsfeeds.detail}</td></tr>
            <tr><td>${Newsfeeds.newsDate}${Newsfeeds.newsTime}</td></tr>
            <tr><td><a href="${pageContext.request.contextPath}/news${Newsfeeds.id}/update">${Newsfeeds.code}</a></td></tr>

        </tbody>
    </table>
</div>
</form:form>
<jsp:include page="/WEB-INF/view/layouts/Footer.jsp"/>
</body>
</html>
