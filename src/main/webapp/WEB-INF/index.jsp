<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/03/15
  Time: 上午 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>城市之夜</title>

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">


    <!-- favicon and touch icons -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/jquery/yemian/assets/images/favicon.png">

    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/jquery/yemian/plugins/font-awesome/css/font-awesome.min.css"
          rel="stylesheet">
    <link href="<%=request.getContextPath()%>/jquery/yemian/plugins/slick/slick.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/jquery/yemian/plugins/slick-nav/slicknav.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/jquery/yemian/plugins/wow/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/jquery/yemian/assets/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/jquery/yemian/assets/css/theme.css" rel="stylesheet">

</head>
<body class="">
<div id="page-loader">
    <div class="loaders">
        <img src="<%=request.getContextPath()%>/jquery/yemian/assets/images/loader/3.gif" alt="First Loader">
        <img src="<%=request.getContextPath()%>/jquery/yemian/assets/images/loader/4.gif" alt="First Loader">
    </div>
</div>
<header id="site-header">
    <div id="site-header-top">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="clearfix">
                        <button class="btn btn-warning btn-lg header-btn visible-sm pull-right">List your Property for
                            Free
                        </button>
                        <p class="timing-in-header">Open Hours: Monday to Saturday - 8am to 6pm</p>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="clearfix">
                        <button class="btn btn-warning btn-lg header-btn hidden-sm">List your Property for Free</button>
                        <div class="language-in-header">
                            <i class="fa fa-globe"></i>
                            <label for="language-dropdown"> Language:</label>
                            <select name="currency" id="language-dropdown">
                                <option value="ENG">ENG</option>
                                <option value="AR">AR</option>
                                <option value="UR">UR</option>
                                <option value="NEO">NEO</option>
                                <option value="AKA">AKA</option>
                            </select>
                        </div>
                        <div class="currency-in-header">
                            <i class="fa fa-flag"></i>
                            <label for="currency-dropdown"> Currency: </label>
                            <select name="currency" id="currency-dropdown">
                                <option value="USD">USD</option>
                                <option value="EUR">EUR</option>
                                <option value="AOA">AOA</option>
                                <option value="XCD">XCD</option>
                                <option value="PKR">PKR</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <figure id="site-logo">
                    <a href="<%=request.getContextPath()%>/jquery/yemian/index.html"><img
                            src="<%=request.getContextPath()%>/jquery/yemian/assets/images/logo.png" alt="Logo"></a>
                </figure>
            </div>
            <div class="col-md-5 col-sm-8">
                <nav id="site-nav" class="nav navbar-default">
                    <ul class="nav navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/toershoufang">二手房</a></li>
                        <li><a href="<%=request.getContextPath()%>/tozufang">租房</a></li>
                        <li><a href="<%=request.getContextPath()%>/toxinfang">新房</a></li>
                        <li><a href="<%=request.getContextPath()%>/togongyu">公寓</a></li>
                        <li><a href="<%=request.getContextPath()%>/tohaiwai">海外</a></li>
                        <li><a href="<%=request.getContextPath()%>/toBroker">经纪人</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="contact-in-header clearfix" id="loginname">
                    <i class="fa fa-mobile"></i>
                    <a class="btn btn-warning btn-lg btn-3d" data-hover="登陆"
                       href="<%=request.getContextPath()%>/tologin" role="button">登陆</a>
                    <a class="btn btn-warning btn-lg btn-3d" data-hover="注册"
                       href="<%=request.getContextPath()%>/toregedis" role="button">注册</a>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="main-slider-wrapper clearfix">
    <div id="main-slider">
        <div class="slide"><img src="<%=request.getContextPath()%>/jquery/yemian/assets/images/slider/1.jpg"
                                alt="Slide"></div>
        <div class="slide"><img src="<%=request.getContextPath()%>/jquery/yemian/assets/images/slider/2.jpg"
                                alt="Slide"></div>
        <div class="slide"><img src="<%=request.getContextPath()%>/jquery/yemian/assets/images/slider/3.jpg"
                                alt="Slide"></div>
        <div class="slide"><img src="<%=request.getContextPath()%>/jquery/yemian/assets/images/slider/4.jpg"
                                alt="Slide"></div>
    </div>
    <div id="slider-contents">
        <div class="container text-center">
            <div class="jumbotron">
                <h1>找到你梦想中的房子</h1>
                <div class="contents clearfix">
                    <p>如果你梦想设计一个新的家，充分利用<br>
                        独特的地理位置和你喜欢的土地景观</p>
                </div>
                <a class="btn btn-warning btn-lg btn-3d" data-hover="Our Services"
                   href="<%=request.getContextPath()%>/jquery/yemian/#" role="button">我们的服务</a>
                <a class="btn btn-default btn-border btn-lg" href="<%=request.getContextPath()%>/jquery/yemian/#"
                   role="button">获取报价</a>
            </div>
        </div>
    </div>
