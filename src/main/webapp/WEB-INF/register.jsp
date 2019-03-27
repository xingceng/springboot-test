<%--
  Created by IntelliJ IDEA.
  User: zhao先生
  Date: 2019/3/25
  Time: 18:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link href="<%=request.getContextPath()%>/css/jq22.css" rel="stylesheet" type="text/css" />
    <script src="<%=request.getContextPath()%>/js/jquery-1.4.4.min.js"></script>
    <script language='javascript' src="<%=request.getContextPath()%>/js/jq22.js"></script>
</head>
<body>

<div class='body_main'>
    <!-- start main content -->
    <div class='index_box' style='margin-top:20px;'>
        <div style="position:fixed;color:red;margin:70px 0 0 450px;font-size:16px;Z-index:100;display:block;" id="hint"></div>
        <div class='box_title'>
            <div class='text_content'>
                <h1>城市之夜</h1>
            </div>
        </div>
        <div class='box_main'>
            <div id="register" class="register">
                <form id="form" method="post" action="addKeHuUser" onSubmit="return check();">
                    <div id="form_submit" class="form_submit">
                        <div class="fieldset">
                            <div class="field-group">
                                <label class="required title">手机号码</label>
                                <span class="control-group" id="mobile_input"  id="phonespan">
                <div class="input_add_long_background">
                  <input class="register_input"  type="text" id="mobile" name="kehuphone" maxLength="11" value="" onblur="__changeUserName('mobile');">
                </div>
                </span>
                                <label class="tips">仅用于发送服务开通与到期提醒以及紧急故障方便联系到您，绝对保密</label>
                            </div>
                            <div class="field-group">
                                <label class="required title">邮箱</label>
                                <span class="control-group" id="email_input" >
                <div class="input_add_long_background">
                  <input class="register_input" type="text" id="email" name="kehuemail" maxLength="50" value="" onblur="__changeUserName('email');">
                </div>
                </span>
                                <label class="tips">请输入您常用的邮箱</label>
                            </div>
                            <div class="field-group">
                                    <label class="required title">用户名</label>
                                    <span class="control-group" id="username_input" >
                                    <div class="input_add_long_background">
                                      <input class="register_input" type="text" id="kehuname" name="kehuname" maxLength="20" value="" onblur="checkkehuname(this.value);" />
                                    </div>
                                    </span>
                                    <label class="tips">请使用6~20个英文字母数字（区分大小写）、不能有符号</label>
                            </div>
                            <div class="field-group">
                                <label class="required title">设置密码</label>
                                <span class="control-group" id="password1_input" >
                <div class="input_add_long_background">
                  <input class="register_input" type="password" id="password1" name="kehupassword" maxLength="20" value="" onblur="checkPwd1(this.value);" />
                </div>
                </span>
                                <label class="tips">请使用6~20个英文字母（区分大小写）、符号或数字</label>
                </div>
                 <div class="field-group">
                                <label class="required title">短信验证码</label>
                                <input type="hidden" id="bool">
                                <span class="control-group" id="code_input">
                <div class="input_add_background" style="margin-right:15px;">
                  <input class="register_input_ot" type="text" id="code" onblur="checkcard()" name="code" max_length="6" >
                </div>
                </span>
                     <input type="button" onclick="queryYZM()" value="获取验证码" id="butt">
                 </div>
                        </div>
                    </div>
                    <div id="div_submit" class="div_submit">
                        <div class='div_submit_button'>
                            <input id="submit" type="submit" value="注册" class='button_button disabled'>
                        </div>
                    </div>
                </form>
            </div>
            <script type="text/javascript">
                function checkkehuname(username){
                    if(username==""){
                        showTooltips('username_input','请输入用户名');
                        return false;
                    }else{
                        $.ajax({
                            url:'queryUser',
                            data:{username:username},
                            type:'post',
                            success:function(data){
                                if(data=="用户名已存在"){
                                    showTooltips('username_input',data);
                                    return false;
                                }else{
                                    hideTooltips('username_input');
                                    return true;
                                }

                            }
                        })
                    }

                }
                function checkPwd1(pwd1) {
                    if (pwd1.search(/^.{6,20}$/) == -1) {
                        showTooltips('password1_input','密码为空或位数太少');
                        return false;
                    }else{
                        hideTooltips('password1_input');
                        return true;
                    }
                }

                function checkEmail(email) {
                    if (email.search(/^.+@.+$/) == -1) {
                        showTooltips('email_input','邮箱格式不正确');
                        return false;
                    }else{
                        hideTooltips('email_input');
                        return true;
                    }
                }
                function checkAuthCode() {
                    if($("#bool").val()=="验证码正确"){
                        hideTooltips('code_input');
                        return true;
                    }else{
                        showTooltips('code_input',"验证码不正确!");
                        return false;
                    }


                }
                function check() {
                    var ckh_result=true;
                    if (checkEmail($('#email').val()) == false) {
                        showTooltips('email_input','邮箱不能为空');
                        ckh_result = false;
                    }
                    if(!checkAuthCode()){
                        showTooltips('code_input',"验证码不正确");
                        ckh_result = false;
                    }
                    if (checkPwd1($('#password1').val()) == false) {
                        showTooltips('password1_input','密码不能为空');
                        ckh_result = false;
                    }
                    if(checkMobilePhone($("#mobile").val())==false) {
                        showTooltips('mobile_input','手机号码不正确');
                        ckh_result = false;
                    }
                    if(checkkehuname($('#kehuname').val())=="false"){
                        showTooltips('username_input',"用户名不正确");
                        ckh_result = false;
                    }else{
                        return ckh_result;
                    }
                }
                function checkMobilePhone(telphone) {
                    if(telphone=='' || !isMobilePhone(telphone)) {
                        showTooltips('mobile_input','请输入正确的手机号码');
                        return false;
                    }else{
                        hideTooltips('mobile_input');
                        return true;
                    }
                }
                function isMobilePhone(value) {
                    if(value.search(/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/) == -1){
                        return false;
                    }
                    else{
                        return true;
                    }

                }
            </script>
        </div>
    </div>
</div>

</body>
<script>
    function queryYZM(){
        var phone=document.getElementById("mobile").value;
        checkMobilePhone(phone);
            $.ajax({
                url:'sendCode',
                data:{"phone":phone},
                success:function(data){
                   if(data[1]=="00000"){
                       setIntervalss();
                    }else{
                       showTooltips('code_input','发送失败！');
                   }

                }
            })
    }
    var miao = 60;
    function setIntervalss(){
        if(miao==0){
            $("#butt").attr("disabled",false);
            $("#butt").attr("value","获取验证码");
            return;
        }else{
            $("#butt").attr("disabled",true);
            $("#butt").attr("value",miao+"后重新获取验证码");
            miao--;
            setTimeout(function(){setIntervalss()},1000);
        }

    }
    function checkcard(){
        var phone=document.getElementById("mobile").value;
        var code=document.getElementById("code").value;
        $.ajax({
            url:"queryCard",
            data:{code:code,phone:phone},
            type:'post',
            success:function(data){
               $("#bool").val(data);
            },error:function(){
                showTooltips('code_input',"网络环境有点问题请稍后再试!");
            }
        });
    }
</script>
</html>
