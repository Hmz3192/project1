<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2017/9/30
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>拍库网-全球线上拍卖交易服务平台</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css"/>
</head>
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

<!--头部固定搜索框-->
<div class="index2Search">
    <div class="index2SearchDiv rel">
        <a href="javascript:"><img src="${pageContext.request.contextPath}/static/picture/logopecoo.png"
                                   class="fl header_logo" style="width:128px;height:26px;"/></a>
        <p>
            <input type="text" placeholder="请输入搜索内容" class="SearchInput" id="keyProFix"/>
            <input type="button" value="搜索" class="SearchButton" onclick="findProduct();"/>
        <ul class="searchUl abs" id="matchingUlFix">

        </ul>
        </p>
    </div>
</div>
<!--banner-->
<div id="banners">
    <div class="content">
        <ul class="banners" id="bannersUl">
            <li bgColor="#2d0506">
                <a href="http://www.pecoo.com/artList.html?kindCode=005">
                    <img src="${pageContext.request.contextPath}/static/picture/c53299840eb141acb9076af63202f9ab.gif"/>
                </a>
            </li>
            <li bgColor="#fefcf0">
                <a href="http://www.pecoo.com/artList.html?kindCode=006">
                    <img src="${pageContext.request.contextPath}/static/picture/be1f3d69d756435abdb49bce1f83035f.gif"/>
                </a>
            </li>
            <li bgColor="#2f5b9c">
                <a href="http://www.pecoo.com/artList.html?kindCode=005">
                    <img src="${pageContext.request.contextPath}/static/picture/52aee4081c144f6ca63943480e71b02c.gif"/>
                </a>
            </li>
            <li bgColor="#f4f3ee">
                <a href="http://www.pecoo.com/artList.html?kindCode=004">
                    <img src="${pageContext.request.contextPath}/static/picture/62a0a384d89f46a596006a5ebd678b7d.gif"/>
                </a>
            </li>
            <li bgColor="#fbfdfe">
                <a href="http://www.pecoo.com/artList.html?kindCode=003">
                    <img src="${pageContext.request.contextPath}/static/picture/6e485251550049b9a5a4628ca258ae28.gif"/>
                </a>
            </li>
        </ul>
        <a href="javascript:void(0);" class="btn prev"></a>
        <a href="javascript:void(0);" class="btn next"></a>
        <ul class="number" id="bannerNum">
            <li><a href="javascript:void(0);"></a></li>
            <li><a href="javascript:void(0);"></a></li>
            <li><a href="javascript:void(0);"></a></li>
            <li><a href="javascript:void(0);"></a></li>
            <li><a href="javascript:void(0);"></a></li>
            <li><a href="javascript:void(0);"></a></li>
        </ul>
    </div>