</div>
<div id="advance-search" class="main-page clearfix">
    <div class="container">
        <form action="#" id="adv-search-form" class="clearfix">
            <fieldset>
                <select name="location" id="main-location">
                    <option value="">所有位置</option>
                </select>
                <select name="sub-location" id="property-sub-location">
                    <option value="">所有线路</option>
                </select>
                <select name="price" id="property-price">
                    <option value="">总价</option>
                </select>
                <select name="acreage" id="property-acreage">
                    <option value="">面积</option>
                </select>
                <select name="huxing" id="property-huxing">
                    <option value="">户型</option>
                </select>
                <select name="yongtu" id="property-yongtu">
                    <option value="">用途</option>
                </select>
                <select name="louceng" id="property-louceng">
                    <option value="">楼层</option>
                </select>
                <select name="mianxiang" id="property-mianxiang">
                    <option value="">朝向</option>
                </select>
                <select name="louling" id="property-louling">
                    <option value="">楼龄</option>
                </select>
                <select name="zhuangxiu" id="property-zhuangxiu">
                    <option value="">装修</option>
                </select>
            </fieldset>
            <button class="btn btn-default btn-lg text-center" id="hidden-sm">搜索<br class="hidden-sm hidden-xs">
            </button>
        </form>
    </div>
</div>
<!-- 二手房特色 start -->
<section id="home-property-listing">
    <header class="section-header home-section-header text-center">
        <div class="container">
            <h2 class="wow slideInRight">二手房</h2>
        </div>
    </header>
    <div class="container">
        <div class="row" id="ershoufangyuan">
        </div>
    </div>
</section>
<!-- 二手房特色 end -->
<!-- 租房特色 start-->
<section id="announcement-section" class="text-center">
    <div class="container ">
        <h2 class="title wow slideInLeft">租房</h2>
    </div>
    <div class="container">
        <div class="row" id="zufang">
        </div>
    </div>
</section>
<!-- 租房特色 end-->
<!-- 公寓特色 start-->
<section id="property-listing" class="text-center">
    <div class="container ">
        <h2 class="title wow slideInLeft">公寓</h2>
    </div>
    <div class="container">
        <div class="row" id="gongyus">
        </div>
    </div>
</section>
<!-- 公寓特色 end-->
<!-- 新房特色 start-->
<section id="announcement-section" class="text-center">
    <div class="container ">
        <h2 class="title wow slideInLeft">新房</h2>
    </div>
    <div class="container">
        <div class="row" id="xingfang">
        </div>
    </div>
