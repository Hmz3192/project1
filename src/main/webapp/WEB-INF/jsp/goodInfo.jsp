<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2017/10/7
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>拍品详情</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/detail.css" />
</head>
<body>
<!--头部-->
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
<!--导航部分-->
<input value="" id="userStartPrice"  type="hidden"/>
<input value="" id="userStartPrice2" type="hidden"/>
<div class="detailMain clearfix">
    <c:set value="${good}" var="good"/>
    <div class="detailNav">
        当前位置：首页 >
        <span>分类列表</span> >
        <span>详情</span>
    </div>
    <input 	name="addressId" 	id="getaddressId" 	value=""	type="hidden"/>
    <input 	name="addressesCountId" 	id="addressesCountId" 	value=""	type="hidden"/>
    <!--描述：1000px放大部分-->
    <div id="imgFade">
        <img alt="" src="${good.url}" />
        <span>X</span>
    </div>
    <div class="detailDiv clearfix">
        <div class="detailDivL">
            <!--bigImg end-->
            <div id="vertical" class="bigImg">
                <img src="${good.url}" alt="" id="midimg" />
                <div style="display:none;" id="winSelector"></div>
            </div>

            <!--smallImg end-->
            <div id="bigView" style="display:none;">
                <img alt="" src="${good.url}" />
            </div>

            <div class="smallImg">
                <div class="scrollbutton smallImgUp disabled"></div>
                <div id="imageMenu">
                    <img alt="" src="${good.url}" />
                </div>
                <div class="scrollbutton smallImgDown"></div>
            </div>
            <!--分享-->
            <div class="bdsharebuttonbox" style="vertical-align: middle; line-height: 25px;">
                <a href="javascript:;" class="bds_more" data-cmd="more" style="background: url(${pageContext.request.contextPath}/static/images/share.png)no-repeat left center;">分享</a>
            </div>
        </div>
        <!--右侧部分-->
        <div class="detailDivR">
            <p class="detailName" id="nameHidden">
                Lot<span id="nameLot"></span>：
                <span id="nameName">${good.goodName}</span>
            </p>
            <div class="detailDivRDiv">
                <p class="detailTime">
                    <span>开拍时间</span>
                    <span id="auctionTime">${good.beginTime}</span>
                </p>
                <p class="detailTime auctionAuctionP">
                    <span>拍卖会</span>
                    <span id="auctionAuction">
                            The Personal Property Auction of Carrie Fisher and Debbie Reynolds - Day 2
							</span>
                </p>
                <p class="detailAddress">
                    <span>开拍地点</span>
                    <span id="auctionAddress">Calabasas, CA, US</span>
                </p>
                <p class="detailStart">
                    <span>起拍价</span>
                    <span class="unit"></span><span id="price">￥ ${good.lessMoney}</span>&nbsp;&nbsp;
                    <%--<span class="unit nowStartPriceUnit">${good.lessMoney}</span><span id="nowStartPrice">${good.yikoujia}</span>--%>
                </p>
                <p class="detailPrice">
                    <span>估计报价</span>
                    <span id="estimatePrice">￥ ${good.lessMoney} - ￥ ${good.yikoujia}</span>
                </p>
            </div>
            <div class="detailBid rel">
                <span>我的报价</span>
                <span class="detailBidUnit unit"></span>
                <p class="rel detailBidP1">
                    <input class="min" name="" type="button"/>
                    <input class="textBox" name="" type="text" value="${good.lessMoney}" id="inputPrice" onkeyup="this.value=this.value.replace(/[^0-9.]+/,'');"/>
                    <input class="add" name="" type="button"/>
                </p>
                <p class="detailBidNum">
                    <span class="bidNum" style="width:200px;">当前竞拍人数(<sl id="bidNo">0</sl>人)</span><br>
                </p>
                <p class="detailBidNum">
                    <span class="bidGui">出价规则</span>
                </p>
                <div class="abs detailGui" style="z-index: 500;">
                    <img src="${pageContext.request.contextPath}/static/picture/guize.png" />
                </div>
            </div>
            <div class="detailSuggest">
                <span>建议报价</span>
                <p id="fitPrice85">
                </p>
                <span>(想要胜算更大？报价至少估价的85%)</span>
            </div>
            <div class="detailWen">
                <span>温馨提示</span>
                <p>
                    境外拍卖行佣金（30%）：<span class="unit"></span><span id="pecoo30"></span><br />
                    拍库平台服务费（10%）：<span class="unit"></span><span id="pecoo10"></span><br />
                    保险费：如需上保险请联系客服,运费和代运服务费以实际为准<br />
                    注：如有违约行为，将扣除相关保证金，并给予相应的处罚<span class="rel">
								<span class="baoGui">保证金规则</span>
								<img src="${pageContext.request.contextPath}/static/picture/baogui.png" class="abs baoGuiImg none"/>
							</span><br />
                    今日汇率<span id="Rate"></span><input type="hidden" id="rateInt"/>
                </p>
            </div>
            <div class="detailTotal">
                合计金额：
                <span class="unit"></span><span id="total"></span>
                <%--<span>(约合人民币：￥<span id="priceRate"> </span>元)</span>--%>
            </div>
            <p class="detailXieyi clearfix">
                <input type="checkbox" checked="checked" id="agreementCheck"/>
                我已同意阅读这拍卖的<span>《条款与协议》</span>
            </p>
            <p class="detailBidP clearfix">
                <span class="detailBidBid" onclick="isHaveMoney()">立即出价</span>
                <span class="detailCollect" onclick="collectWay()">收藏</span>
                <%--<span class="detailFan" id="fanyiCH">翻译</span>--%>
            </p>
            <p class="detail24">
                开拍前12小时内不可下单<br />
                为保障竞拍体验，建议您提前24小时下单！
            </p>
        </div>
    </div>
    <!--介绍部分-->
    <div class="detailInt">
        <!--猜你喜欢-->
        <div class="detailLove">
            <p>猜你喜欢</p>
            <div class="detailLoveDiv">
            </div>
        </div>
        <div class="detailIntR">
            <!--竞拍流程-->
            <div class="detailIntR1">
                <p>竞拍流程</p>
                <img src="${pageContext.request.contextPath}/static/picture/liucheng.png" />
            </div>
        </div>
        <!--详细介绍-->
        <div class="detailMiao">
            <ul class="detailMiaoUl clearfix">
                <li class="active" style="border:none;">宝贝描述</li>
                <li>注意事项</li>
                <li>运输</li>
                <li>付款</li>
            </ul>
            <ul class="detailMiaoUl2">
                <li style="display: block;" id="detailedDesc">拍品介绍</li>
                <li>
                    <p>敬告：您的出价行为表明已经认同了拍库网的拍卖规则。不论成功与否，你都承担与之相应的法律行为。</p>
                    注意：根据《拍卖法》的规定：买受人应当按照约定支付拍卖标的的价款，未按照约定支付价款的，应当承担违约责。通过竞买取得的拍品为特殊属性之商品，属于2014年3月15日起施行的《中华人民共和国消费者权益保护法》规定的“其他根据商品性质并经消费者在购买时确认不宜退货的商品，不适用无理由退货”。为了维护买卖双方的利益，规范网络拍卖市场的行为，如果因实物与描述明显不符，客户对拍品有退货的诉求，请在提货之日起7个工作日之内、物流发货请在签收之日起7个工作日内提出，逾期不予受理。不便之处，敬请谅解。
                </li>
                <li>
                    <p>西方资产储备运输和处理:</p>
                    <p style="text-indent: 2rem;">由于我们的拍品来自于全球多家拍卖行，各拍卖行的运输方式以及运费也不尽相同。买家所支付的费用中，运费为暂定数额，我们在协助买家运回拍品时，会及时与买家联系，告知其运输实际费用并收取差价。</p>
                    <p style="text-indent: 2rem;">鉴于每件拍品竞拍时间不同，支付时间也不同，我们无法提供准确的到货时长，但我们保证，发货后7到10个工作日内买家可收到货品，请耐心等待。我们会提供运单跟踪，方便买家查询物流状态。</p>
                </li>
                <li>
                    <p>付款方式</p>
                    目前充值到平台的金额仅用作保证金，不可抵扣货款。支付货款请打至拍库网指定账户，如下：<br>
                    账户名：拍库（北京）科技有限公司；<br>
                    开户行：招商银行股份有限公司北京朝外大街支行； <br>
                    账号：<span>1109 1863 6510 601</span>。<br>
                    支付宝：<span>webserver@pecoo.com</span>（请您在转账时在备注处填写您的用户名和手机号）；<br>
                    为保证您的权益，付款时请仔细核对账户，以免造成您的损失，谢谢
                </li>
            </ul>
            <div>
                <p class="ShowTitle">
                    拍品展示
                    <span>The auction show</span>
                </p>
                <div class="showImg" id="underPic">
                    <img src="${good.url}" />

                </div>
            </div>
        </div>
    </div>