</div>
<!--今日推荐-->
<div class="indexToday div">
    <p class="indexTodayTitle">
        今日推荐 <span>Recommend</span>
        <a href="${pageContext.request.contextPath}/toList?kind=0" target="_blank">
            更多<img src="${pageContext.request.contextPath}/static/picture/indexright.png"/>
        </a>
    </p>
    <div class="toadyDiv clear">

        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=0" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/1ff1f083a7eb40f1ad0466bacee9b6a3.gif"
                         title="ANTIQUE HUANGHUALI OPEN SHELF DOUBLE DOOR CABINET"/>
                </dt>
                <dd>
                    <p>Lot&nbsp;274 ：ANTIQUE HUANGHUALI OPEN SHELF DOUBLE DOOR CABINET</p>
                    <p class="toadyDivDdP2">
                        起拍价：<span>$1,000</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=0" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/2f9c8e70a13d40579e47e7ae3c4d06fc.gif"
                         title="PAIR OF CARVED HUANGHUALI ROSE CHAIRS, MEIGUI YI"/>
                </dt>
                <dd>
                    <p>Lot&nbsp;269 ：PAIR OF CARVED HUANGHUALI ROSE CHAIRS, MEIGUI YI</p>
                    <p class="toadyDivDdP2">
                        起拍价：<span>$1,000</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=0" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/b14e23d7e70b41569953060516dde19f.gif"
                         title="QING CHINESE SILK EKAVIRA VAJRABHAIRAVA TANGKA"/>
                </dt>
                <dd>
                    <p>Lot&nbsp;292 ：QING CHINESE SILK EKAVIRA VAJRABHAIRAVA TANGKA</p>
                    <p class="toadyDivDdP2">
                        起拍价：<span>$800</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=0" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/bccf2472233446e3a03b6bde60f7c833.gif"
                         title="ANTIQUE LACQUERED TALL CHEST IN DRAGON MOTIF"/>
                </dt>
                <dd>
                    <p>Lot&nbsp;279 ：ANTIQUE LACQUERED TALL CHEST IN DRAGON MOTIF</p>
                    <p class="toadyDivDdP2">
                        起拍价：<span>$1,000</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=0" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/6704e17f0f3a49379fb92a4a93eb22cc.gif"
                         title="FAMILLE ROSE FLORAL MOTIF PORCELAIN TEAPOT"/>
                </dt>
                <dd>
                    <p>Lot&nbsp;322 ：FAMILLE ROSE FLORAL MOTIF PORCELAIN TEAPOT</p>
                    <p class="toadyDivDdP2">
                        起拍价：<span>$400</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=0" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/0d445add3a7a4d26a06b3ee3062ec2ee.gif"
                         title="FRAMED 19TH C. CHINESE EMBROIDERY DRAGON SILK PANEL"/>
                </dt>
                <dd>
                    <p>Lot&nbsp;289 ：FRAMED 19TH C. CHINESE EMBROIDERY DRAGON SILK PANEL</p>
                    <p class="toadyDivDdP2">
                        起拍价：<span>$600</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=0" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/93748450e7f9414eb6e467f77fdb09ae.gif"
                         title="PAIR ZITAN DOUBLE DOOR &amp; DRAWERS CABINETS"/>
                </dt>
                <dd>
                    <p>Lot&nbsp;275 ：PAIR ZITAN DOUBLE DOOR &amp; DRAWERS CABINETS</p>
                    <p class="toadyDivDdP2">
                        起拍价：<span>$1,600</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=0" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/b143d0c9a7db4ec2b528663d20e2b7da.gif"
                         title="A Mongolian silver casket."/>
                </dt>
                <dd>
                    <p>Lot&nbsp;370 ：A Mongolian silver casket.</p>
                    <p class="toadyDivDdP2">
                        起拍价：<span>$750</span>
                    </p>
                </dd>
            </a>
        </dl>
    </div>
