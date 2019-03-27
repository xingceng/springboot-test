<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/03/19
  Time: 上午 08:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>城市之夜</title>

    <!-- Styles -->
    <link href="<%=request.getContextPath()%>/jquery/yemian/https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600"
          rel="stylesheet">


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
<body class="listing-template">
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
                    <a href="<%=request.getContextPath()%>/toindex"><img
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
                        <li><a href="<%=request.getContextPath()%>/tozhishi">知识</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-4 col-sm-4">
                <c:if test="${sessionScope.Kehu==null}">
                    <div class="contact-in-header clearfix" id="loginname">
                        <i class="fa fa-mobile"></i>
                        <a class="btn btn-warning btn-lg btn-3d" data-hover="登陆"
                           href="<%=request.getContextPath()%>/tologin" role="button">登陆</a>
                        <a class="btn btn-warning btn-lg btn-3d" data-hover="注册"
                           href="<%=request.getContextPath()%>/toregedis" role="button">注册</a>
                    </div>
                </c:if>
                <c:if test="${sessionScope.Kehu!=null}">
                    <div class="contact-in-header clearfix" id="loginname">
                        <span><a href="">${sessionScope.Kehu.kehuname}</a></span>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</header>
<div id="site-banner" class="text-center clearfix">
    <div class="container">
        <h1 class="title wow slideInLeft">找到你梦想中的房子</h1>
        <ol class="breadcrumb wow slideInRight">
            <li><a href="<%=request.getContextPath()%>/toindex">首页</a></li>
            <li><a href="<%=request.getContextPath()%>/toxinfang">新房</a></li>
        </ol>
    </div>
</div>
<div id="advance-search" class="main-page clearfix">
    <div class="container">
        <button class="btn top-btn">Find Your Place</button>
        <form  id="adv-search-form">
            <fieldset>
                <select  id="main-location" >
                    <option value="">所有位置</option>
                </select>
                <select name="housecircuitid" id="property-sub-location">
                    <option value="">所有线路</option>
                </select>
                <select name="housepriceid" id="property-price">
                    <option value="">总价</option>
                </select>
                <select name="houseacreageid" id="property-acreage">
                    <option value="">面积</option>
                </select>
                <select name="houseunitid" id="property-huxing">
                    <option value="">户型</option>
                </select>
                <select name="houseyongtuid" id="property-yongtu">
                    <option value="">用途</option>
                </select>
                <select name="houseloucengid" id="property-louceng">
                    <option value="">楼层</option>
                </select>
                <select name="housemianxiang" id="property-mianxiang">
                    <option value="">朝向</option>
                </select>
                <select name="houseloulingid" id="property-louling">
                    <option value="">楼龄</option>
                </select>
                <select name="housezhuangxiuid" id="property-zhuangxiu">
                    <option value="">装修</option>
                </select>
            </fieldset>
        </form>
            <button id="sousu" class="btn btn-primary">搜索</button>
    </div>
</div>
<section id="property-listing">
    <header class="section-header text-center">
        <div class="container">
            <div class="pull-right">
                <div class="property-sorting pull-left">
                    <label for="property-sort-dropdown"> 排序方式: </label>
                    <select name="property-sort-dropdown" id="property-sort-dropdown">
                        <option value="">默认</option>
                        <option value="by_date">时间↑</option>
                        <option value="by_price">时间↓</option>
                    </select>
                </div>
                <p class="pull-left layout-view"> View as: <i class="fa fa-th selected" data-layout="4"></i> <i
                        class="fa fa-th-large" data-layout="6"></i><i class="fa fa-list-ul" data-layout="12"></i></p>
            </div>
        </div>
    </header>
    <div class="container section-layout">
        <div class="row" id="ershoufangyuans">
        </div>
        <ul id="pagination" class="text-center clearfix">
            <li class="disabled"><a href="<%=request.getContextPath()%>/jquery/yemian/#">Previous</a></li>
            <li><a href="<%=request.getContextPath()%>/jquery/yemian/#">1</a></li>
            <li><a href="<%=request.getContextPath()%>/jquery/yemian/#">3</a></li>
            <li><a href="<%=request.getContextPath()%>/jquery/yemian/#">4</a></li>
            <li><a href="<%=request.getContextPath()%>/jquery/yemian/#">Next</a></li>

        </ul>
    </div>