</section>
<!-- 新房特色 end-->
<footer id="footer">
    <div class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <section class="widget about-widget clearfix">
                        <h4 class="title hide">About Us</h4>
                        <a class="footer-logo" href="<%=request.getContextPath()%>/jquery/yemian/#"><img
                                src="<%=request.getContextPath()%>/jquery/yemian/assets/images/footer-logo.png"
                                alt="Footer Logo"></a>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi</p>
                        <ul class="social-icons clearfix">
                            <li><a href="<%=request.getContextPath()%>/jquery/yemian/#"><i
                                    class="fa fa-twitter"></i></a></li>
                            <li><a href="<%=request.getContextPath()%>/jquery/yemian/#"><i
                                    class="fa fa-facebook"></i></a></li>
                            <li><a href="<%=request.getContextPath()%>/jquery/yemian/#"><i class="fa fa-pinterest"></i></a>
                            </li>
                            <li><a href="<%=request.getContextPath()%>/jquery/yemian/#"><i
                                    class="fa fa-youtube-play"></i></a></li>
                        </ul>
                    </section>
                </div>
                <div class="col-md-4 col-sm-6">
                    <section class="widget twitter-widget clearfix">
                        <h4 class="title">Latest Tweets</h4>
                        <div id="twitter-feeds" class="clearfix"></div>
                    </section>
                </div>
                <div class="col-md-4 col-sm-6">
                    <section class="widget address-widget clearfix">
                        <h4 class="title">OUR OFFICE</h4>
                        <ul>
                            <li><i class="fa fa-map-marker"></i> 4 Tottenham Road, London, England.</li>
                            <li><i class="fa fa-phone"></i> (123) 45678910</li>
                            <li><i class="fa fa-envelope"></i> huycoi.art@gmail.com</li>
                            <li><i class="fa fa-fax"></i> +84 962 216 601</li>
                            <li><i class="fa fa-clock-o"></i> Mon - Sat: 9:00 - 18:00</li>
                        </ul>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <div class="site-footer-bottom">
        <div class="container">
            <p class="copyright pull-left wow slideInRight">Copyright &copy; 2017.Company name All rights reserved.<a
                    target="_blank" href="<%=request.getContextPath()%>/jquery/yemian/http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
            </p>
            <nav class="footer-nav pull-right wow slideInLeft">
                <ul>
                    <li><a href="<%=request.getContextPath()%>/jquery/yemian/#">Terms & Conditions</a></li>
                    <li><a href="<%=request.getContextPath()%>/jquery/yemian/#">Pricing</a></li>
                    <li><a href="<%=request.getContextPath()%>/jquery/yemian/#">Contact</a></li>
                </ul>
            </nav>
        </div>
    </div>