</div>
<!--拍卖会专区-->
<div class="indexToday div">
    <div>
        <p class="indexTodayTitle" style="padding-top: 40px;">
            拍卖会<span>Auction</span>
            <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                更多<img src="${pageContext.request.contextPath}/static/picture/indexright.png"/>
            </a>
        </p>
    </div>
    <div class="auctionAllDiv">
        <div class="auctionDiv clearfix">
            <dl>
                <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                    <dt>
                        <img src="${pageContext.request.contextPath}/static/picture/734ede60894a4805bb5b13bd9715064c.gif"/>
                    </dt>
                </a>
                <dd class="auctionDivDd2">
                    <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                        <p class="auctionName">名&nbsp;&nbsp;&nbsp; 称&nbsp;&nbsp; ：<span>Silver Auction</span></p>
                        <p class="auctionAddress">地&nbsp;&nbsp;&nbsp; 址&nbsp;&nbsp; ：<span>BW Klaaswaal, NL</span></p>
                        <p class="auctionTime">开拍时间：<span>2017-10-05 17:30:00</span></p>
                    </a>
                </dd>
            </dl>
            <dl>
                <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                    <dt>
                        <img src="${pageContext.request.contextPath}/static/picture/199ae51155b742549323af0bdb8d0be9.gif"/>
                    </dt>
                </a>
                <dd class="auctionDivDd2">
                    <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                        <p class="auctionName">名&nbsp;&nbsp;&nbsp; 称&nbsp;&nbsp; ：<span>AFRICAN-AMERICAN FINE ART</span>
                        </p>
                        <p class="auctionAddress">地&nbsp;&nbsp;&nbsp; 址&nbsp;&nbsp; ：<span>New York, NY, US</span></p>
                        <p class="auctionTime">开拍时间：<span>2017-10-06 03:30:00</span></p>
                    </a>
                </dd>
            </dl>
            <dl>
                <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                    <dt>
                        <img src="${pageContext.request.contextPath}/static/picture/ab3381c715b24711881b17ce07683845.gif"/>
                    </dt>
                </a>
                <dd class="auctionDivDd2">
                    <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                        <p class="auctionName">名&nbsp;&nbsp;&nbsp; 称&nbsp;&nbsp; ：<span>American Art</span></p>
                        <p class="auctionAddress">地&nbsp;&nbsp;&nbsp; 址&nbsp;&nbsp; ：<span>New York, NY, US</span></p>
                        <p class="auctionTime">开拍时间：<span>2017-10-06 23:00:00</span></p>
                    </a>
                </dd>
            </dl>
            <dl>
                <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                    <dt>
                        <img src="${pageContext.request.contextPath}/static/picture/6716c23e72f04bb595c18aefb032b52b.gif"/>
                    </dt>
                </a>
                <dd class="auctionDivDd2">
                    <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                        <p class="auctionName">名&nbsp;&nbsp;&nbsp; 称&nbsp;&nbsp; ：<span>RIOPELLE,ZUNIGA,ALFEIRI,TOBEY,PICASSO,MURANO,JEWELRY,COINS</span>
                        </p>
                        <p class="auctionAddress">地&nbsp;&nbsp;&nbsp; 址&nbsp;&nbsp; ：<span>Tampa, FL, US</span></p>
                        <p class="auctionTime">开拍时间：<span>2017-10-07 07:30:00</span></p>
                    </a>
                </dd>
            </dl>
            <dl>
                <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                    <dt>
                        <img src="${pageContext.request.contextPath}/static/picture/37cd7ad0a6f54a7897b718acc83eb95e.gif"/>
                    </dt>
                </a>
                <dd class="auctionDivDd2">
                    <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                        <p class="auctionName">名&nbsp;&nbsp;&nbsp; 称&nbsp;&nbsp; ：<span>Wines & Spirits</span></p>
                        <p class="auctionAddress">地&nbsp;&nbsp;&nbsp; 址&nbsp;&nbsp; ：<span>Mutterstadt, DE</span></p>
                        <p class="auctionTime">开拍时间：<span>2017-10-07 18:00:00</span></p>
                    </a>
                </dd>
            </dl>
            <dl>
                <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                    <dt>
                        <img src="${pageContext.request.contextPath}/static/picture/ff690977ad6f43528b9a3af9248f73c6.gif"/>
                    </dt>
                </a>
                <dd class="auctionDivDd2">
                    <a href="${pageContext.request.contextPath}/toList?kind=1" target="_blank">
                        <p class="auctionName">名&nbsp;&nbsp;&nbsp; 称&nbsp;&nbsp; ：<span>Russian, American & European paintings XIX-XX</span>
                        </p>
                        <p class="auctionAddress">地&nbsp;&nbsp;&nbsp; 址&nbsp;&nbsp; ：<span>Prague, CZ</span></p>
                        <p class="auctionTime">开拍时间：<span>2017-10-08 01:00:00</span></p>
                    </a>
                </dd>
            </dl>
        </div>
    </div>
