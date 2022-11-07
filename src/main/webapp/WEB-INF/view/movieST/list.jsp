
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
<c:forEach var="showtimes" items="${showtime}">
  <div class="MTB">
    <div style="width: 94%;margin:2% 0 0 5%;">
      <label class="lb">วันที่:</label><label class="lb"> ${showtimes.showtimeDate} </label>
      <label class="lb">เวลา:</label><label class="lb"> ${showtimes.time} </label>
      <input type="button" value="แก้ไขรอบฉาย"
             onclick="window.location.href='${pageContext.request.contextPath}/showtime/${showtimes.sid}/update'; return false;"
             class="add-button"/>
    </div>
    <hr style="width:95%;">
    <div class="containerTM">
      <div class="bg">
        <img src="https://www.fmone1035.com/wp-content/uploads/2019/03/Captain-Marvel-400x592.jpg" alt="" class="img-s">
        <div class="bt">
          <p class="TXT">CAPTAIN MARVEL adasdfasdfadfadfafdadfafa </p>
        </div>
      </div>
      <input type="button" value="เพิ่ม${title}"
             onclick="window.location.href='${pageContext.request.contextPath}/showtime/create';
                     return false;" class="add-button"/>
    </div>
  </div>
</c:forEach>
  <jsp:include page="/WEB-INF/view/layouts/Footer.jsp"/>
</body>
</html>
