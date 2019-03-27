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
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-7">
                <section class="property-meta-wrapper common">
                    <h3 class="entry-title">${list.housename}</h3>
                    <div class="property-single-meta">
                        <ul class="clearfix">
                            <li><span>面积:</span>${list.acreagename}</li>
                            <li><span>户型 :</span>${list.unitname}</li>
                            <li><span>朝向:</span>${list.mianxiangname}</li>
                            <li><span>路线:</span>${list.circuitname}</li>
                            <li><span>楼层 :</span>${list.loucengname}</li>
                            <li><span>楼龄:</span>${list.loulingname}</li>
                            <li><span>价格 :</span>${list.pricename}</li>
                            <li><span>装修:</span>${list.zhuangxiuname}</li>
                        </ul>
                    </div>
                </section>
                <section class="property-contents common">
                    <div class="entry-title clearfix">
                        <h4 class="pull-left">详情</h4>
                    </div>
                    <p>${list.housexiangqing}</p>
                </section>
                <section class="property-single-features common clearfix">
                    <h4 class="entry-title">室内配置</h4>
                    <ul class="property-single-features-list clearfix">
                        <li>空调</li>
                        <li>有线电视</li>
                        <li>婴儿床</li>
                        <li>电梯</li>
                        <li>停车处</li>
                        <li>独立淋浴</li>
                        <%--<li>Office/den</li>
                        <li class="disabled">Air Conditioning</li>
                         <li class="disabled">Fan</li>
                        <li>Cable TV</li>
                        <li>Cot</li>
                        <li>Fan</li>
                        <li>Lift</li>
                        <li class="disabled">Parking</li>
                        <li>Cot</li>
                        <li>Fan</li>
                        <li>Lift</li>
                        <li>Parking</li>
                        <li>Separate Shower</li>
                        <li class="disabled">Office/den</li>
                        <li>Air Conditioning</li>
                        <li>Cable TV</li>--%>
                    </ul>
                </section>

                <
                <section class="property-agent common">
                    <h4 class="entry-title">经纪人/h4>
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="agent-box clearfix">
                                <div class="row">
                                    <div class="col-sm-5 col-xs-5">
                                        <a href="<%=request.getContextPath()%>/jquery/yemian#" class="agent-image"><img
                                                src="<%=request.getContextPath()%>/jquery/yemian/assets/images/agents/2.jpg"
                                                alt="Agent Image"></a>
                                    </div>
                                    <div class="col-sm-7 col-xs-7">
                                        <cite class="agent-name">Michelle Ramirez</cite>
                                        <small class="designation">Company Agent at Realtory Inc.</small>
                                        <ul class="agent-social-handlers clearfix">
                                            <li><a href="<%=request.getContextPath()%>/jquery/yemian#"><i
                                                    class="fa fa-facebook-square"></i> Facebook</a></li>
                                            <li><a href="<%=request.getContextPath()%>/jquery/yemian#"><i
                                                    class="fa fa-twitter-square"></i> Twitter</a></li>
                                            <li><a href="<%=request.getContextPath()%>/jquery/yemian#"><i
                                                    class="fa fa-pinterest-square"></i> Pinterest</a></li>
                                            <li><a href="<%=request.getContextPath()%>/jquery/yemian#"><i
                                                    class="fa fa-google-plus-square"></i> Google Plus</a></li>
                                        </ul>
                                        <a href="<%=request.getContextPath()%>/jquery/yemian#" class="btn btn-warning">View
                                            Profile</a>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. luctus ligula ac faucibus
                                    faucibus. Cras in nisi in turpis eleifend vehicula at at massa. Vivamus aliquet
                                    porttitor odio.</p>
                            </div>
                            <div class="widget address-widget clearfix">
                                <ul>
                                    <li><i class="fa fa-map-marker"></i> 4 Tottenham Road, London, England.</li>
                                    <li><i class="fa fa-phone"></i> (123) 45678910</li>
                                    <li><i class="fa fa-envelope"></i> huycoi.art@gmail.com</li>
                                    <li><i class="fa fa-fax"></i> +84 962 216 601</li>
                                    <li><i class="fa fa-clock-o"></i> Mon - Sat: 9:00 - 18:00</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="agent-contact-form">
                                <form id="agent-form" class="agent-form" method="post" action="#">
                                    <input type="text" name="name" placeholder="Full Name" class="required">
                                    <input type="text" name="phone" placeholder="Phone Number" class="required">
                                    <input type="text" name="email" placeholder="Email" class="email required">
                                    <textarea name="message" cols="30" rows="5" class="required"
                                              placeholder="Message"></textarea>
                                    <button class="btn btn-default btn-lg btn-3d" type="submit"
                                            data-hover="SUBMIT REQUEST">SUBMIT REQUEST
                                    </button>
                                    <div class="error-container"></div>
                                    <div class="message-container"></div>
                                </form>
                            </div>
                        </div>
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
</script>
</html>
