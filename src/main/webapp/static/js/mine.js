$(function(){
	//引入头部底部
	if(!isLogin()){
		window.location.href="login.html";
	}
	var type= getUrlParam("type");	
	//是否显示推荐订单
	if(isManager=="N"&&isChannel=="N"){
		$(".myReferrerOrder").hide();
	}
	//左侧导航菜单部分
	
	menuClick($(".mineUlLi1 ul li"));
	menuClick($(".mineUlLi2 ul li")); 
	menuClick($(".mineUlLi3 ul li"));
	menuClick($(".mineUlLi4 ul li"));
	
	//加载我的拍库
	var str=location.href;
	if(str.indexOf("type")<0){
		$(".mineRight").load("myPecoo.html");
	}
	if(type=="myLetter"){//加载站内信
		$(".mineRight").load("myLetter.html");
		$(".myLetter").css("color","#E93B39");
	}
	else if(type=="myBid"){//加载出价
		$(".mineRight").load("myBid.html");
		$(".myBid").css("color","#E93B39");
	}
	else if(type=="myBuction"){//加载竞拍成功
		$(".mineRight").load("myBuction.html");
		$(".myBuction").css("color","#E93B39");
	}
	else if(type=="myPay"){//加载已付款
		$(".mineRight").load("myPay.html");
		$(".myPay").css("color","#E93B39");
	}
	else if(type=="myShipper"){//加载已发货
		$(".mineRight").load("myShipper.html");
		$(".myShipper").css("color","#E93B39");
	}
	else if(type=="myBuy"){//加载已买到
		$(".mineRight").load("myBuy.html");
		$(".myBuy").css("color","#E93B39");
	}
	else if(type=="myBuctionFail"){
		$(".mineRight").load("myBuctionFail.html");
		$(".myBuctionFail").css("color","#E93B39");
	}
	else if(type=="mySaleOrder"){
		$(".mineRight").load("mySaleOrder.html");
		$(".mySaleOrder").css("color","#E93B39");
	}
	else if(type=="mySaleFreight"){
		$(".mineRight").load("mySaleFreight.html");
		$(".mySaleFreight").css("color","#E93B39");
	}
	else if(type=="mySaleShipper"){
		$(".mineRight").load("mySaleShipper.html");
		$(".mySaleShipper").css("color","#E93B39");
	}
	else if(type=="mySaleBuy"){
		$(".mineRight").load("mySaleBuy.html");
		$(".mySaleBuy").css("color","#E93B39");
	}
	else if(type=="mySaleFail"){
		$(".mineRight").load("mySaleFail.html");
		$(".mySaleFail").css("color","#E93B39");
	}
	else if(type=="mySafe"){
		$(".mineRight").load("mySafe.html");
		$(".mySafe").css("color","#E93B39");
	}
	if(type == "myAddCard"){
		$(".mineRight").load("myAddCard.html");
		$(".myAddCard").css("color","#E93B39");
	}
	$(".myPecoo").click(function(){
		$(".mineUlLi1 ul li,.mineUlLi2 ul li,.mineUlLi3 ul li,.mineUlLi4 ul li").css("color","#545454");
		$(".mineRight").load("myPecoo.html");
	});
	//加载收货地址
	$(".myAddress").click(function(){
		$(".mineRight").load("myAddress.html");
	});
	
	$(".myLetter").click(function(){
		$(".mineRight").load("myLetter.html");
	});
	//加载账户安全
	$(".mySafe").click(function(){
		$(".mineRight").load("mySafe.html");
	});
	//加载我的代金卷
	if(type=="myVoucher"){
		$(".mineRight").load("myVoucher.html");
		$(".myVoucher").css("color","#E93B39");
	}
	$(".myVoucher").click(function(){
		$(".mineRight").load("myVoucher.html");
	});
	//加载我的账户
	if(type=="myAccount"){
		$(".mineRight").load("myAccount.html");
		$(".myAccount").css("color","#E93B39");
	}
	$(".myAccount").click(function(){
		$(".mineRight").load("myAccount.html");
	});
	//加载我的收藏
	if(type=="myCollect"){
		$(".mineRight").load("myCollect.html");
		$(".myCollect").css("color","#E93B39");
	}
	$(".myCollect").click(function(){
		$(".mineRight").load("myCollect.html");
	});
	$(".myBid").click(function(){
		$(".mineRight").load("myBid.html");
	});
	$(".myBuction").click(function(){
		$(".mineRight").load("myBuction.html");
	});
	$(".myPay").click(function(){
		$(".mineRight").load("myPay.html");
	});
	$(".myShipper").click(function(){
		$(".mineRight").load("myShipper.html");
	});
	$(".myBuy").click(function(){
		$(".mineRight").load("myBuy.html");
	});
	//加载竞拍失败
	$(".myBuctionFail").click(function(){
		$(".mineRight").load("myBuctionFail.html");
	});
	//加载专属拍品
	$(".myShop").click(function(){
		$(".mineRight").load("myShop.html");
	});
	//加载奢侈品下单
	$(".mySaleOrder").click(function(){
		$(".mineRight").load("mySaleOrder.html");
	});
	//加载奢侈品已发货
	$(".mySaleShipper").click(function(){
		$(".mineRight").load("mySaleShipper.html");
	});
	//加载奢侈品待付运费
	$(".mySaleFreight").click(function(){
		$(".mineRight").load("mySaleFreight.html");
	});
	//加载奢侈品已买到
	$(".mySaleBuy").click(function(){
		$(".mineRight").load("mySaleBuy.html");
	});
	//加载奢侈品购买失败
	$(".mySaleFail").click(function(){
		$(".mineRight").load("mySaleFail.html");
	});
	//加载我的推荐
	$(".myReferrer").click(function(){
		$(".mineRight").load("myReferrer.html");
	});
	//加载推荐订单
	$(".myReferrerOrder").click(function(){
		$(".mineRight").load("myReferrerOrder.html");
	});
	//加载添加银行卡
	$(".myAddCard").click(function(){
		$(".mineRight").load("myAddCard.html");
	});
});

function menuClick(obj){
	obj.click(function(){
		$(".mineUlLi1 ul li,.mineUlLi2 ul li,.mineUlLi3 ul li,.mineUlLi4 ul li").css("color","#545454");
		obj.eq($(this).index()).css("color","#E93B39").siblings().css("color","#666");
	})
}


