<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2017/10/4
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>拍品列表</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/artlist.css" />
    <style>
        .registerSucDiv{
            width: 1200px;
            margin: 50px auto;
            text-align: center;
        }
        .registerSucDiv>p:first-child{
            font-size: 30px;
            color: #E93939;
        }
        .registerSucDiv>p:nth-child(2){
            line-height: 60px;
            font-size: 14px;
            color: #454646;
        }
        .registerSucDiv>a{
            display: block;
            width: 250px;
            height: 50px;
            color: #FFFFFF;
            background: #E93939;
            text-align: center;
            line-height: 50px;
            margin: 20px auto;
            cursor: pointer;
        }
        /**********猜你喜欢*********/
        .indexTodayTitle{
            width: 1200px;
            margin:0 auto;
            height: 50px;
            padding-top: 20px;
            color: #333333;
            font-size:20px;
            line-height: 50px;
            border-bottom: 1px solid #666666;
        }
        .indexTodayTitle span{
            color: #999;
            font-size: 18px;
            padding-left: 10px;
        }
        .love{
            width:100%;
            height:320px;
            margin:30px 0;
            margin-top:20px;
        }
        .loveP {
            width:1200px;
            margin:0 auto;
            border-bottom: 1px solid #DDDDDD;
            position: relative;
            margin-bottom: 50px;
        }
        .loveP  img{
            width:135px;
            height:32px;
            margin:0 auto;
            display: block;
            position: absolute;
            left: 50%;
            top:-16px;
            margin-left: -68px;
        }
        .loveDiv{
            width:1200px;
            margin:0 auto;
            position: relative;
        }
        .loveDiv ul{
            position: relative;
            overflow: hidden;
            width:1100px;
            padding:0 50px;
            height:250px;
        }
        .loveDiv ul li{
            z-index: 200;
            position: absolute;
            left: -1200px;
            right:0;
        }
        .loveDiv ul li a{
            display: block;
            text-align: center;
            float: left;
            width: 150px;
            height: 220px;
            margin:0 45px;
            margin-top:20px;
        }
        .loveDiv ul li a p{
            text-align: center;
            width:150px;
            line-height: 20px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            font-size: 12px;
            font-family: "微软雅黑";
        }
        .loveDiv ul li a p.loveImg{
            width:150px;
            height: 150px;
            display: table-cell;
            vertical-align: middle;
            text-align: center;
            margin:0 45px;
            margin-bottom: 20px;
        }
        .loveDiv ul li a p.loveP2{
            padding-top:15px;
        }
        .loveDiv ul li img{
            max-width:150px;
            max-height:150px;
            margin-bottom:-10px;
        }
        .loveDiv ul li:first-child{
            left: 0;
        }
        .loveLeft{
            position: absolute;
            left:0px;
            cursor: pointer;
            top:70px;
            z-index: 200;
            opacity: 0.5;
            filter: Alpha(opacity=70);
        }
        .loveRight{
            position: absolute;
            right:0px;
            cursor: pointer;
            top:70px;
            z-index: 200;
            opacity: 0.5;
            filter: Alpha(opacity=70);
        }
        .loveRight:hover,.loveLeft:hover{
            opacity: 1;
            filter: Alpha(opacity=10);
        }
    </style>
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
                <li> <a href="${pageContext.request.contextPath}/user/exit"> <font size="3">&nbsp;退出&nbsp;</font></a></li>
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

<!--中间内容-->
<div class="registerSucDiv">
    <p>恭喜您，注册成功！</p>
    <p>
        <!--尊敬的<span></span>，-->
        恭喜您已经成为拍库网会员！即刻可以开启时尚购物之旅！
    </p>
    <a href="${pageContext.request.contextPath}/toMain">开始购物</a>
</div>
<!--今日推荐-->
<div class="love">
    <p class="indexTodayTitle" >
        今日推荐
    </p>
    <div class="loveDiv" style="overflow: hidden;">
        <ul style="overflow-y: hidden;overflow-x: auto;">
            <li>
                <!--<a href="javascript:;" >
                    <p class="loveImg"><img src="picture/bana1.jpg" /></p>
                    <p class="loveP2">金额为发财那v刹weriogjew wjeorwen我i结合盖浇饭 </p>
                    <p >$7445456</p>
                </a> -->
            </li>
        </ul>
        <div class="loveLeft"><img src="${pageContext.request.contextPath}/static/picture/left1.jpg"/></div>
        <div class="loveRight"><img src="${pageContext.request.contextPath}/static/picture/right1.jpg"/></div>
    </div>
</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/common.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/config.js" ></script>
<script>
    $(function(){
        //今日推荐

        getLove();
        roll($(".loveDiv"),$(".loveDiv ul"),$(".loveDiv ul li a"),$(".loveLeft"),$(".loveRight"));
    })
    function getLove(){
        $.ajax({
            url :queryQualityGoodsUrl,
            type: "get",
            dataType : "json",
            data : {
                "sourceMode":"PC",
                "tokenId":tokenId
            },
            error : function() {
                alert("网络繁忙，请稍后再试!");
            },
            success:function(data){
                var data=data.goods;
                for(var i=0; i<8; i++){
                    var content='<a>'+
                        '<p class="loveImg"><img src="'+data[i].thumbnailUrl+'" /></p>'+
                        '<p class="loveP2">'+"Lot "+data[i].lotNum+": "+data[i].goodsName+'</p>'+
                        '<p >'+data[i].priceUnit+''+data[i].startPrice+'</p>'+
                        '</a>';
                    $(".loveDiv ul li").append(content);
                }
                roll($(".loveDiv"),$(".loveDiv ul"),$(".loveDiv ul li a"),$(".loveLeft"),$(".loveRight"));
            }
        });


    }

    function roll(box,ul,li,leftbtn,rightbtn){
        //width:只包括dl的宽，；outerWidth:包括dl的宽和border，；outerWidth(true):包括dl的宽和border和margin，；
        var dlWidth = li.outerWidth(true);
        var dlLength = li.size();
        //获取外层隐藏的div里能放几个li
        var divWidth = box.width();
        //数量取整
        var perNum = parseInt(divWidth/dlWidth);
//			console.log(perNum);

        //将ul的宽设置为dl乘以dl数量
        ul.css({"width":dlWidth*dlLength});
        var i=0;
        rightbtn.bind("click",function(){
            i--
//				console.log(i);
            //当i移动（dlLength - perNum）时,最后div应该正好剩下perNum个li；再点击一次，即 i >= (dlLength - perNum + 1);应该返回0，重新开始
            //注意向左是负值，所以i <= -(dlLength - perNum + 1);
            if(i <= -dlLength + perNum -1){
                i=-dlLength + perNum;
            }
            ul.stop().animate({"left":i*dlWidth})
        })
        leftbtn.bind("click",function(){
            i++
//				console.log(i);
            //向右为正；当i==1时，要使整个li移动到最后边，所以i = -（dlLength - perNum）；即往前移动总的长度减去一个div所包含的长度；
            if(i >= 1){
                i= 0;
            }
            ul.stop().animate({"left":i*dlWidth})
        })
    }
</script>
</html>