</div>
<!--在线客服-->
<%--<div class="fasService" onclick="easemobIM()">--%>

</div>
<!--描述：遮罩-->
<div class="shadeBlack none"></div>
<!--条款与协议-->
<div class="xieyi">
    <div class="xieyiHeader">
        条款与协议
    </div>
    <span class="close" onclick="closeBox()"></span>
    <div class="xieyiContent">
        <p class="title">一、关于费用：</p>
        <p>拍库网作为国内第一家跨境拍卖服务平台，原则上，我们负责协助买家竞拍指定拍品，拍卖行将收取拍品成交价格及佣金，拍库网也将收取一定金额的代拍服务费。关于竞拍成功之后的包装，运输以及保险费用（包括抽样海关及其他相关额外费用），均需买家另行支付，届时我们将提供相关凭证。</p>
        <p class="title">费用细则：</p>
        <p>1. 竞拍成交价格： 以“实际成交价格”为准；此费用为境外拍卖行收取；</p>
        <p>2. 境外拍卖行佣金： 按成交价格“30%”收取，此费用为境外拍卖行收取；</p>
        <p>3. 拍库平台代拍服务费：按成交价格“10%”收取，此费用为拍库网收取；</p>
        <p>4. 拍库代运服务费： 按成交价格“10%”收取，此费用为拍库网收取；</p>
        <p>5. 运费及保险费： 根据物品价值，大小，重量的不同，运费及保险费价格也不同，最终以实际价格为准（保险费为买家自由选择）。此费用为物流公司收取。</p>
        <p class="title">二、关于运输：</p>
        <p>由于我们的拍品来自于全球多家拍卖行，各拍卖行的运输方式以及运费也不尽相同。买家所支付的费用中，运费为暂定数额，我们在协助买家运回拍品时，会及时与买家联系，告知其运输实际费用并收取差价。</p>
        <p>鉴于每件拍品竞拍时间不同，支付时间也不同，我们无法提供准确的到货时长，但我们保证，发货后7到10个工作日内买家可收到货品，请耐心等待。我们会提供运单跟踪，方便买家查询物流状态。</p>
        <p class="title">三、关于保险：</p>
        <p>拍品在运输过程中，不可避免地会存在一定风险，尤其是易碎贵重物品。因此，买家可选择为自己的物品投保，费用需自行承担。如需此项服务，请提前与我们联系。在买家收到货品发现破损并已投保的情况下，拍库网也会协助买家联系物流公司进行索赔。以上为拍库网服务条款与协议，如有疑虑，请与我们联系！</p>
        <p class="title">四、关于免责：</p>
        <p>免责声明：拍库网仅作为竞买人参与拍卖销售的沟通工具而非“网上拍卖公司”在任何情形下，拍库网均不是任何交易中的卖方，亦不作为任何拍卖公司的代理人或代表任何拍卖公司。如因拍品交易产生纠纷的，均由拍卖公司与竞买者独立承担所有相应的法律责任，拍库网对此不承担任何责任。 </p>
    </div>
    <div class="xieyiBtn">
        <button class="sureBtn" type="button" value="同意" onclick="closeBox()">同意</button>
    </div>
