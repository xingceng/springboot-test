<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/03/20
  Time: 下午 01:46
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
        <div class="row" style="margin-top: 40px">
            <div class="col-lg-8 col-md-7">
                <section class="property-agent common">
                    <div class="container">
                        <form action="#" id="adv-search-form" class="clearfix">
                            <fieldset style="width:600px">
                                <select name="location" id="main-location">
                                    <option value="">所有位置</option>
                                </select>
                                <button class="btn btn-default btn-lg text-center" id="hidden-sm">搜索<br class="hidden-sm hidden-xs">
                                </button>
                            </fieldset>
                        </form>
                    </div>
                    <div class="row" id="jingjiren">
                    </div>
                </section>
            </div>
            <div class="col-lg-4 col-md-5">
                <div id="property-sidebar">
                </div>
            </div>
        </div>
    </div>
</div>
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
        query()
        initPro1();
    })

    //初始省
    function initPro1(){
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
    }

    function query(){
        $.ajax({
            url:'queryBrok',
            type:'post',
            success:function(data){
                var op="";
                for(var i=0;i<data.length;i++){
                    op+="<div class=\"col-lg-7\">\n" +
                        "                <div class=\"agent-box clearfix\">\n" +
                        "                    <div class=\"row\">\n" +
                        "                        <div class=\"col-sm-5 col-xs-5\">\n" +
                        "                            <a href='toBroInfo?id="+data[i].id+"' class=\"agent-image\"><img\n" +
                        "                                    src='"+data[i].broCover+"'\n" +
                        "                                    ></a>\n" +
                        "                        </div>\n" +
                        "                        <div class=\"col-sm-6 col-xs-6\">\n" +
                        "                            <h3>"+data[i].broName+"</h3>" +
                        "                                &nbsp;" +
                        "                                &nbsp;" +
                        "                                &nbsp;" +
                        "&nbsp;" +
                        "&nbsp;<br/>" +
                        "                                    <h5 class='fa fa-map-marker'>"+data[i].coverage+"</h5>\n" +
                        "                                    <h5 class='fa fa-clock-o'>历史成交"+data[i].zuping+"套</h5><br/>" +
                        "                                    <h5 class='fa fa-eye'>带看房"+data[i].daikan+"次</h5>\n" +
                        "                        </div>\n" +
                        "                    </div>\n" +
                        "                </div>\n" +
                        "            </div>" +
                        "          <div class='col-sm-4 col-xs-4' style='margin-top:30px'>" +
                        "       <div style='margin-left:180px'>" +
                        "       <h6><a hrerf=''><i class='fa fa-heart-o' aria-hidden='true'></i><span>&nbsp; "+data[i].follCount+"</span></a></h6>" +
                        "</div>" +
                        "</div>" +
                        "         <div class='col-sm-4 col-xs-4'>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
                        "       <h4><font class='fa fa-phone' style='margin-top:40px'> "+data[i].iphone+"</font></h4>" +
                        "</div>"
                }
                $("#jingjiren").append(op);
            }
        })
    }
</script>
</html>
