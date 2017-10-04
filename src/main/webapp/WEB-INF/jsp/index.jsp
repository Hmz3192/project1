<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2017/10/3
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <%--<link rel="shortcut icon" href="/static/favicon.ico.png"/>--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css" />
</head>
<body>
<div class="loginHeader">
    <div class="header_top">
        <a href="${pageContext.request.contextPath}/toMain">
            <img src="${pageContext.request.contextPath}/static/picture/logo.png"  class="fl header_logo"/>
        </a>
        <ul class="headerUl1 fr">
            <li><a href="${pageContext.request.contextPath}/toMain">返回首页</a></li>
        </ul>
    </div>
</div>
<div class="loginMain">
    <div class="loginCenter">
        <img src="${pageContext.request.contextPath}/static/picture/bg.png" class="fl loginBg" />
        <div class="login">
            <ul class="loginUl">
                <li class="active loginUlLi1">登录</li>
                <li class="loginUlLi2">注册</li>
            </ul>

            <div class="loginDiv">
                <div style="height: 20px;position: relative;left: 40px;color: red;bottom:10px">
                    <span id="checkmsg">${requestScope.mes}</span>
                </div>
                <form action="${pageContext.request.contextPath}/user/Login" name="f" method="post">

                <p class="loginTel">
                    <img src="${pageContext.request.contextPath}/static/picture/user.jpg" class="fl"/>
                    <input type="text" placeholder="请输入账号" class="loginUser" id="username" name="login"/>
                </p>
                <p class="loginTel">
                    <img src="${pageContext.request.contextPath}/static/picture/password.jpg" class="fl"/>
                    <input type="password" name="pwd" placeholder="密码" class="loginPassword" id="password"/>
                </p>
                <p>
                    <input type="text" class="inputInt" placeholder="验证码" id="picCodeImgLoginInt"/>
                    <input type="text"  id="verificationCodeTempLogin"/>
                    <img src="" class="abcd" id="picCodeImgLogin" onclick="getValidateImg()"/>
                </p>
                <div class="cl"></div>
                    <input type="submit" class="loginLog"  value="立即登录"/>
                </form>
                <p class="loginMima">
                    <a href="#">忘记密码?</a>
                </p>

            </div>
            <!--注册-->
            <div class="registerDiv hide">
                <div style="height: 20px;position: relative;left: 40px;color: red;bottom:10px">
                    <span id="checkmsg1">${requestScope.registermes}</span>
                </div>
                <form action="${pageContext.request.contextPath}/user/register" id="Login" method="post">
                <div id="errorRegister"></div>
                <p class="loginTel" >
                    <input type="text" placeholder="请输入账号" id="registerUserName" name="registerUserName"/>
                </p>
                <p class="loginTel" >
                    <input type="password" placeholder="设置密码 : 长度为6~16位字符" id="registerPassword" name="registerPassword"/>
                </p>
                <p class="loginTel" >
                    <input type="password" placeholder="确认密码" id="repassword"/>
                </p>
                <p style="margin-bottom: 20px; height: 45px;">
                    <input type="text" class="inputInt" placeholder="图形验证码" id="picCode"/>
                    <input type="text"  id="verificationCodeTemp"/>
                    <img src="" class="abcd" id="picCodeImg" onclick="getValidateImg()"/>
                </p>
                <div class="cl"></div>
                <p class="registerCheck">
                    <input type="checkbox" checked="checked"  id="agreeCheck"/>我已阅读并同意
                    <a href="javascript:;">
                        《拍库用户注册协议》
                    </a>
                </p>
                <input class="loginLog"  style="margin-top:0px; margin-bottom: 0;" value="立即注册" type="submit"/>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/md5.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/common.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/loginall.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/config.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/login.js" ></script>
</html>
