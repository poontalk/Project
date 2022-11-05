
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet"/>
</head>
<body>
<jsp:include page="/WEB-INF/view/layouts/Nav.jsp"/>
<jsp:include page="/WEB-INF/view/layouts/Hader.jsp"/>
<!-- สไลด์ภาพข้อมูล -->
<!-- image slider start -->
<div class="container">
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
                <img src="../ImgMove/slide01.png" alt="">
            </div>
            <div class="slide">
                <img src="../ImgMove/slide02.png" alt="">
            </div>
            <div class="slide">
                <img src="../ImgMove/slide03.png" alt="">
            </div>
            <div class="slide">
                <img src="../ImgMove/slide04.png" alt="">
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
<%--    <script type="text/javascript">--%>
<%--        var counter = 1--%>
<%--        setInterval(function(){--%>
<%--            document.getElementById('radio' + counter).checked = true;--%>
<%--            counter++;--%>
<%--            if(counter > 4){--%>
<%--                counter = 1;--%>
<%--            }--%>
<%--        }, 5000);--%>
<%--    </script>--%>

    <!-- รายการหนังภาพยนตร์ทั้งหมด -->
    <div class="selection-movie" align="center">
        <h1 class="header-selection-movie">ภาพยนตร์</h1>
        <table>
            <tr>
                <!-- บล็อกรายการหนัง -->
                <td><a href="http:www.google.com"><div class="box01">
                    <div class="img-selection"><img src="img/coldplaylive.jpg" width="215px" height="319px"></div>
                    <div class="ribbon-text"></div>
                    <div class="date-on-air"><p align="center">วันที่เข้าฉาย: 2022-10-29</p></div>
                    <div class="info"><p align="center">COLDPLAY LIVE BROADCAST FROM BUENOS AIRES</p></div></div></a></td>
                <td><a href="http:www.google.com"><div class="box01"><div class="img-selection"><img src="img/dragonball.jpg" width="215px" height="319px"></div>
                    <div class="ribbon-text"></div>
                    <div class="date-on-air"><p align="center">วันที่เข้าฉาย: 2022-09-29</p></div>
                    <div class="info"><p align="center">ดราก้อนบอลซูเปอร์ : ซูเปอร์ฮีโร่</p></div></div></a></td>
                <td><a href="http:www.google.com"><div class="box01"><div class="img-selection"><img src="img/avatar2.jpg" width="215px" height="319px"></div>
                    <div class="ribbon-text"></div>
                    <div class="date-on-air"><p align="center">วันที่เข้าฉาย: 2022-09-22</p></div>
                    <div class="info"><p align="center">อวตาร</p></div></div></a></td>
            </tr>
            <tr>
                <td><a href="http:www.google.com"><div class="box01">
                    <div class="img-selection"><img src="img/coldplaylive.jpg" width="215px" height="319px"></div>
                    <div class="ribbon-text"></div>
                    <div class="date-on-air"><p align="center">วันที่เข้าฉาย: 2022-10-29</p></div>
                    <div class="info"><p align="center">COLDPLAY LIVE BROADCAST FROM BUENOS AIRES</p></div></div></a></td>
                <td><a href="http:www.google.com"><div class="box01"><div class="img-selection"><img src="img/dragonball.jpg" width="215px" height="319px"></div>
                    <div class="ribbon-text"></div>
                    <div class="date-on-air"><p align="center">วันที่เข้าฉาย: 2022-09-29</p></div>
                    <div class="info"><p align="center">ดราก้อนบอลซูเปอร์ : ซูเปอร์ฮีโร่</p></div></div></a></td>
                <td><a href="http:www.google.com"><div class="box01"><div class="img-selection"><img src="img/avatar2.jpg" width="215px" height="319px"></div>
                    <div class="ribbon-text"></div>
                    <div class="date-on-air"><p align="center">วันที่เข้าฉาย: 2022-09-22</p></div>
                    <div class="info"><p align="center">อวตาร</p></div></div></a></td>
            </tr>
            <tr>
                <td><a href="http:www.google.com"><div class="box01">
                    <div class="img-selection"><img src="img/coldplaylive.jpg" width="215px" height="319px"></div>
                    <div class="ribbon-text"></div>
                    <div class="date-on-air"><p align="center">วันที่เข้าฉาย: 2022-10-29</p></div>
                    <div class="info"><p align="center">COLDPLAY LIVE BROADCAST FROM BUENOS AIRES</p></div></div></a></td>
                <td><a href="http:www.google.com"><div class="box01"><div class="img-selection"><img src="img/dragonball.jpg" width="215px" height="319px"></div>
                    <div class="ribbon-text"></div>
                    <div class="date-on-air"><p align="center">วันที่เข้าฉาย: 2022-09-29</p></div>
                    <div class="info"><p align="center">ดราก้อนบอลซูเปอร์ : ซูเปอร์ฮีโร่</p></div></div></a></td>
                <td><a href="http:www.google.com"><div class="box01"><div class="img-selection"><img src="img/avatar2.jpg" width="215px" height="319px"></div>
                    <div class="ribbon-text"></div>
                    <div class="date-on-air"><p align="center">วันที่เข้าฉาย: 2022-09-22</p></div>
                    <div class="info"><p align="center">อวตาร</p></div></div></a></td>
            </tr>
        </table>
    </div>
    <!-- ภาพสปอนเซอร์ -->
    <table>
        <tr>
            <td><div class="sponsor"><img src="img/cola.png" alt=""></div></td>
            <td><div class="sponsor"><img src="img/dtac.png" alt=""></div></td>
            <td><div class="sponsor"><img src="img/mastercard.png" alt=""></div></td>
            <td><div class="sponsor"><img src="img/isuzu.png" alt=""></div></td>
            <td><div class="sponsor"><img src="img/nt-nationalTelecom.png" alt=""></div></td>
        </tr>
    </table>
    <!-- background โปรโมชั่น -->
    <div class="background-promotion" align="center">
        <div class="Textsponspor">
            <h1 >โปรโมชั่นสุดพิเศษ</h1>
            <p>โปรโมชั่นสุดพิเศษ สำหรับคนรักการชมภาพยนตร์เช่นคุณ</p>
        </div>
    </div>
    <!-- รายการPromotion -->
    <div class="BG-promotion">
        <div class="selection-promotion" align="center">
            <table>
                <tr>
                    <!-- บล็อกPromotion -->
                    <td><a href="http:www.google.com"><div class="promotion-box">
                        <div class="img-selection"><img src="img/coldplaylive.jpg" width="255px" height="319px"></div>
                        <div class="promotion-header-info"><p class="promotion-header-info" align="center">FANTA GRAPE COMBO SET</p></div>
                        <div class="promotion-info"><p align="center">ซ่าสะใจ! รสชาติใหม่ที่คุณต้องลอง</p></div></div></a></td>
                    <td><a href="http:www.google.com"><div class="promotion-box"><div class="img-selection"><img src="img/dragonball.jpg" width="255px" height="319px"></div>
                        <div class="promotion-header-info"><p class="promotion-header-info" align="center">ฉลองเปิดสาขาใหม่ โรงภาพยนตร์ เอส เอฟ ซีเนม่า สาขาโรบินสัน ถลาง แจกโชคใหญ่กว่า</p></div>
                        <div class="promotion-info"><p align="center">เพียงซื้อบัตรชมภาพยนตร์เรื่องใดก็ได้ทุก 2 ที่นั่ง หรือซื้อ Combo Set ชุดใดก็ได้ 1 ใบเสร็จ</p></div></div></a></td>
                    <td><a href="http:www.google.com"><div class="promotion-box"><div class="img-selection"><img src="img/avatar2.jpg" width="255px" height="319px"></div>
                        <div class="promotion-header-info"><p class="promotion-header-info" align="center">ลูกค้าบัตร SF+ สมัครแพ็คเกจโปรตาม Gen ครึ่งราคา</p></div>
                        <div class="promotion-info"><p align="center">โรงภาพยนตร์ เอส เอฟ ซีเนม่า สาขา โรบินสัน ถลาง เท่านั้น</p></div></div></a></td>
                    <td><a href="http:www.google.com"><div class="promotion-box-last"><div class="img-selection"><img src="img/avatar2.jpg" width="255px" height="319px"></div>
                        <div class="promotion-header-info"><p class="promotion-header-info" align="center">ป๊อปคอร์นรสชาติใหม่ "Miso Soup - มิโซะซุป</p></div>
                        <div class="promotion-info"><p align="center">ลองสิ แล้วจะติดใจ</p></div></div></a></td>
                </tr>
                <tr>
                    <td><a href="http:www.google.com"><div class="promotion-box">
                        <div class="img-selection"><img src="img/coldplaylive.jpg" width="255px" height="319px"></div>
                        <div class="promotion-header-info"><p class="promotion-header-info" align="center">ป๊อปคอร์นรสชาติใหม่ "Sour Cream & Onion รสหอมซาวร์ครีม"</p></div>
                        <div class="promotion-info"><p align="center">ลองชิมแล้วหรือยัง</p></div></div></a></td>
                    <td><a href="http:www.google.com"><div class="promotion-box"><div class="img-selection"><img src="img/dragonball.jpg" width="255px" height="319px"></div>
                        <div class="promotion-header-info"><p class="promotion-header-info" align="center">ป๊อปคอร์นรสชาติใหม่ “Chessy Garlic รสชีสกระเทียม"</p></div>
                        <div class="promotion-info"><p align="center">ลองชิมแล้วหรือยัง?</p></div></div></a></td>
                    <td><a href="http:www.google.com"><div class="promotion-box"><div class="img-selection"><img src="img/avatar2.jpg" width="255px" height="319px"></div>
                        <div class="promotion-header-info"><p class="promotion-header-info" align="center">CORN QUIX : พรี่เมี่ยมป๊อปคอร์น มี 3 รสชาติ เห็ดทรัฟเฟิล, คาราเมล, หมีกย่าง</p></div>
                        <div class="promotion-info"><p align="center">เปิดป๊อป! อร่อยปั๊บ...</p></div></div></a></td>
                    <td><a href="http:www.google.com"><div class="promotion-box-last"><div class="img-selection"><img src="img/avatar2.jpg" width="255px" height="319px"></div>
                        <div class="promotion-header-info"><p class="promotion-header-info" align="center">CORN STIX : ข้าวโพดแท่งอบกรอบ มี 3 รสชาติ โนริสาหร่าย, ต้มยำ, บาร์บีคิว</p></div>
                        <div class="promotion-info"><p align="center">มันส์ อร่อยมาก</p></div></div></a></td>
                </tr>
            </table>
            <!-- ลิงก์Promotionท้ังหมด -->
            <a href="https://www.sfcinemacity.com/promotions"><div class="promotion-All">
                <p>โปรโมชั่นทั้งหมด</p>
            </div></a>
        </div>
    </div>
    <!-- ข่าวและกิจกรรม -->
    <!-- หัวเรื่อง -->
    <div class="header-news-feed"><h1>ข่าวและกิจกรรม</h1></div>
    <!-- บล็อกข่าว -->
    <div class="news">
        <div class="box-news"> <div class="img-selection-news"><img src="img/news01.jpg" width="400px" height="319px"></div>
            <div class="news-header-info"><p class="news-header-info" align="center">News & Activities</p></div>
            <div class="news-info"><p align="center">เอส เอฟ รวมดาราเซเลบสายแฟชั่นร่วมงานกาล่าหนัง “Mrs. Harris Goes to Paris” SF Exclusive Movie เรื่องล่าสุด ที่สาย</p></div>
            <div class="news-date"><p align="center">21 กันยายน 2565</p></div></div>
        <div class="box-news"><div class="img-selection-news"><img src="img/news02.jpg" width="400px" height="319px"></div>
            <div class="news-header-info"><p class="news-header-info" align="center">News & Activities</p></div>
            <div class="news-info"><p align="center">รวมวิธีใช้งานระบบออนไลน์</p></div>
            <div class="news-date"><p align="center">16 กันยายน 2565</p></div></div>
        <!-- สไลด์ภาพอันเล็กๆ -->
        <div class="colunm-news" align="center">
            <div class="col-news">
                <figure>
                    <img src="img/slide-news01.jpg" >
                    <img src="img/slide-news02.png" >
                    <img src="img/slide-news03.jpg" >
                    <img src="img/slide-news04.png" >
                    <img src="img/slide-news01.jpg" >
                </figure>
            </div>
        </div>
    </div>
    <!-- ข่าวและกิจกรรมอันที่2 -->
    <!-- บล็อกข่าว -->
    <div class="news-2">
        <a href="https://www.sfcinemacity.com/news-activity/news-2741"><div class="box-news-2"> <div class="img-selection-news-2"><img src="img/new03.jpg"  height="319px"></div>
            <div class="news-header-info"><p class="news-header-info" align="center">News & Activities</p></div>
            <div class="news-info"><p align="center">รวมทุกเรื่องที่ควรรู้ ก่อนไปดู COLDPLAY LIVE BROADCAST FROM BUENOS AIRES</p></div>
            <div class="news-date"><p align="center">15 กันยายน 2565</p></div></div></a>
        <a href="https://www.sfcinemacity.com/news-activity/news-2742"> <div class="box-news-2"><div class="img-selection-news-2"><img src="img/news04.jpg" width="400px" height="319px"></div>
            <div class="news-header-info"><p class="news-header-info" align="center">News & Activities</p></div>
            <div class="news-info"><p align="center">รอบพิเศษ Evangelion - Special Screening วันที่ 8 - 9 ตุลาคม 2565</p></div>
            <div class="news-date"><p align="center">15 กันยายน 2565</p></div></div></a>
        <a href="https://www.sfcinemacity.com/news-activity/news-2739"><div class="box-news-2"><div class="img-selection-news-2"><img src="img/news05.jpg" width="400px" height="319px"></div>
            <div class="news-header-info"><p class="news-header-info" align="center">News & Activities</p></div>
            <div class="news-info"><p align="center">THIRTEEN LIVES สิบสามชีวิต ภาพยนตร์จากเรื่องจริงสุดระทึก เข้าฉาย 8 ก.ย.นี้ ที่ เอส เอฟ เท่านั้น</p></div>
            <div class="news-date"><p align="center">6 กันยายน 2565</p></div></div></a>
    </div>
    <!-- ลิงก์ข่าวท้ังหมด -->
    <a href="https://www.sfcinemacity.com/promotions">
        <div class="news-all" align="center">
            <p>ข่าวและกิจกรรมทั้งหมด</p>
        </div>
    </a>
</body>
</html>