</div>
<!--艺术品-->
<div class="indexToday div">
    <div>
        <p class="indexTodayTitle" style="padding-top: 40px;">
            艺术品<span>Art</span>
            <a href="${pageContext.request.contextPath}/toList?kind=2" target="_blank">
                更多<img src="${pageContext.request.contextPath}/static/picture/indexright.png"/>
            </a>
        </p>
    </div>
    <div class="artDiv clearfix">
        <div class="artLeft" id="artLeft">
            <a href="${pageContext.request.contextPath}/toList?kind=2" target="_blank">
                <img src="${pageContext.request.contextPath}/static/picture/139bcaf3bc474fae9d3f3ad033319334.gif"/>
            </a>
        </div>
        <div class="artRight" id="artRight">
            <a href="${pageContext.request.contextPath}/toList?kind=2" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/23cab9c78cf1451e8a9f048bd248d3c5.gif"/></span>
                <p>5-piece Cabinet vases, Qianlong</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=2" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/8e76ea57b8c34e1eb0f5d3fe7d62bf3c.gif"/></span>
                <p>Chinese Beijing Carpet,</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=2" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/ae7c4d2031314c328f65c78c6b137f31.gif"/></span>
                <p>Chinese Beijing Carpet,</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=2" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/dc3b8b8b639c4b77979f7e67e9430a22.gif"/></span>
                <p>pair of 19th c. Chinese rose medallion porcelain vases</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=2" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/799649552276418a9562091f612f7486.gif"/></span>
                <p>ELEVEN PIECES OF BLUE AND WHITE CANTON PORCELAIN</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=2" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/508226f0ee1f49a78b1b9d4e79c9144a.gif"/></span>
                <p>plate Kang Xi</p>
            </a>
        </div>
    </div>
</div>
<!--名表-->
<div class="indexToday div clearfix">
    <div>
        <p class="indexTodayTitle" style="padding-top: 30px;">
            名表<span>Watch</span>
            <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
                更多<img src="${pageContext.request.contextPath}/static/picture/indexright.png"/>
            </a>
        </p>
    </div>
    <div class="artDiv clearfix">
        <div class="artLeft" id="watchLeft">
            <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
                <img src="${pageContext.request.contextPath}/static/picture/ba1ace3d789346af9ead025d864a8971.gif"/>
            </a>
        </div>
        <div class="artRight" id="watchRight">
            <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/cc6022aa6c6e44bda2e5455d438e1cd6.gif"/></span>
                <p>Rolex 18K Yellow Gold Day-Date Quick Set Men's Ref. 18038 Serial 7098xxx</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/739957694d724a8b87f4c4e5d12a0e03.gif"/></span>
                <p>Rolex Stainless Steel Black Submariner Men's Reference 16800 Case Serial 9317xxx</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/f53340845fb44e15bd14cbcab620b292.gif"/></span>
                <p>Bvlgari 18k Rose Gold Strap Watch Ladies Reference L1556 Case Number AA 39 G</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/bb4d825ca41347d392bfc226411d7506.gif"/></span>
                <p>Rolex Men's 18K Yellow President, QuickSet, Diamond Dial &amp; Diamond Bezel - REF-1232N7F</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/95e4aaaec2864a0b962009b92a28ee27.gif"/></span>
                <p>Rolex Ladies Two Tone 14K Gold/SS, Diam Dial &amp; Diam/Emerald Bezel, Saph Crystal - REF-368A7N</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/b8a057eea32d47188f3ecdae3133e1f0.gif"/></span>
                <p>Rolex Ladies Stainless Steel, Diamond Dial &amp; Diamond Bezel, Saph Crystal - REF-355K6R</p>
            </a>
        </div>
    </div>
    <div class="watchLogo clearfix" id="watchLogo">

        <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/798f68ed7b6f4f7aa552863ea457291a.gif"
                         width="180" height="90" alt="百达翡丽"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">百达翡丽</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
        <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/e6bc79d473d7449492d9c8af90f4b8a0.gif"
                         width="180" height="90" alt="劳力士"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">劳力士</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
        <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/3170b9c27b10425ca2c2bcc23f91bde8.gif"
                         width="180" height="90" alt="欧米茄"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">欧米茄</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
        <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/1ed42255db8c49dfacc1aa3077a4da59.gif"
                         width="180" height="90" alt="百年灵"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">百年灵</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
        <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/6631118d7d4846df9b2d35c572f72e2e.gif"
                         width="180" height="90" alt="卡地亚"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">卡地亚</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
        <a href="${pageContext.request.contextPath}/toList?kind=3" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/7b706f5c5f124ec492596fa97df5ebe1.gif"
                         width="180" height="90" alt="积家"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">积家</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
    </div>
