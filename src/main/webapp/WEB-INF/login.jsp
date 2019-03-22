<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/03/18
  Time: 上午 09:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" class="no-js">

<head>

    <meta charset="utf-8">
    <title>城市之夜</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/jquery/login/assets/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/jquery/login/assets/css/supersized.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/jquery/login/assets/css/style.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body>

<div class="page-container">
    <h1>城市之夜</h1>
    <form id="loginfrom">
        <input type="text" name="kehuname" class="username" placeholder="Username">
        <input type="password" name="kehupassword" class="password" placeholder="Password">
        <button id="login">Sign me in</button>
    </form>
</div>
<!-- Javascript -->
<script src="<%=request.getContextPath()%>/jquery/login/assets/js/jquery-1.8.2.min.js"></script>
<script src="<%=request.getContextPath()%>/jquery/login/assets/js/supersized.3.2.7.min.js"></script>
<script src="<%=request.getContextPath()%>/jquery/login/assets/js/supersized-init.js"></script>
<script src="<%=request.getContextPath()%>/jquery/login/assets/js/scripts.js"></script>

</body>
<script type="text/javascript">
    $("#login").on("click", function () {
        alert($("#loginfrom").serialize())
        $.ajax({
            url: "<%=request.getContextPath()%>/loginkehu",
            type: "post",
            data: $("#loginfrom").serialize(),
            dataType: "text",
            success: function (logins) {
                //用户名不存在
                if (logins == "userNameNO") {
                    alert("用户名不存在");
                }
                //密码错误
                if (logins == "userPassNo") {
                    alert("密码错误")
                }
                //登录成功
                if (logins == "loginSuccess") {
                    location.href = "/1807/toindex"
                    ;

                }
            },
            error: function () {
                alert("程序错误");
            }
        })
    });
</script>

</html>