</div>
<!-- 报价不正确 -->
<div class="baojiaTan none" id="allFitMoney">
    <p class="baojiaP rel">温馨提示<img src="${pageContext.request.contextPath}/static/picture/x.png" class="abs shipaiTanX"/></p>
    <div class="baojiaDiv">
        <p>您的报价不符合出价规则，请从以下报价中选择一个正确报价!</p>
        <div id="fitMoney"></div>
    </div>
</div>
<!--保证金不足 -->
<div class="baoMoneyTan none" id="payMoney">
    <p class="baojiaP rel">温馨提示<img src="${pageContext.request.contextPath}/static/picture/x.png" class="abs shipaiTanX"/></p>
    <div class="baojiaDiv">
        <p class="baojiaDivP">尊敬的用户，您当前可用保证金不足2000，请及时充值！<br>
            温馨提示：每充值2000元保证金可竞拍3件拍品。</p>
        <div id="fitMoney1">
            <button type="button" class="immediatelyRecharge giveUp" onclick="recharge()">马上充值</button>
            <button type="button" class="giveUp" onclick="closePopup()">继续逛逛</button>
        </div>
    </div>
</div>
<!-- 试拍出价温馨提示 -->
<div class="shipaiTan none">
    <p class="baojiaP rel">温馨提示<img src="${pageContext.request.contextPath}/static/picture/x.png" class="abs shipaiTanX"/></p>
    <div class="baojiaDiv">
        <p>您有一单试拍体验的机会，试拍需要您先交纳货款，您也可以选择充值保证金，保证金使用规则为充值2000元可以拍买3件拍品，保证金的具体使用规则你可以咨询在线客服，或者拨打拍库热线400-111-2016，如果您选择充值保证金，则视为您自动放弃免费试拍资格。</p>
        <div  id="shiPaiCon">
            <!--<button type="button" class="immediatelyRecharge giveUp" onclick="payImme()">下单</button>
           <button type="button" class="giveUp" onclick="recharge()">去充值</button>-->
        </div>
    </div>
