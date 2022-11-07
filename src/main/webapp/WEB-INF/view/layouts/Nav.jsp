
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nav</title>
    <link href="${pageContext.request.contextPath}/assets/css/style-h-f.css" rel="stylesheet"/>
</head>
<body>
    <div id="nav-m">
        <nav>
            <ul>
                <li><a href="${pageContext.request.contextPath}">หน้าหลัก</a></li>
                <li><a href="${pageContext.request.contextPath}/movies/list">ภาพยนตร์</a></li>
                <li><a href="${pageContext.request.contextPath}/showtime/list">รอบฉาย</a></li>
                <li><a href="${pageContext.request.contextPath}/cinema/list">โรงภาพยนตร์</a></li>
                <li><a href="${pageContext.request.contextPath}/news/list">ข่าวและกิจกรรม</a></li>
            </ul>
        </nav>
    </div>
</body>
</html>