</div>


<!--珠宝-->
<div class="indexToday div clearfix">
    <div>
        <p class="indexTodayTitle" style="padding-top: 30px;">
            珠宝<span>Jewel</span>
            <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
                更多<img src="${pageContext.request.contextPath}/static/picture/indexright.png"/>
            </a>
        </p>
    </div>


    <div class="artDiv clearfix">
        <div class="artLeft" id="jewelLeft">
            <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
                <img src="${pageContext.request.contextPath}/static/picture/6eca1de207af49e4a79fd8459e19679c.gif"/>
            </a>
        </div>
        <div class="artRight" id="jewelRight">
            <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/d9f54603ccd84483b3aa0aedf66bf4da.gif"/></span>
                <p>Rosette ring white gold, approx. 0.7 ct. Diamond and emerald - 14 kt.</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/36f3efc097ab4b4294a906f61ca3d7d7.gif"/></span>
                <p>Entourage ring yellow gold, 2.20 ct. Diamond - 18 kt.</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/b455122773c5488cb2129bf7230800c9.gif"/></span>
                <p>Antique ring bicolor gold, diamond - 14 kt.</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/3cfe1079174f41e496b34c11c835a691.gif"/></span>
                <p>18K White Gold Round Brilliant &amp; Sapphire Diamond Uni-Sex Ring.</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/bd220849bff64878bdc1d51717316539.gif"/></span>
                <p>Beautiful Colombian Emerald &amp; Diamond Ring.</p>
            </a>
            <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
                <span><img
                        src="${pageContext.request.contextPath}/static/picture/6de92f2eb23e44ef86bce0a5bf4b0cbe.gif"/></span>
                <p>A Rare &amp; Unusual Change of Color Chameleon Diamond.</p>
            </a>
        </div>
    </div>
    <div class="watchLogo clearfix" id="jewelLogo">
        <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/a4fc0f05f476439695ce5a63d05518e4.gif"
                         width="180" height="90" alt="宝格丽"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">宝格丽</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
        <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/fd7bfb9e738e4cf797ab76b02f045a3b.gif"
                         width="180" height="90" alt="蒂芙尼"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">蒂芙尼</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
        <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/6e1774a3fd1247deb69b19443c848855.gif"
                         width="180" height="90" alt="梵克雅宝"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">梵克雅宝</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
        <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/59f027a2fc854fb09ae3e77538894581.gif"
                         width="180" height="90" alt="香奈儿"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">香奈儿</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
        <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/ac4fa3e1441647229558c10d17ef0b84.gif"
                         width="180" height="90" alt="戒指"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">戒指</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
        <a href="${pageContext.request.contextPath}/toList?kind=4" target="_blank">
            <dl>
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/c700040194014e24a96d11a84cf2a0ce.gif"
                         width="180" height="90" alt="耳环"/>
                </dt>
                <dd>
                    <div>
                        <span class="wz">耳环</span>
                        <span class="span_l"></span>
                        <span class="span_r"></span>
                    </div>
                </dd>
            </dl>
        </a>
    </div>
</div>
<!--收藏品-->

<!--老爷车-->

<!--相机-->


