<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2017/10/4
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>拍品列表</title>
    <%--<meta name="format-detection" content="telephone=no" />--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/artlist.css" />
    <link rel= "stylesheet" href="${pageContext.request.contextPath}/static/css/index.css" />

</head>
<%--<body onkeydown="entersearch()">--%>
<body>

<!--引入头部-->
<div class="header">
    <div class="headerTop">
        <ul class="headerUl1 fr">
            <li><font size="3">Hi&nbsp;,&nbsp;欢迎进入拍库!&nbsp;&nbsp;</font></li>

            <c:if test="${sessionScope.username  == null }">
                <li><a id="denglu" href="${pageContext.request.contextPath}/toLogin"><font size="3"> &nbsp;登录</font></a></li>
                <li><a id="zhuce" href="${pageContext.request.contextPath}/toLogin"><font size="3" >注册</font></a>
                        <%--<a id="tuichu"  href="javascript:;" >退出</a>--%>
                </li>
            </c:if>
            <c:if test="${sessionScope.username  != null }">
                <li> <a><font size="3" color="#FF0000">${sessionScope.username}</font></a></li>
                <li> <a href="${pageContext.request.contextPath}/user/exit"><font size="3">&nbsp;退出&nbsp;</font></a></li>

            </c:if>

            <%--<a id="yonghu"   href="#"> &nbsp;用户名</a>--%>


            <li class="headerLi1">
                <a href="javascript:;">
                    <i class="ul1Tel"></i><font size="3">&nbsp;联系客服&nbsp;</font>
                    <%--<span><img src="img/common/san.png" class="header_san"/></span>--%>
                    <div class="headerDiv1 none">
                        电话:<br>400-111-2016
                    </div>
                </a>
            </li>
        </ul>
    </div>
</div>
<!--列表头部-->
<div class="listNav" >
    当前位置：<a href="${pageContext.request.contextPath}/toMain">首页</a> >
    <span id="listName">分类列表</span> >
    <span >${position}</span>
</div>




<input type="hidden" id="pageTotal" />
<!--筛选排序部分-->
<div class="sortDivDiv">
    <div class="sortDiv rel">
        <p>
            综合（<span name="total">${total}</span>）
        </p>
        <ul>
            <li id="sortMo">默认排序</li>
            <li id="sortHeight">价格从高到低</li>
            <li id="sortLow">价格从低到高</li>
        </ul>
        <!--分页部分-->
        <div id="pageSmall"></div>
        <div class="pageSmall">
            <span style="color: #E93B39;" class="thisPage">1</span>/
            <span class="totlePage"></span>&nbsp;
        </div>
    </div>
</div>



<!--艺术品列表-->
<div class="auctionLi clearfix">
    <div class="auctionList clearfix">
        <c:if test="${goodList  == null }">
            <p1>无数据</p1>
        </c:if>
                <c:forEach items="${goodList}" var="good">
                    <a href="${pageContext.request.contextPath}/good/toDetail?id=${good.id}">
                <dl>
                    <%--<a href="#" target="_blank">--%>
                        <dt>
                            <img src="${good.url}" />
                        </dt>
                    <%--</a>--%>
                    <dd class="auctionDivDd2">
                        <%--<a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">--%>
                            <p class="auctionName">名&nbsp;&nbsp;&nbsp; 称&nbsp;&nbsp; ：<span>${good.goodName}</span></p>
                            <p class="auctionAddress">起&nbsp;&nbsp;&nbsp; 拍&nbsp;&nbsp; ：<span>${good.goodPrice}</span></p>
                            <p class="auctionTime">开拍时间：<span>${good.beginTime}</span></p>
                        <%--</a>--%>
                    </dd>
                </dl>
                    </a>
                </c:forEach>
    </div>
</div>




<!--加载中-->
<%--<div class="loadDiv">--%>
    <%--<p>--%>
        <%--<img src="${pageContext.request.contextPath}/static/picture/loading.gif"/>--%>
        <%--加载中...--%>
    <%--</p>--%>
<%--</div>--%>
</body>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.js" ></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.lazyload.js" ></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/config.js" ></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/commonlist.js" ></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/artlist.js" ></script>--%>
</html>