</footer>
<a href="<%=request.getContextPath()%>/toindexk" id="scroll-top"><i class="fa fa-angle-up"></i></a>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=request.getContextPath()%>/jquery/yemian/assets/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/assets/js/jquery.migrate.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/assets/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/plugins/slick-nav/jquery.slicknav.min.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/plugins/slick/slick.min.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/plugins/tweetie/tweetie.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/plugins/forms/jquery.form.min.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/plugins/forms/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/plugins/modernizr/modernizr.custom.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/plugins/wow/wow.min.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/plugins/zoom/zoom.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/plugins/mixitup/mixitup.min.js"></script>
<!---<script src="<%=request.getContextPath()%>/jquery/yemian/http://ditu.google.cn/maps/api/js?key=AIzaSyD2MtZynhsvwI2B40juK6SifR_OSyj4aBA&libraries=places"></script>--->
<script src="<%=request.getContextPath()%>/jquery/yemian/plugins/whats-nearby/source/WhatsNearby.js"></script>
<script src="<%=request.getContextPath()%>/jquery/yemian/assets/js/theme.js"></script>
</body>
<script type="text/javascript">
    $(function () {
        $.ajax({
            url: "queryfangyuan?housetype=1&page=0&rows=6",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<div class=\"col-lg-4 col-sm-6 layout-item-wrap\">\n" +
                        "                <article class=\"property layout-item clearfix\">\n" +
                        "                    <figure class=\"feature-image\">\n" +
                        "                        <a class=\"clearfix zoom\"\n" +
                        "                           href=\"<%=request.getContextPath()%>/toxiangqing?houseid=" + data[i].houseid + "\"><img\n" +
                        "                                data-action=\"zoom\"\n" +
                        "                                src=\"<%=request.getContextPath()%>/jquery/yemian/assets/images/property/1.jpg\"\n" +
                        "                                alt=\"Property Image\"></a>\n" +
                        "                        <span class=\"btn btn-warning btn-sale\">待售</span>\n" +
                        "                    </figure>\n" +
                        "                    <div class=\"property-contents clearfix\">\n" +
                        "                        <header class=\"property-header clearfix\">\n" +
                        "                            <div class=\"pull-left\">\n" +
                        "                                <h6 class=\"entry-title\"><a\n" +
                        "                                        href=\"<%=request.getContextPath()%>/toxiangqing?houseid="+ data[i].houseid +"\"> " + data[i].housename + "</a></h6>\n" +
                        "                                <span class=\"property-location\"><i class=\"fa fa-map-marker\"></i></span>\n" +
                        "                            </div>\n" +
                        "                            <button class=\"btn btn-default btn-price pull-right btn-3d\" data-hover=" + data[i].pricename + "><strong> " + data[i].pricename + "</strong></button>\n" +
                        "                        </header>\n" +
                        "                        <div class=\"property-meta clearfix\">\n" +
                        "                            <span><i class=\"fa fa-arrows-alt\"></i> 面积：" + data[i].acreagename + "</span>\n" +
                        "                            <span><i class=\"fa fa-bed\"></i> 户型：" + data[i].unitname + "一厅一卫</span>\n" +
                        "                            <span><i class=\"fa fa-bathtub\"></i>朝向：" + data[i].mianxiangname + "</span>\n" +
                        "                           <span><i class=\"fa fa-cab\"></i>发布时间：" + data[i].housetime.substr(0,9) +"</span>\n" +
                        "                        </div>\n" +
                        "                        <div class=\"contents clearfix\">\n" +
                        "                            <p></p>\n" +
                        "                        </div>\n" +
                        "                    </div>\n" +
                        "                </article>\n" +
                        "            </div>";
                }
                $("#ershoufangyuan").append(op);
            }
        })
        $.ajax({
            url: "queryfangyuan?housetype=2&page=0&rows=6",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<div class=\"col-lg-4 col-sm-6 layout-item-wrap\">\n" +
                        "                <article class=\"property layout-item clearfix\">\n" +
                        "                    <figure class=\"feature-image\">\n" +
                        "                        <a class=\"clearfix zoom\"\n" +
                        "                           href=\"<%=request.getContextPath()%>/toxiangqing?houseid=" + data[i].houseid + "\"><img\n" +
                        "                                data-action=\"zoom\"\n" +
                        "                                src=\"<%=request.getContextPath()%>/jquery/yemian/assets/images/property/1.jpg\"\n" +
                        "                                alt=\"Property Image\"></a>\n" +
                        "                        <span class=\"btn btn-warning btn-sale\">待售</span>\n" +
                        "                    </figure>\n" +
                        "                    <div class=\"property-contents clearfix\">\n" +
                        "                        <header class=\"property-header clearfix\">\n" +
                        "                            <div class=\"pull-left\">\n" +
                        "                                <h6 class=\"entry-title\"><a\n" +
                        "                                        href=\"<%=request.getContextPath()%>/toxiangqing?houseid=" + data[i].houseid + "\"> " + data[i].housename + "</a></h6>\n" +
                        "                                <span class=\"property-location\"><i class=\"fa fa-map-marker\"></i></span>\n" +
                        "                            </div>\n" +
                        "                            <button class=\"btn btn-default btn-price pull-right btn-3d\" data-hover=" + data[i].pricename + "><strong> " + data[i].pricename + "</strong></button>\n" +
                        "                        </header>\n" +
                        "                        <div class=\"property-meta clearfix\">\n" +
                        "                            <span><i class=\"fa fa-arrows-alt\"></i> 面积：" + data[i].acreagename + "</span>\n" +
                        "                            <span><i class=\"fa fa-bed\"></i> 户型：" + data[i].unitname + "一厅一卫</span>\n" +
                        "                            <span><i class=\"fa fa-bathtub\"></i>朝向：" + data[i].mianxiangname + "</span>\n" +
                        "                           <span><i class=\"fa fa-cab\"></i>发布时间：" + data[i].housetime.substr(0,9) +"</span>\n" +
                        "                        </div>\n" +
                        "                        <div class=\"contents clearfix\">\n" +
                        "                            <p></p>\n" +
                        "                        </div>\n" +
                        "                    </div>\n" +
                        "                </article>\n" +
                        "            </div>";
                }
                $("#zufang").append(op);
            }
        })
        $.ajax({
            url: "queryfangyuan?housetype=3&page=0&rows=6",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<div class=\"col-lg-4 col-sm-6 layout-item-wrap\">\n" +
                        "                <article class=\"property layout-item clearfix\">\n" +
                        "                    <figure class=\"feature-image\">\n" +
                        "                        <a class=\"clearfix zoom\"\n" +
                        "                           href=\"<%=request.getContextPath()%>/toxiangqing?houseid=" + data[i].houseid + "\"><img\n" +
                        "                                data-action=\"zoom\"\n" +
                        "                                src=\"<%=request.getContextPath()%>/jquery/yemian/assets/images/property/1.jpg\"\n" +
                        "                                alt=\"Property Image\"></a>\n" +
                        "                        <span class=\"btn btn-warning btn-sale\">待售</span>\n" +
                        "                    </figure>\n" +
                        "                    <div class=\"property-contents clearfix\">\n" +
                        "                        <header class=\"property-header clearfix\">\n" +
                        "                            <div class=\"pull-left\">\n" +
                        "                                <h6 class=\"entry-title\"><a\n" +
                        "                                        href=\"<%=request.getContextPath()%>/toxiangqing?houseid=" + data[i].houseid + "\"> " + data[i].housename + "</a></h6>\n" +
                        "                                <span class=\"property-location\"><i class=\"fa fa-map-marker\"></i></span>\n" +
                        "                            </div>\n" +
                        "                            <button class=\"btn btn-default btn-price pull-right btn-3d\" data-hover=" + data[i].pricename + "><strong> " + data[i].pricename + "</strong></button>\n" +
                        "                        </header>\n" +
                        "                        <div class=\"property-meta clearfix\">\n" +
                        "                            <span><i class=\"fa fa-arrows-alt\"></i> 面积：" + data[i].acreagename + "</span>\n" +
                        "                            <span><i class=\"fa fa-bed\"></i> 户型：" + data[i].unitname + "一厅一卫</span>\n" +
                        "                            <span><i class=\"fa fa-bathtub\"></i>朝向：" + data[i].mianxiangname + "</span>\n" +
                        "                           <span><i class=\"fa fa-cab\"></i>发布时间：" + data[i].housetime.substr(0,9) +"</span>\n" +
                        "                        </div>\n" +
                        "                        <div class=\"contents clearfix\">\n" +
                        "                            <p></p>\n" +
                        "                        </div>\n" +
                        "                    </div>\n" +
                        "                </article>\n" +
                        "            </div>";
                }
                $("#gongyus").append(op);
            }
        })
        $.ajax({
            url: "queryfangyuan?housetype=4&page=0&rows=6",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += " <div class=\"col-lg-4 col-sm-6 layout-item-wrap\">\n" +
                        "                <article class=\"property layout-item clearfix\">\n" +
                        "                    <figure class=\"feature-image\">\n" +
                        "                        <a class=\"clearfix zoom\"\n" +
                        "                           href=\"<%=request.getContextPath()%>/toxiangqing?houseid=" + data[i].houseid + "\"><img\n" +
                        "                                data-action=\"zoom\"\n" +
                        "                                src=\"<%=request.getContextPath()%>/jquery/yemian/assets/images/property/9.jpg\"\n" +
                        "                                alt=\"Property Image\"></a>\n" +
                        "                        <span class=\"btn btn-warning btn-sale\">待售</span>\n" +
                        "                    </figure>\n" +
                        "                    <div class=\"property-contents clearfix\">\n" +
                        "                        <header class=\"property-header clearfix\">\n" +
                        "                            <div class=\"pull-left\">\n" +
                        "                                <h6 class=\"entry-title\"><a\n" +
                        "                                        href=\"<%=request.getContextPath()%>/toxiangqing?houseid=" + data[i].houseid + "\">"+ data[i].housename +"</a></h6>\n" +
                        "                                <span class=\"property-location\"><i class=\"fa fa-map-marker\"></i></span>\n" +
                        "                            </div>\n" +
                        "                            <button class=\"btn btn-default btn-price pull-right btn-3d\" data-hover="+ data[i].pricename + "><strong>"+ data[i].pricename + "</strong>\n" +
                        "                            </button>\n" +
                        "                        </header>\n" +
                        "                        <div class=\"property-meta clearfix\">\n" +
                        "                            <span><i class=\"fa fa-arrows-alt\"></i>面积：" + data[i].acreagename + "</span>\n" +
                        "                            <span><i class=\"fa fa-bed\"></i> 户型：" + data[i].unitname + "一厅一卫</span>\n" +
                        "                            <span><i class=\"fa fa-bathtub\"></i> 朝向：" + data[i].mianxiangname + "</span>\n" +
                        "                              <span><i class=\"fa fa-cab\"></i>发布时间：" + data[i].housetime.substr(0,9) +"</span>\n" +
                        "                        </div>\n" +
                        "                        <div class=\"contents clearfix\">\n" +
                        "                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor\n" +
                        "                                invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\n" +
                        "                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata\n" +
                        "                                sanctus est Lorem ipsum dolor sit amet. </p>\n" +
                        "                        </div>\n" +
                        "                        <div class=\"author-box clearfix\">\n" +
                        "                            <a href=\"<%=request.getContextPath()%>/jquery/yemian/#\" class=\"author-img\"><img\n" +
                        "                                    src=\"<%=request.getContextPath()%>/jquery/yemian/assets/images/agents/1.jpg\"\n" +
                        "                                    alt=\"Agent Image\"></a>\n" +
                        "                            <cite class=\"author-name\">Personal Seller: <a\n" +
                        "                                    href=\"<%=request.getContextPath()%>/jquery/yemian/#\">Linda Garret</a></cite>\n" +
                        "                            <span class=\"phone\"><i class=\"fa fa-phone\"></i> 00894 692-49-22</span>\n" +
                        "                        </div>\n" +
                        "                    </div>\n" +
                        "                </article>\n" +
                        "            </div>";
                }
                $("#xingfang").append(op);
            }
        })
        $.ajax({
            url: "queryxianlu?id=1",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<option  value=\"" + data[i].circuitid + "\">" + data[i].circuitname + "</option>";
                }
                $("#main-location").append(op);
            }
        })
        $.ajax({
            url: "queryPrice",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<option  value=" + data[i].priceid + ">" + data[i].pricename + "</option>";
                }
                $("#property-price").append(op);
            }
        })
        $.ajax({
            url: "queryAcreage",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<option  value=\"" + data[i].acreageid + "\">" + data[i].acreagename + "</option>";
                }
                $("#property-acreage").append(op);
            }
        })
        $.ajax({
            url: "queryLouCeng",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<option  value=\"" + data[i].loucengid + "\">" + data[i].loucengname + "</option>";
                }
                $("#property-louceng").append(op);
            }
        })
        $.ajax({
            url: "queryLouLing",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<option  value=\"" + data[i].loulingid + "\">" + data[i].loulingname + "</option>";
                }
                $("#property-louling").append(op);
            }
        })
        $.ajax({
            url: "queryZhuangxiu",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<option  value=\"" + data[i].zhuangxiuid + "\">" + data[i].zhuangxiuname + "</option>";
                }
                $("#property-zhuangxiu").append(op);
            }
        })
        $.ajax({
            url: "queryYongtu",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<option  value=\"" + data[i].yongtuid + "\">" + data[i].yongtuname + "</option>";
                }
                $("#property-yongtu").append(op);
            }
        })
        $.ajax({
            url: "queryHuxing",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<option  value=\"" + data[i].unitid + "\">" + data[i].unitname + "</option>";
                }
                $("#property-huxing").append(op);
            }
        })
        $.ajax({
            url: "queryMianxiang",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<option  value=\"" + data[i].mianxiangid + "\">" + data[i].mianxiangname + "</option>";
                }
                $("#property-mianxiang").append(op);
            }
        })
    })
    var citySel = document.getElementById("main-location");
    citySel.onchange = function () {
        if (citySel.selectedIndex > 0) {
            var id = citySel.options[citySel.selectedIndex].value;
            $.ajax({
                url: "queryxianlu?id=" + id,
                success: function (data) {
                    var op = "";
                    for (var i = 0; i < data.length; i++) {
                        op += "<option value=\"" + data[i].circuitid + "\">" + data[i].circuitname + "</option>";
                    }
                    $("#property-sub-location").html(op);
                }
            })
        }
    }




    //条件查询
    $("#hidden-sm").on("click", function () {
        alert($("#adv-search-form").serialize())
        /*$.ajax({
            url: "
        <%=request.getContextPath()%>/loginusers",
            type: "post",
            data: $("#loginfrom").serialize(),
            dataType: "text",
            success: function (loginFlag) {
                //用户名不存在
                if (loginFlag == "userNameNO") {
                    alert("用户名不存在");
                }
                //密码错误
                if (loginFlag == "userPassNo") {
                    alert("密码错误")
                }
                //登录成功
                if (loginFlag == "loginSuccess") {
                    location.href = "/loginbolgs/toindexbolg";

                }
            },
            error: function () {
                alert("程序错误");
            }
        })*/
    });
</script>
</html>
