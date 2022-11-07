
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Cinema</title>
    <link href="${pageContext.request.contextPath}/assets/css/sider.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/assets/css/cinema.css" rel="stylesheet"/>
</head>
<body>
<jsp:include page="/WEB-INF/view/layouts/Hader.jsp"/>
<jsp:include page="/WEB-INF/view/layouts/Nav.jsp"/>
<div class="header-navbar">
    <img class="header-navbar" src="https://images.cye-group.com/Assets/36317/big.jpg" alt="">
</div>

<!--------------------------------------------------------------------------->
<div class="box-body">
    <div class="box-body-1">
        <table>
            <td>
                <div class="box-1_1"><img class="box-body-img" src="https://lh3.googleusercontent.com/64GHqtLIhrZn3ujSVsGqmczd6k7WQ8Jce_WlKhEzvJ_2HF4clqPj_vvh1w6u0Nvj32JYuet5i6ZAERZsiHPO" alt=""></div>
            </td>
            <td>
                <div class="box-1_1"><img class="box-body-img" src="https://lh3.googleusercontent.com/LhLoK1y-oVUXvievJsUU3lLpoxBGdsR8DD3AZy6WOmGZd19oJ5e3ugjTTgTL13jCYyxKY-956oNoDFFOS0Ab6w" alt=""></div>
            </td>
            <td>
                <div class="box-1_1"><img class="box-body-img" src="https://lh3.googleusercontent.com/1Lq9GNYYrV_ZC1N22FB8InsYCwzqSVSwekYbaEnbeLMKvtpTCL_TePEAf52jSeOCemInrP-mX8PVLl9rXTA" alt=""></div>
            </td>
            <td>
                <div class="box-1_1"><img class="box-body-img" src="https://lh3.googleusercontent.com/Pi6d47K69KvtMNt94kfdAc6VmbNZsRHm4j9_Ha0InifG0fGxLZCCzD2CLiWFJtn6yRutiMU6yepsYd70pDC4" alt=""></div>
            </td>
        </table>
        <table>
            <td>
                <div class="box-img"><img src="https://pbs.twimg.com/media/CZ4RZLCWQAA0XII.jpg:large" alt=""></div>
            </td>
            <td>
                <div class="box-ms">
                    <br><br><br>
                    <h1>--- THE BEST CINEMA EXPERIENCE ---</h1>
                    <br><br>
                    เราคือผู้มอบประสบการณ์บันเทิงที่มุ่งเน้นความเป็นเลิศ
                    ด้วยการใส่ใจทุกรายละเอียดตั้งแต่ก้าวแรกจนก้าวสุดท้าย
                    พร้อมคัดสรรภาพยนตร์ชั้นเยี่ยมและแปลกใหม่ อีกทั้งมุ่งเฟ้นหานวัตกรรมบันเทิงสุดพิเศษ
                    และเหนืออื่นใดคือการพัฒนางานด้านบริการให้ดีที่สุด เพื่อให้มั่นใจว่าทุกช่วงเวลาของคุณที่
                    เอส เอฟ จะมีแต่ความประทับใจ และความสุขอย่างแท้จริง
                </div>
            </td>
        </table>
    </div>
    <!------------ระบบฉาย-------------->
    <div id="SCP">
        <center><label ><h2>ระบบฉายโรงภาพยนตร์</h2></label></center>
        <div class="box-body2">
            <img class="box-body2_2" src="${pageContext.request.contextPath}/assets/img/iconcinema1.png" alt="">
            <br><br><br>MX4D Cinema
        </div>

        <div class="box-body3">
            <img class="box-body2_2" src="${pageContext.request.contextPath}/assets/img/iconcinema2.png" alt="">
            <br><br><br>DOLBY ATMOS
        </div>

        <div class="box-body4">
            <img class="box-body2_2" src="${pageContext.request.contextPath}/assets/img/iconcinema3.png" alt="">
            <br><br><br>3D Cinema
        </div>

        <div class="box-body5">
            <img class="box-body2_2" src="${pageContext.request.contextPath}/assets/img/iconcinema4.png" alt="">
            <br><br><br>4K
        </div>
    </div>
</div>

<!--------------------------------------------------------------------------->
<!-- สไลด์ภาพข้อมูล -->
<!-- image slider start -->

    <div class="slider">
        <div class="slides">
            <!-- radio button start -->
            <input type="radio" name="radio-btn" id="radio1">
            <input type="radio" name="radio-btn" id="radio2">
            <input type="radio" name="radio-btn" id="radio3">
            <input type="radio" name="radio-btn" id="radio4">
            <!-- radio button end -->
            <!-- slide image start -->
            <div class="slide first">
                <img src="${pageContext.request.contextPath}/assets/img/navchair1.jpg" alt="">
            </div>
            <div class="slide">
                <img src="${pageContext.request.contextPath}/assets/img/navchair2.jpg" alt="">
            </div>
            <div class="slide">
                <img src="${pageContext.request.contextPath}/assets/img/navchair3.jpg" alt="">
            </div>
            <div class="slide">
                <img src="https://www.bangkokbank.com/-/media/feature/page-content/bbl-corporate/banners/promotion/be1st/sfnew_1280x450_en_v2.png" alt="">
            </div>
            <!-- slide image end -->
            <!-- automatic navigation start -->
            <div class="navigation-auto">
                <div class="auto-btn1"></div>
                <div class="auto-btn2"></div>
                <div class="auto-btn3"></div>
                <div class="auto-btn4"></div>
            </div>
            <!-- automatic navigation end -->
        </div>
        <!-- manual navigation start -->
        <div class="navigation-manual">
            <label for="radio1" class="manual-btn"></label>
            <label for="radio2" class="manual-btn"></label>
            <label for="radio3" class="manual-btn"></label>
            <label for="radio4" class="manual-btn"></label>
        </div>
        <!-- manual navigation end -->
    </div>
    <!-- image slider end -->
    <script type="text/javascript">
        var counter = 1
        setInterval(function(){
            document.getElementById('radio' + counter).checked = true;
            counter++;
            if(counter > 4){
                counter = 1;
            }
        }, 5000);
    </script>

    <!---------------------ที่นั้ง------------------------------>
    <div class="chair">
        <br><br><br>
        <center><label ><h2>รูปแบบที่นั่ง</h2></label></center>
        <br><br><br>
        <!-------ที่นั้ง 1---------->
        <div class="box-footer1">
            <img class="box-footer1_1" src="${pageContext.request.contextPath}/assets/img/chair1.png" alt="">
            <br><br><br>MX4D
        </div>
        <!-------ที่นั้ง 2---------->
        <div class="box-footer2">
            <img class="box-footer1_1" src="${pageContext.request.contextPath}/assets/img/chair2.png" alt="">
            <br><br>Executive Seat
        </div>
        <!-------ที่นั้ง 3---------->
        <div class="box-footer3">
            <img class="box-footer1_1" src="${pageContext.request.contextPath}/assets/img/chair3.png" alt="">
            <br><br>VIP Seat
        </div>
        <!-------ที่นั้ง 4---------->
        <div class="box-footer4">
            <img class="box-footer1_1" src="${pageContext.request.contextPath}/assets/img/chair4.png" alt="">
            <br><br>Sun Bench
        </div>
        <!-------ที่นั้ง 5---------->
        <div class="box-footer5">
            <img class="box-footer1_1" src="${pageContext.request.contextPath}/assets/img/chair5.png" alt="">
            <br><br>First Class <br>(Private box)
        </div>
    </div>
    <jsp:include page="/WEB-INF/view/layouts/Footer.jsp"/>
</body>
</html>
