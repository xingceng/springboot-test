<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/03/20
  Time: 下午 01:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String id = request.getParameter("id");//用request得到
%>
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
                        <li><a href="<%=request.getContextPath()%>/tozhishi">知识</a></li>
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
<div id="property-single">
    <div class="container">
        <div class="row"  style="margin-top: 40px">
            <div class="col-lg-12 col-md-7">
                <section class="property-agent common">
                    <h4 class="entry-title">Contact Agent</h4>
                    <div class="row" id="broInfo">
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
<!-- 公寓特色 start-->
<section id="property-listing" class="text-center">
    <div class="container ">
        <h2 class="title wow slideInLeft">精品房源</h2>
    </div>
    <div class="container">
        <div class="row" id="gongyus">
        </div>
    </div>
</section>
<!-- 公寓特色 end-->
<footer id="footer">
    <div class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <section class="widget about-widget clearfix">
                        <h4 class="title hide">About Us</h4>
                        <a class="footer-logo" href="<%=request.getContextPath()%>/jquery/yemian#"><img
                                src="<%=request.getContextPath()%>/jquery/yemian/assets/images/footer-logo.png"
                                alt="Footer Logo"></a>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi</p>
                        <ul class="social-icons clearfix">
                            <li><a href="<%=request.getContextPath()%>/jquery/yemian#"><i
                                    class="fa fa-twitter"></i></a></li>
                            <li><a href="<%=request.getContextPath()%>/jquery/yemian#"><i
                                    class="fa fa-facebook"></i></a></li>
                            <li><a href="<%=request.getContextPath()%>/jquery/yemian#"><i class="fa fa-pinterest"></i></a>
                            </li>
                            <li><a href="<%=request.getContextPath()%>/jquery/yemian#"><i
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
                    <li><a href="<%=request.getContextPath()%>/jquery/yemian#">Terms & Conditions</a></li>
                    <li><a href="<%=request.getContextPath()%>/jquery/yemian#">Pricing</a></li>
                    <li><a href="<%=request.getContextPath()%>/jquery/yemian#">Contact</a></li>
                </ul>
            </nav>
        </div>
    </div>
</footer>
<a href="<%=request.getContextPath()%>/jquery/yemian#top" id="scroll-top"><i class="fa fa-angle-up"></i></a>
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

    $(function(){
        query();
        queryGongYu();
    })
    function query(){
        $.ajax({
            url:'queryBroInfo',
            type:'post',
            success:function(data){
                var op="";
                for(var i=0;i<data.length;i++){
                    op+="<div class='col-lg-6'>\n" +
                        "                            <div class='agent-box clearfix' style='width: 600px'>\n" +
                        "                                <div class='row'>\n" +
                        "                                    <div class='col-sm-3 col-xs-3'>\n" +
                        "                                        <a class='agent-image'><img\n" +
                        "                                                src='"+data[i].broCover+"'" +
                        "                                                ></a>" +
                        "                                    </div>" +
                        "                                    <div class='col-sm-4 col-xs-5'>\n" +
                        "                                    <h3>"+data[i].broName+"</h3>" +
                        "&nbsp;" +
                        "&nbsp;" +
                        "&nbsp;" +
                        "&nbsp;" +
                        "&nbsp;<br/>" +
                        "                                    <font>服务年限："+data[i].workYear+"</font><br/>" +
                        "                                    <font>服务区域："+data[i].coverage+"</font><br/>" +
                        "                                    <font>所属店铺："+data[i].storeName+"</font>" +
                        "                                    </div>" +
                        "<div class='col-sm-2 col-xs-1'>" +
                        "       <h6><a hrerf=''><i class='fa fa-heart-o' aria-hidden='true'></i><span>&nbsp; "+data[i].follCount+"</span></a></h6>" +
                        "</div>" +
                        "                                </div>\n" +
                        "                            </div>\n" +
                        "                        </div>" +
                        "                        <div class='col-lg-5'>" +
                        "                            <font size='5px'><b>"+data[i].zuping+"套</b></font>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                        "                            <font size='5px'><b>"+data[i].daikan+"次</b></font>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                        "                            <font size='5px'><b>"+data[i].follCount+"人</b></font><br/>" +
                        "                            <font><i class='fa fa-dollar'>买卖成交</i></font>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                        "                            <font><i class='fa fa-eye'>30天带看</i></font>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                        "                            <font><i class='fa fa-heart-o'>关注人数</i></font><br/>" +
                        "                            <div  style='margin-top: 60px;margin-left: 40px'>" +
                        "                           <font size='7px'><i class='fa fa-mobile' aria-hidden='true'>"+data[i].iphone+"</i></font>" +
                        "                           </div>" +
                        "                        </div>";
                }
                $("#broInfo").append(op);
            }
        })
    }

    function queryGongYu() {
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
    }

</script>
</html>
