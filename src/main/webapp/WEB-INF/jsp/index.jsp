<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2017/10/3
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/demo.css" />
    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/component.css" />
</head>
<body>
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <div class="logo_box">
                <h3>欢迎你</h3>
                <form action="${pageContext.request.contextPath}/user/Login" name="f" method="post">
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="login" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
                    </div>
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="pwd" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
                    </div>
                    <div class="mb2"><input class="act-but submit"  type="submit" value="登录" style="color: #FFFFFF;width: 330px;"></div>
                </form>
            </div>
        </div>
    </div>
</div><!-- /container -->
<script src="${pageContext.request.contextPath}/static/js/TweenLite.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/EasePack.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/rAF.js"></script>
<script src="${pageContext.request.contextPath}/static/js/demo-1.js"></script>

</body>
</html>