</section>
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
<a href="<%=request.getContextPath()%>/jquery/yemian/#top" id="scroll-top"><i class="fa fa-angle-up"></i></a>
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
<script type="text/javascript">
    $(function () {
        $.ajax({
            url: "queryfangyuan?housetype=3&page=0&rows=9",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<div class=\"col-lg-4 col-sm-6 layout-item-wrap\">\n" +
                        "                <article class=\"property layout-item clearfix\">\n" +
                        "                    <figure class=\"feature-image\">\n" +
                        "                        <a class=\"clearfix zoom\"\n" +
                        "                           href=\"<%=request.getContextPath()%>/jquery/yemian/single-property.html\"><img\n" +
                        "                                data-action=\"zoom\"\n" +
                        "                                src=\"<%=request.getContextPath()%>/jquery/yemian/assets/images/property/9.jpg\"\n" +
                        "                                alt=\"Property Image\"></a>\n" +
                        "                        <span class=\"btn btn-warning btn-sale\">待售</span>\n" +
                        "                    </figure>\n" +
                        "                    <div class=\"property-contents clearfix\">\n" +
                        "                        <header class=\"property-header clearfix\">\n" +
                        "                            <div class=\"pull-left\">\n" +
                        "                                <h6 class=\"entry-title\"><a\n" +
                        "                                         href=\"<%=request.getContextPath()%>/toxiangqing?houseid=" + data[i].houseid + "\"> " + data[i].housename + "</a></h6>\n" +
                        "                                <span class=\"property-location\"><i class=\"fa fa-map-marker\"></i></span>\n" +
                        "                            </div>\n" +
                        "                            <button class=\"btn btn-default btn-price pull-right btn-3d\" data-hover=" + data[i].pricename + "><strong>" + data[i].pricename + "</strong>\n" +
                        "                            </button>\n" +
                        "                        </header>\n" +
                        "                        <div class=\"property-meta clearfix\">\n" +
                        "                            <span><i class=\"fa fa-arrows-alt\"></i>面积：" + data[i].acreagename + "</span>\n" +
                        "                            <span><i class=\"fa fa-bed\"></i> 户型：" + data[i].unitname + "一厅一卫</span>\n" +
                        "                            <span><i class=\"fa fa-bathtub\"></i> 朝向：" + data[i].mianxiangname + "</span>\n" +
                        "                              <span><i class=\"fa fa-cab\"></i>发布时间：" + data[i].housetime.substr(0, 9) + "</span>\n" +
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
                $("#ershoufangyuans").append(op);
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
    $(document).on("change", 'select#property-sort-dropdown', function () {
        var status = $(this).val()
        $.ajax({
            url: "queryershouofangbydate?housetype=3&page=0&rows=9&status=" + status,
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<div class=\"col-lg-4 col-sm-6 layout-item-wrap\">\n" +
                        "                <article class=\"property layout-item clearfix\">\n" +
                        "                    <figure class=\"feature-image\">\n" +
                        "                        <a class=\"clearfix zoom\"\n" +
                        "                           href=\"<%=request.getContextPath()%>/jquery/yemian/single-property.html\"><img\n" +
                        "                                data-action=\"zoom\"\n" +
                        "                                src=\"<%=request.getContextPath()%>/jquery/yemian/assets/images/property/9.jpg\"\n" +
                        "                                alt=\"Property Image\"></a>\n" +
                        "                        <span class=\"btn btn-warning btn-sale\">待售</span>\n" +
                        "                    </figure>\n" +
                        "                    <div class=\"property-contents clearfix\">\n" +
                        "                        <header class=\"property-header clearfix\">\n" +
                        "                            <div class=\"pull-left\">\n" +
                        "                                <h6 class=\"entry-title\"><a\n" +
                        "                                         href=\"<%=request.getContextPath()%>/toxiangqing?houseid=" + data[i].houseid + "\"> " + data[i].housename + "</a></h6>\n" +
                        "                                <span class=\"property-location\"><i class=\"fa fa-map-marker\"></i></span>\n" +
                        "                            </div>\n" +
                        "                            <button class=\"btn btn-default btn-price pull-right btn-3d\" data-hover=" + data[i].pricename + "><strong>" + data[i].pricename + "</strong>\n" +
                        "                            </button>\n" +
                        "                        </header>\n" +
                        "                        <div class=\"property-meta clearfix\">\n" +
                        "                            <span><i class=\"fa fa-arrows-alt\"></i>面积：" + data[i].acreagename + "</span>\n" +
                        "                            <span><i class=\"fa fa-bed\"></i> 户型：" + data[i].unitname + "一厅一卫</span>\n" +
                        "                            <span><i class=\"fa fa-bathtub\"></i> 朝向：" + data[i].mianxiangname + "</span>\n" +
                        "                             <span><i class=\"fa fa-cab\"></i>发布时间：" + data[i].housetime + "</span>\n" +
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
                $("#ershoufangyuans").html(op);
            }
        })
    });
    // 条件查询
    $("#sousu").on("click", function () {
        $.ajax({
            url: " <%=request.getContextPath()%>/queryershoufangbytype",
            type: "post",
            data: $("#adv-search-form").serialize(),
            dataType: "json",
            success: function (data) {
                var op = "";
                for (var i = 0; i < data.length; i++) {
                    op += "<div class=\"col-lg-4 col-sm-6 layout-item-wrap\">\n" +
                        "                <article class=\"property layout-item clearfix\">\n" +
                        "                    <figure class=\"feature-image\">\n" +
                        "                        <a class=\"clearfix zoom\"\n" +
                        "                           href=\"<%=request.getContextPath()%>/jquery/yemian/single-property.html\"><img\n" +
                        "                                data-action=\"zoom\"\n" +
                        "                                src=\"<%=request.getContextPath()%>/jquery/yemian/assets/images/property/9.jpg\"\n" +
                        "                                alt=\"Property Image\"></a>\n" +
                        "                        <span class=\"btn btn-warning btn-sale\">待售</span>\n" +
                        "                    </figure>\n" +
                        "                    <div class=\"property-contents clearfix\">\n" +
                        "                        <header class=\"property-header clearfix\">\n" +
                        "                            <div class=\"pull-left\">\n" +
                        "                                <h6 class=\"entry-title\"><a\n" +
                        "                                         href=\"<%=request.getContextPath()%>/toxiangqing?houseid=" + data[i].houseid + "\"> "+ data[i].housename +"</a></h6>\n" +
                        "                                <span class=\"property-location\"><i class=\"fa fa-map-marker\"></i></span>\n" +
                        "                            </div>\n" +
                        "                            <button class=\"btn btn-default btn-price pull-right btn-3d\" data-hover="+ data[i].pricename + "><strong>"+ data[i].pricename + "</strong>\n" +
                        "                            </button>\n" +
                        "                        </header>\n" +
                        "                        <div class=\"property-meta clearfix\">\n" +
                        "                            <span><i class=\"fa fa-arrows-alt\"></i>面积：" + data[i].acreagename + "</span>\n" +
                        "                            <span><i class=\"fa fa-bed\"></i> 户型：" + data[i].unitname + "一厅一卫</span>\n" +
                        "                            <span><i class=\"fa fa-bathtub\"></i> 朝向：" + data[i].mianxiangname + "</span>\n" +
                        "                             <span><i class=\"fa fa-cab\"></i>发布时间：" + data[i].housetime +"</span>\n" +
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
                $("#zufang").html(op);
            },
            error: function () {
                alert("程序错误");
            }
        })
    });
</script>
</body>
</html>