</div>
<!-- 下单成功跳转提示 -->
<div class="bidSuccessTan none">
    <p class="baojiaP rel">
        温馨提示
        <img src="${pageContext.request.contextPath}/static/picture/x.png" class="abs shipaiTanX"/>
    </p>
    <div class="baojiaDiv">
        <p style="text-align: center;">恭喜您,下单成功！<br>您是否进入"我的拍库"查看订单?</p>
        <div>
            <button type="button" onclick="bidSuccessOnclick()">确认</button>
            <button type="button" class="shipaiTanX">取消</button>
        </div>
    </div>
</div>
<!-- 修改出价成功跳转提示 -->
<div class="bidChangeSuccessTan none">
    <p class="baojiaP rel">
        温馨提示
        <img src="${pageContext.request.contextPath}/static/picture/x.png" class="abs shipaiTanX"/>
    </p>
    <div class="baojiaDiv">
        <p style="text-align: center;" >恭喜您,修改出价成功！<br>您是否进入"我的拍库"查看订单?</p>
        <div>
            <button type="button" onclick="bidSuccessOnclick()">确认</button>
            <button type="button" class="shipaiTanX">取消</button>
        </div>
    </div>
</div>
<!-- 是否修改出价提示 -->
<div class="bidChangeTan none">
    <p class="baojiaP rel">
        温馨提示
        <img src="${pageContext.request.contextPath}/static/picture/x.png" class="abs shipaiTanX"/>
    </p>
    <div class="baojiaDiv">
        <p style="text-align: center;">您确定要修改出价吗？</p>
        <div>
            <button type="button" onclick="bidChangeOnclick()">确认</button>
            <button type="button" class="shipaiTanX">取消</button>
        </div>
    </div>
</div>
<!--加载中-->
<div class="loadDiv none">
    <p>
        <img src="${pageContext.request.contextPath}/static/picture/loading.gif"/>
        加载中...
    </p>
</div>
<!--选择地址-->
<div class="chooseAdd hide">
    <div class="chooseAdd1">
        <p class="fl">选择收货地址</p>
        <p class="fr chooseAdd1p2" onclick="chooseAdd()">填写新地址</p>
    </div>

    <ul class="chooseAddUl" id="allAddress"></ul>
    <div class="addBtn" id="queOrder">
        <p class="chooseBtn2" onclick="setOrder()">确定</p>
        <p class="chooseBtn1" onclick="tanHide()">取消</p>
    </div>
</div>
<!--新增或编辑收货地址-->
<div class="addChange none">
    <p class="addChaP">收货地址
        <img src="${pageContext.request.contextPath}/static/picture/x.png" class="addChangeX" onclick="addChangeHide()"/>
    </p>
    <div class="addChaDiv clearfix">
        <div class="clearfix">
            <b>收货人<span>*</span>：</b>
            <input type="text" id="addressName"/>
        </div>
        <div class="clearfix">
            <b>所在地区<span>*</span>：</b>
            <select id="s_province" name="s_province"></select>  
            <select id="s_city" name="s_city"></select>  
            <select id="s_county" name="s_county"></select>
        </div>
        <div class="clearfix">
            <b>详细地址<span>*</span>：</b>
            <textarea id="addressMessage" placeholder="请您尽量填写详细" rows="2" cols="53" class="addTextarea"></textarea>
        </div>
        <div class="clearfix">
            <b>联系电话<span>*</span>：</b>
            <input type="text"  id="addressPhone" onkeyup="this.value=this.value.replace(/[^0-9.]+/,'');"/>
        </div>
        <div class="clearfix">
            <b>邮政编码：</b>
            <input type="text" id="postCode"/>
        </div>
        <p class="addShezhi clearfix">
            <input type="checkbox" name="isDefault" id="isDefault" value="N"/>&nbsp;&nbsp;是否设置成默认地址
        </p>
        <div class="addSave clearfix" id="addNewAddress">
            <!--<button class="addBtn1">保存收货地址</button>
            <button class="addBtn2" onclick="addChangeHide()">取消</button>-->
        </div>
    </div>
</div>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/common.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/area.js" ></script>
<!--<script type="text/javascript">_init_area();</script>-->
<script src='${pageContext.request.contextPath}/static/js/easemob.js' async='async'></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/fanyi-pecoo.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/config.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/sfprice.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/md5fan.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bigimg.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/detail.js" ></script>
</html>

