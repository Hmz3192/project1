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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/artlist_1.css" />
    <link rel= "stylesheet" href="${pageContext.request.contextPath}/static/css/index.css" />

</head>
<%--<body onkeydown="entersearch()">--%>
<body>
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