<!--闪购-->
<div class="indexToday div">
    <p class="indexTodayTitle">
        奢侈品 <span>Luxury</span>
        <a href="${pageContext.request.contextPath}/toList?kind=5" target="_blank">
            更多<img src="${pageContext.request.contextPath}/static/picture/indexright.png"/>
        </a>
    </p>
    <div class="toadyDiv clear" id="lightDiv">
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=5" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/2e621f1392db4e0186936d461ab74d44.gif"
                         title="14K Topaz, Diamond &amp; Pearl Pendant"/>
                </dt>
                <dd>
                    <p>14K Topaz, Diamond &amp; Pearl Pendant</p>
                    <p class="toadyDivDdP2">
                        一口价：<span>$395</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=5" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/b3aa290de9e744d4b49fffcb68a58f6a.gif"
                         title="Tiffany &amp; Co&dot Round Lock Charm"/>
                </dt>
                <dd>
                    <p>Tiffany &amp; Co&dot Round Lock Charm</p>
                    <p class="toadyDivDdP2">
                        一口价：<span>$145</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=5" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/934cc025c4ef45f5b5ae35ed06aca99a.gif"
                         title="Nina Ricci Textured Clip-On Earrings"/>
                </dt>
                <dd>
                    <p>Nina Ricci Textured Clip-On Earrings</p>
                    <p class="toadyDivDdP2">
                        一口价：<span>$45</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=5" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/c1d3845265f74aacb55dd7501a0694b6.gif"
                         title="14K Sapphire &amp; Diamond Ring"/>
                </dt>
                <dd>
                    <p>14K Sapphire &amp; Diamond Ring</p>
                    <p class="toadyDivDdP2">
                        一口价：<span>$375</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=5" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/535700fed9d049c0a752a4d41c36d851.gif"
                         title="Judith Ripka Tanzanite &amp; Diamond Pendant"/>
                </dt>
                <dd>
                    <p>Judith Ripka Tanzanite &amp; Diamond Pendant</p>
                    <p class="toadyDivDdP2">
                        一口价：<span>$1,295</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind=5" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/e2aa54bd394e42bc9a575b779b77926b.gif"
                         title="Judith Ripka 18K Blue Quartz &amp; Diamond Kick Cuff"/>
                </dt>
                <dd>
                    <p>Judith Ripka 18K Blue Quartz &amp; Diamond Kick Cuff</p>
                    <p class="toadyDivDdP2">
                        一口价：<span>$1,995</span>
                    </p>
                </dd>
            </a>
        </dl>
        <dl>
            <a href="${pageContext.request.contextPath}/toList?kind= 5" target="_blank">
                <dt>
                    <img src="${pageContext.request.contextPath}/static/picture/50a8a1f801eb44b49943cd2fdb6b2f1b.gif"
                         title="Judith Ripka 18K Diamond Heart Pendant"/>
                </dt>
                <dd>
                    <p>Judith Ripka 18K Diamond Heart Pendant</p>
                    <p class="toadyDivDdP2">
                        一口价：<span>$1,395</span>
                    </p>
                </dd>
            </a>
        </dl>
    </div>
</div>
<!--楼梯-->
<div class="stairMain">
    <ul class="stair">
        <li>今日推荐<span>今日推荐</span></li>
        <li>拍卖会<span>拍卖会</span></li>
        <li>艺术品<span>艺术品</span></li>
        <li>名表<span>名表</span></li>
        <li>珠宝<span>珠宝</span></li>

        <li style="border:none;">奢侈品<span>奢侈品</span></li>

    </ul>
</div>
<!--右侧固定部分-->
<div class="fixRight">
    <ul>
        <li class="indexMine">
            <a href="${pageContext.request.contextPath}/toUser"><span></span></a>
            <p>个人中心</p>
        </li>
        <li class="indexKefu" onclick="easemobIM()">
            在线客服
        </li>
        <li class="indexCar">
            <a href="#"><span></span></a>
            <p>我的拍品</p>
        </li>

        <li class="indexCollect">
            <a href="#"><span></span></a>
            <p>我的收藏</p>
        </li>
        <li class="indexLogin">
            <a href="${pageContext.request.contextPath}/toLogin" style="color:#FFFFFF;"><span>注册</span></a>
        </li>
        <li class="lastTop">
            <img src="${pageContext.request.contextPath}/static/picture/top.png"/>
            TOP
            <p>回到顶部</p>
        </li>
    </ul>
</div>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/config.js"></script>
<script src='${pageContext.request.contextPath}/static/js/easemob.js' async='async'></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/index.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/indexbanner.js"></script>
</html>

