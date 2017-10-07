window._bd_share_config={
	"common":{
		"bdSnsKey":{},
		"bdText":"",
		"bdMini":"2",
		"bdPic":"",
		"bdStyle":"0",
		"bdSize":"16"
	},
	"share":{}
};
with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];

var goodId= getUrlParam("goodId");
var addressId= getUrlParam("addressId");
var clientPrice= getUrlParam("clientPrice");

$(function(){
	//默认收货地址
	$("#isDefault").change(function(){
	    if ($("#isDefault").is(':checked')) {
	        $("#isDefault").val("Y");
	    } else {
	        $("#isDefault").val("N");
	    }
	});
	$(".detailMiaoUl li").click(function(){
		$(".detailMiaoUl li").eq($(this).index()).addClass("active").siblings().removeClass("active");
		$(".detailMiaoUl2 li").eq($(this).index()).show().siblings().hide();
	});
	//点击出价改变颜色
	$("#fitPrice85").on("click","span",function(){
		$("#fitPrice85 span").eq($(this).index()).addClass("active").siblings().removeClass("active");
	})
	
	//地址选择确认
	$("#allAddress").on("click","li",function(){
		$(this).addClass("active").siblings().removeClass("active");
	})
	$(".shipaiTanX").click(function(){
		$(".bidChangeTan").hide();
		$(".bidChangeSuccessTan").hide();
		$(".baojiaTan").hide();
		$(".baoMoneyTan").hide();
		$(".shipaiTan").hide();
		$(".bidSuccessTan").hide();
		$(".shadeBlack").hide();
	});
	//点击出价规则
	var bid=true;
	
	$(".bidGui").click(function(){
		if(bid){
			$(".detailGui").show().stop().slideDown();
			bid=false;
		}else{
			$(".detailGui").hide().stop().slideUp();
			bid=true;
		}
	})
	var baoGui=true;
	$(".baoGui").click(function(){
		if(baoGui){
			$(".baoGuiImg").show().stop().slideDown();
			baoGui=false;
		}else{
			$(".baoGuiImg").hide().stop().slideUp();
			baoGui=true;
		}
	})
	$(".detailGui img").click(function(){
		$(".detailGui").hide().stop().slideUp();
	})
	//点击条款与协议
	$(".detailXieyi span").click(function(){
		$(".xieyi").show();
		$(".shadeBlack").show();
	})
	$(".sureBtn").click(function(){
		$(".xieyi").hide();
		$(".shadeBlack").hide();
	});
	//弹出框放到中间部分
	var imgFadeLeft=($(window).width()-$("#imgFade").width())/2+"px";
	var xieyiLeft=($(window).width()-$(".xieyi").width())/2+"px";
	var addressLeft=($(window).width()-$(".chooseAdd").width())/2+"px";
	$("#imgFade").css("left",imgFadeLeft);
	$(".bidChangeTan,.xieyi,.baojiaTan,.shipaiTan,.baoMoneyTan,.bidSuccessTan,.bidChangeSuccessTan").css("left",xieyiLeft);
	$(".chooseAdd,.addChange").css("left",addressLeft);
	
	//加
	$(".add").click(function(){ 
		$("#fitPrice85 span").removeClass("active");
		var t=$(this).parent().find('input[class*=textBox]');
		var priceT=parseInt(t.val(),10);
		if(0<=priceT&&priceT<100){	
			if(priceT%10 == 0){
				t.val(parseInt(priceT,10)+10);
			}
			else{
				var yushu=priceT%10;
				t.val(parseInt(priceT)+10-yushu);
			}
		}
		else if(100<=priceT&&priceT<500){
			if(priceT%50 == 0){
				t.val(parseInt(priceT)+50);
			}
			else{
				var yushu=priceT%50;
				t.val(parseInt(priceT)+50-yushu);
			}
		}
		else if(500<=priceT&&priceT<1000){
			if(priceT%100 == 0){
				t.val(parseInt(priceT)+100);
			}
			else{
				var yushu=priceT%100;
				t.val(parseInt(priceT)+100-yushu);
			}
		}
		else if(1000<=priceT&&priceT<2000){
			if(priceT%200 == 0){
				t.val(parseInt(priceT)+200);
			}
			else{
				var yushu=priceT%200;
				t.val(parseInt(priceT)+200-yushu);
			}
		}
		else if(2000<=priceT&&priceT<5000){
			if(priceT%250 == 0){
				t.val(parseInt(priceT)+250);
			}
			else{
				var yushu=priceT%250;
				t.val(parseInt(priceT)+250-yushu);
			}
		}
		else if(5000<=priceT&&priceT<10000){
			if(priceT%500 == 0){
				t.val(parseInt(priceT)+500);
			}
			else{
				var yushu=priceT%500;
				t.val(parseInt(priceT)+500-yushu);
			}
		}
		else if(10000<=priceT&&priceT<20000){
			if(priceT%1000 == 0){
				t.val(parseInt(priceT)+1000);
			}
			else{
				var yushu=priceT%1000;
				t.val(parseInt(priceT)+1000-yushu);
			}
		}
		else if(20000<=priceT&&priceT<50000){
			if(priceT%2000 == 0){
				t.val(parseInt(priceT)+2000);
			}
			else{
				var yushu=priceT%2000;
				t.val(parseInt(priceT)+2000-yushu);
			}
		}
		else if(50000<=priceT&&priceT<100000){
			if(priceT%5000 == 0){
				t.val(parseInt(priceT)+5000);
			}
			else{
				var yushu=priceT%5000;
				t.val(parseInt(priceT)+5000-yushu);
			}
		}
		else{
			if(priceT%10000 == 0){
				t.val(parseInt(priceT)+10000);
			}
			else{
				var yushu=priceT%10000;
				t.val(parseInt(priceT)+10000-yushu);
			}
		}
		setTotal(); 
		pecoo10();
		pecoo30();
	}) 
	//减
	$(".min").click(function(){
		$("#fitPrice85 span").removeClass("active");
        var t=$(this).parent().find('input[class*=textBox]');
        var priceT=parseInt(t.val(),10);
        if($("#nowStartPrice").html()!="" && $("#nowStartPrice").html()>$("#userStartPrice2").val()){
        	var proPrice=$("#nowStartPrice").html();
        }
//      }else if($("#nowStartPrice").html()=="" &&$("#estimatePrice").html()=="暂无"){
//      	var proPrice=$("#price").html();
//      }
        else{
        	var proPrice=$("#userStartPrice2").val();
        }
        if(priceT<=proPrice){
            t.val(proPrice);
            setTotal(); 
			pecoo10();
			pecoo30();
            return;
        }
		if(100000<priceT){	
			if(priceT%10000 == 0){
				t.val(parseInt(priceT)-10000);
				setTotal(); 
				pecoo10();
				pecoo30();
				return;
			}
			else{
				var yushu=priceT%10000;
				t.val(parseInt(priceT)-yushu);
			}
		}
		else if(50000<priceT&&priceT<=100000){
			if(priceT%5000 == 0){
				t.val(parseInt(priceT)-5000);
				setTotal(); 
				pecoo10();
				pecoo30();
				return;
			}
			else{
				var yushu=priceT%5000;
				t.val(parseInt(priceT)-yushu);
			}
		}
		else if(20000<priceT&&priceT<=50000){
			if(priceT%2000 == 0){
				t.val(parseInt(priceT)-2000);
				setTotal(); 
				pecoo10();
				pecoo30();
				return;
			}
			else{
				var yushu=priceT%2000;
				t.val(parseInt(priceT)-yushu);
			}
		}
		else if(10000<priceT&&priceT<=20000){
			if(priceT%1000 == 0){
				t.val(parseInt(priceT)-1000);
				setTotal(); 
				pecoo10();
				pecoo30();
				return;
			}
			else{
				var yushu=priceT%1000;
				t.val(parseInt(priceT)-yushu);
			}
		}
		else if(5000<priceT&&priceT<=10000){
			if(priceT%500 == 0){
				t.val(parseInt(priceT)-500);
				setTotal(); 
				pecoo10();
				pecoo30();
				return;
			}
			else{
				var yushu=priceT%500;
				t.val(parseInt(priceT)-yushu);
			}
		}
		else if(2000<priceT&&priceT<=5000){
			if(priceT%250 == 0){
				t.val(parseInt(priceT)-250);
				setTotal(); 
				pecoo10();
				pecoo30();
				return;
			}
			else{
				var yushu=priceT%250;
				t.val(parseInt(priceT)-yushu);
			}
		}
		else if(1000<priceT&&priceT<=2000){
			if(priceT%200 == 0){
				t.val(parseInt(priceT)-200);
				setTotal(); 
				pecoo10();
				pecoo30();
				return;
			}
			else{
				var yushu=priceT%200;
				t.val(parseInt(priceT)-yushu);
			}
		}
		else if(500<priceT&&priceT<=1000){
			if(priceT%100 == 0){
				t.val(parseInt(priceT)-100);
				setTotal(); 
				pecoo10();
				pecoo30();
				return;
			}
			else{
				var yushu=priceT%100;
				t.val(parseInt(priceT)-yushu);
			}
		}
		else if(100<priceT&&priceT<=500){
			if(priceT%50 == 0){
				t.val(parseInt(priceT)-50);
				setTotal(); 
				pecoo10();
				pecoo30();
				return;
			}
			else{
				var yushu=priceT%50;
				t.val(parseInt(priceT)-yushu);
			}
		}
		else if(proPrice<priceT&&priceT<=100){
			if(priceT%10 == 0){
			    var priceTNum = parseInt(priceT)-10;
			    if(parseInt(priceTNum) == parseInt(0)){
                    priceTNum = 1
                }
				t.val(priceTNum);
				setTotal(); 
				pecoo10();
				pecoo30();
				return;
			}
			else{
				var yushu=priceT%10;
				t.val(parseInt(priceT)-yushu);
			}
		}
//			if(parseInt(t.val())<0){
//				t.val(0); 
//			} 
		if(priceT<=proPrice){
			t.val(proPrice);
		}
		setTotal(); 
		pecoo10();
		pecoo30();
	});
	
	getDetailData();
	setTotal(); 
	pecoo10();
	pecoo30();
	getArea();
})
$("#inputPrice").bind('input porpertychange',function(){
	setTotal(); 
	pecoo10();
	pecoo30();
});
//出价加
function addBid(){
	var t=$("#userStartPrice");
	var priceT=parseInt(t.val(),10);
	if(0<=priceT&&priceT<100){	
		if(priceT%10 == 0){
			t.val(parseInt(priceT,10)+10);
		}
		else{
			var yushu=priceT%10;
			t.val(parseInt(priceT)+10-yushu);
		}
	}
	else if(100<=priceT&&priceT<500){
		if(priceT%50 == 0){
			t.val(parseInt(priceT)+50);
		}
		else{
			var yushu=priceT%50;
			t.val(parseInt(priceT)+50-yushu);
		}
	}
	else if(500<=priceT&&priceT<1000){
		if(priceT%100 == 0){
			t.val(parseInt(priceT)+100);
		}
		else{
			var yushu=priceT%100;
			t.val(parseInt(priceT)+100-yushu);
		}
	}
	else if(1000<=priceT&&priceT<2000){
		if(priceT%200 == 0){
			t.val(parseInt(priceT)+200);
		}
		else{
			var yushu=priceT%200;
			t.val(parseInt(priceT)+200-yushu);
		}
	}
	else if(2000<=priceT&&priceT<5000){
		if(priceT%250 == 0){
			t.val(parseInt(priceT)+250);
		}
		else{
			var yushu=priceT%250;
			t.val(parseInt(priceT)+250-yushu);
		}
	}
	else if(5000<=priceT&&priceT<10000){
		if(priceT%500 == 0){
			t.val(parseInt(priceT)+500);
		}
		else{
			var yushu=priceT%500;
			t.val(parseInt(priceT)+500-yushu);
		}
	}
	else if(10000<=priceT&&priceT<20000){
		if(priceT%1000 == 0){
			t.val(parseInt(priceT)+1000);
		}
		else{
			var yushu=priceT%1000;
			t.val(parseInt(priceT)+1000-yushu);
		}
	}
	else if(20000<=priceT&&priceT<50000){
		if(priceT%2000 == 0){
			t.val(parseInt(priceT)+2000);
		}
		else{
			var yushu=priceT%2000;
			t.val(parseInt(priceT)+2000-yushu);
		}
	}
	else if(50000<=priceT&&priceT<100000){
		if(priceT%5000 == 0){
			t.val(parseInt(priceT)+5000);
		}
		else{
			var yushu=priceT%5000;
			t.val(parseInt(priceT)+5000-yushu);
		}
	}
	else{
		if(priceT%10000 == 0){
			t.val(parseInt(priceT)+10000);
		}
		else{
			var yushu=priceT%10000;
			t.val(parseInt(priceT)+10000-yushu);
		}
	}
	setTotal();
	pecoo10();
	pecoo30();
}

function addBid2(){
	var t=$("#userStartPrice2");
	var priceT=parseInt(t.val(),10);
	if(0<=priceT&&priceT<100){	
		if(priceT%10 == 0){
			t.val(parseInt(priceT,10)+10);
		}
		else{
			var yushu=priceT%10;
			t.val(parseInt(priceT)+10-yushu);
		}
	}
	else if(100<=priceT&&priceT<500){
		if(priceT%50 == 0){
			t.val(parseInt(priceT)+50);
		}
		else{
			var yushu=priceT%50;
			t.val(parseInt(priceT)+50-yushu);
		}
	}
	else if(500<=priceT&&priceT<1000){
		if(priceT%100 == 0){
			t.val(parseInt(priceT)+100);
		}
		else{
			var yushu=priceT%100;
			t.val(parseInt(priceT)+100-yushu);
		}
	}
	else if(1000<=priceT&&priceT<2000){
		if(priceT%200 == 0){
			t.val(parseInt(priceT)+200);
		}
		else{
			var yushu=priceT%200;
			t.val(parseInt(priceT)+200-yushu);
		}
	}
	else if(2000<=priceT&&priceT<5000){
		if(priceT%250 == 0){
			t.val(parseInt(priceT)+250);
		}
		else{
			var yushu=priceT%250;
			t.val(parseInt(priceT)+250-yushu);
		}
	}
	else if(5000<=priceT&&priceT<10000){
		if(priceT%500 == 0){
			t.val(parseInt(priceT)+500);
		}
		else{
			var yushu=priceT%500;
			t.val(parseInt(priceT)+500-yushu);
		}
	}
	else if(10000<=priceT&&priceT<20000){
		if(priceT%1000 == 0){
			t.val(parseInt(priceT)+1000);
		}
		else{
			var yushu=priceT%1000;
			t.val(parseInt(priceT)+1000-yushu);
		}
	}
	else if(20000<=priceT&&priceT<50000){
		if(priceT%2000 == 0){
			t.val(parseInt(priceT)+2000);
		}
		else{
			var yushu=priceT%2000;
			t.val(parseInt(priceT)+2000-yushu);
		}
	}
	else if(50000<=priceT&&priceT<100000){
		if(priceT%5000 == 0){
			t.val(parseInt(priceT)+5000);
		}
		else{
			var yushu=priceT%5000;
			t.val(parseInt(priceT)+5000-yushu);
		}
	}
	else{
		if(priceT%10000 == 0){
			t.val(parseInt(priceT)+10000);
		}
		else{
			var yushu=priceT%10000;
			t.val(parseInt(priceT)+10000-yushu);
		}
	}
	setTotal();
	pecoo10();
	pecoo30();
}
//平台服务费
function pecoo10(){
	var a=0;
	$(".detailBid>p.detailBidP1").each(function(){ 
		a+=parseInt(parseInt($(this).find('input[class*=textBox]').val())*0.1); 
	}); 
	$("#pecoo10").html(a);
}
//拍卖行佣金
function pecoo30(){
	var a2=0;
	$(".detailBid>p.detailBidP1").each(function(){ 
		a2+=parseInt(parseInt($(this).find('input[class*=textBox]').val())*0.3); 
		}); 
	$("#pecoo30").html(a2);
}
//总价
function setTotal(){ 
	var s=0; 
	$(".detailBid>p.detailBidP1").each(function(){ 
		s+=parseInt(parseInt($(this).find('input[class*=textBox]').val())*1.4); 
	}); 
	$("#total").html(s); 
	var priceRateRmb=s*parseFloat($("#rateInt").val());
	$("#priceRate").html(Math.round(priceRateRmb*100)/100);
} 

function getDetailData(){
	//$(".loadDiv").show();
	$.ajax({
		url:queryGoodsMessUrl,
		type : "post",
		async:false,
		data:{
			"sourceMode":"PC",
			"userID":userId,
			"tokenId":tokenId,
			"goodId":goodId
		},
		dataType:"json",
		error:function(){
			//$(".loadDiv").hide();
		},
		success:function(result){
			var product=result.auctionGoods;
			var unit=product.priceUnit;//货币类型
			var paId=product.paId;//拍卖会Id
			var paName=product.paName//拍卖会名称
			var isCollection=product.isCollection//看商品是否收藏
			var estimateMin=product.estimateMin;
			var estimateMax=product.estimateMax;
			var priceRate=product.priceRate;
			var nowStartPrice= product.nowStartPrice;//当前起拍价
			var bidNo = product.bidNo;//当前出价人数
			var auctionGoodsPics=product.auctionGoodsPics//图片
			var estimatePrice=''+unit+''+estimateMin+'-'+unit+''+estimateMax+'';
			$("#auctionTime").html(product.startTime);
			$("#auctionAddress").html(product.address);
			$(".unit").html(unit);
			$("#nameLot").html(product.lotNum);
			$("#nameName").html(product.goodsName);
			var fanyiB = true;
			$("#fanyiCH").click(function(){
				/*if(product.goodsNameCh == "" || product.goodsDescCh =="" || product.goodsNameCh == undefined || product.goodsDescCh ==undefined ){
					alert("暂无翻译信息，请稍后重试");
					return;
				}*/
				if(fanyiB){
					if(product.goodsNameCh == "" || product.goodsNameCh ==undefined || product.goodsNameCh ==null){
						transGoodsMess();
					}else{
						$("#nameName").html(product.goodsNameCh);
					    $("#detailedDesc").html(product.goodsDescCh);
					}
					$("#fanyiCH").html("已翻译");
					fanyiB = false;
				}else{
					$("#nameName").html(product.goodsName);
					$("#detailedDesc").html(product.goodsDesc);
					$("#fanyiCH").html("翻译");
					fanyiB = true;
				}
			})
			
			$("#price").html(product.startPrice);
			if(bidNo!=undefined&&bidNo!=null){
				$("#bidNo").html(bidNo);
			}else{
				$(".bidNum").hide();
				$(".detailBidNum").css("line-height","14px");
			}
			if(nowStartPrice!=undefined&&nowStartPrice!=null){
				$("#nowStartPrice").html(nowStartPrice);
				$("#price").css("text-decoration","line-through");
			}else{
				$(".nowStartPriceUnit,#nowStartPrice").hide();
			}
			
			$("#Rate").html(priceRate);
			$("#rateInt").val(priceRate);
			if(paName==""||paName=="null"||paName==undefined){
				$(".auctionAuctionP").hide();
			}else{
				$("#auctionAuction").html('<a href="auctionList.html?auctionId='+paId+'">'+paName+'</a>');
			}
			
			$("#priceRate").html(Math.round(priceRateRmb*100)/100);
			if(estimateMin==null && estimateMax==null){
				$("#estimatePrice").html("暂无");
			}else if(estimateMin!=null && estimateMax==null){
				$("#estimatePrice").html(unit+estimateMin);
			}else if(estimateMin ==null && estimateMax!=null){
				$("#estimatePrice").html(unit+estimateMax);
			}else{
				$("#estimatePrice").html(estimatePrice);
			}
			
			//详细描述
			//var goodsDescN=product.goodsDesc.replace(/(\n)+|(\r\n)+/g, "");
			$("#detailedDesc").html(product.goodsDesc);
			if(estimateMax!=""&&estimateMax!=null&&estimateMax!=undefined){
                //从已出价列表,修改报价
                
                if(nowStartPrice!=undefined&&nowStartPrice!=null){
                	var startPriceVal = product.nowStartPrice;
                	var startPriceVal2 = product.nowStartPrice;
                }else{
                	var startPriceVal = product.startPrice;
                	var startPriceVal2 = product.startPrice;
                }
                if(Number(clientPrice) > 0){
                    estimateMin = clientPrice;
                    startPriceVal = clientPrice;
                }
                $("#userStartPrice").val(parseInt(startPriceVal));
                $("#userStartPrice2").val(parseInt(startPriceVal2));
                var str=location.href;
				if(str.indexOf("clientPrice")>-1){
					addBid2();
				}else{
					addBid();
                	addBid2();
				}
               
                if($("#userStartPrice").val()>estimateMin){
                	$('input[class*=textBox]').val($("#userStartPrice").val());
                }else{
                	$('input[class*=textBox]').val(parseInt(estimateMin));
                }
				var priceRateRmb=$('input[class*=textBox]').val()*1.4*priceRate;
				maxMoney=estimateMax*0.85;
				//报价85%不符合出价规则的情况
				if(maxMoney!=0){	
					var list = new Array();
					var maxlist=new Array();
					list=recommend(maxMoney);
					for(var i=0;i<list.length;i++){
						if(maxMoney==list[i]){
							break;
						}else if(maxMoney<list[i]){
							maxlist.push(list[i]);
						}
					}
					if(maxlist.length>0){
						$("#fitPrice85").html("");		
						var len = maxlist.length>3?3:maxlist.length;
						var content="";
						for(var i=0;i<len;i++){
							content+='<span onclick=setFitMoney(\''+maxlist[i]+'\')>'+unit+''+maxlist[i]+'</span>';				
						}
						$("#fitPrice85").html(content);		
						//return false;
					}
				}
			}else{
				maxMoney="暂无";
                //从已出价列表,修改报价
                if(nowStartPrice!=undefined&&nowStartPrice!=null){
                	var startPriceVal = product.nowStartPrice;
                	var startPriceVal2 = product.nowStartPrice;
                }else{
                	var startPriceVal = product.startPrice;
                	var startPriceVal2 = product.startPrice;
                }
                if(Number(clientPrice) > 0){
                    startPriceVal = clientPrice;
                }
                
                $("#userStartPrice").val(parseInt(startPriceVal));
                $("#userStartPrice2").val(parseInt(startPriceVal2));
                var str=location.href;
				if(str.indexOf("clientPrice")>-1){
					addBid2();
				}else{
					addBid();
                	addBid2();
				}
                var userStartPrice=$("#userStartPrice").val();
				$('input[class*=textBox]').val(parseInt(userStartPrice));
				var priceRateRmb=$('input[class*=textBox]').val()*1.4*priceRate;
			}
			
			
			//图片
			var picture='<li id="onlickImg"><img src="'+auctionGoodsPics[0].bigPicUrl+'" mid="'+auctionGoodsPics[0].bigPicUrl+'"/></li>';
			var underPic='<img src="'+auctionGoodsPics[0].bigPicUrl+'" />';
			for(var i=1;i<auctionGoodsPics.length;i++){						
				picture+='<li ><img src="'+auctionGoodsPics[i].smallPicUrl+'" mid="'+auctionGoodsPics[i].bigPicUrl+'"/></li>';	
				underPic+='<li ><span><img src="'+auctionGoodsPics[i].bigPicUrl+'" /><span></li>';
			}
			if(auctionGoodsPics.length<=4){
				$('.smallImgDown').addClass('disabled');
			}
			$("#imageMenu ul").html(picture);
			$("#underPic").html(underPic);										
			imgMagnify();
			//$(".loadDiv").hide();
			//看商品是否收藏
			if(userId != null){			
	      		if(isCollection=="Y"){
	      			$(".detailCollect").html("已收藏");
	      		}else if(isCollection=="N"){
	      			$(".detailCollect").html("收藏");
	      		}
			}
			
		}		
	})	
}
function transGoodsMess(){
	$(".loadDiv").show();
	$.ajax({
		url :transGoodsMessUrl,
		type: "get",
		dataType : "json",
		data : {
			"sourceMode":"PC",
			"tokenId":tokenId,
			"goodId":goodId
		},
        error : function() {
	      //alert("网络繁忙，请稍后再试!");
        },
		success:function(data){
			if(data.code == "0000"){
				$(".loadDiv").hide();
				$("#nameName").html(data.transMess.goodsNameCh);
				$("#detailedDesc").html(data.transMess.goodsDescCh);
			}
		}
	});	
}

function setFitMoney(money){
	$("#inputPrice").val(money);
	setTotal();
    pecoo10();
    pecoo30();
	$(".shadeBlack").hide();
	$(".baojiaTan").hide();
}
getLove();
//猜你喜欢
function getLove(){
	$.ajax({
		url :queryPopularGoods,
		type: "get",
		dataType : "json",
		data : {
			"sourceMode":"PC",
			"userID":userId,
			"tokenId":tokenId
		},
        error : function() {
	      //alert("网络繁忙，请稍后再试!");
        },
		success:function(data){
			var data=data.goods;
			if(data.length>0){
				for(var i=0; i<8 && i<data.length; i++){
					var content='<dl>'+

								'<dt>'+
								'<img src="'+data[i].thumbnailUrl+'" />'+
								'</dt>'+
								'<dd>'+
								'<p>Lot'+data[i].lotNum+':'+data[i].goodsName+'</p>'+
								'<p>起拍价：<span>'+data[i].priceUnit+''+data[i].startPrice+'</span></p>'+
								'</dd>'+
								'</dl>';
					$(".detailLoveDiv").append(content);
				}
			}
		}
	});	
}
var _uid;
//立即出价事件
var orderSwitch = true;
function isHaveMoney(){
    ucontrol = "";
	var outofDate=new Date($("#auctionTime").html().replace(/-/g,"/")).getTime()<new Date().getTime() ;
	if(outofDate){	
		alert("该拍品已过拍卖有效期");
		return false;
	}
	if(!isLogin()){
		//alert("请登录");
		window.location.href = "login.html?goodId="+goodId;
		return false;
	}
	
	orderType=""; //订单类型		
	if($("#nowStartPrice").html()!=""){
    	var oldPrice=$("#nowStartPrice").html();//目前最高价
    }else{
    	var oldPrice=$("#price").html();//目前最高价
    }
	
	oldPrice=parseFloat(oldPrice);
	var money=$("#inputPrice").val();//输入的价格	
	if(money==""){
		alert("请输入价格");
		return false;
	}
    var r =/^(([0-9]+\\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\\.[0-9]+)|([0-9]*[1-9][0-9]*))$/;			
    if(r.test(money)==false){
    	alert("请输入正确的数字");
        return false;
    };
	money=parseFloat(money);
	if(oldPrice==""){
		oldPrice=0;
	}
	if(money<=oldPrice){
		alert("输入的价格要大于起拍价");
		return false;
	}
	//看输入的价格符不符合
	if(maxMoney!=0&&maxMoney!=money){				
			var list = new Array();
			var maxlist=new Array();
			list=recommend(money);
			for(var i=0;i<list.length;i++){
				if(money==list[i]){
					break;
				}else if(money<list[i]){
					maxlist.push(list[i]);
				}
			}
			if(maxlist.length>0){
				$("#fitMoney").html("");
				var zuidaMoney="";						
				if(maxlist.length>3){
					for(var i=0;i<3;i++){
						$("#fitPrice85 span").removeClass("active");
						var content='<span onclick=setFitMoney(\''+maxlist[i]+'\')>'+maxlist[i]+'</span>';				
						$("#fitMoney").append(content);
					}
				}else{
					for(var i=0;i<maxlist.length;i++){
						$("#fitPrice85 span").removeClass("active");
						var content='<span onclick=setFitMoney(\''+maxlist[i]+'\')>'+maxlist[i]+'</span>';	
						$("#fitMoney").append(content);
					}
				}
				$(".shadeBlack").show();
				$(".baojiaTan").show();
				return false;
			}
		}
	if(document.getElementById("agreementCheck").checked==false){
		alert("协议没选中");
		return false;
	}
	//判断是否有保证金去下单
	var adr=$("#getaddressId").val();
	if(orderSwitch){
		orderSwitch = false;
			$.ajax({
			type : "post",
			url : vcreateOrderUrl,
			async: false,
			dataType : "json",
			data:{
				"sourceMode":"PC",
				"tokenId":tokenId,
				"goodId":goodId,
				"price":money,
				"orderType":orderType,
				"ucontrol":ucontrol,
				"addressId":adr
			},
			error : function() {
				//alert("网络繁忙，请稍后");
			},
			success : function(data) {
				orderSwitch = true;
				if(data.code == "0000"){//正常单子
					getArea();
					//调地址弹出层
					//getAllAddress();
				}else if(data.code== "600001"){//试拍单子
					getArea();
					var shipai='<button type="button" class="immediatelyRecharge giveUp" onclick="payImme()">下单</button>';
						shipai+='<button type="button" class="giveUp" onclick="recharge()">去充值</button>';
					$("#shiPaiCon").html(shipai);
					$(".shipaiTan").show();
					$(".shadeBlack").show();
				    return false;
				}else if(data.code== "600002"){
					$(".chooseAdd").hide();
					$("baojiaDiv>p.baojiaDivP").html(data.message);
					$(".baoMoneyTan").show();
					$(".baoMoneyTan").find("p.baojiaDivP").html(data.message);
					$(".shadeBlack").show();
				    return false;
				}else if(data.code == "600003"){
					alert(data.message);
					return false;
				}else if(data.code == "600004"){
					alert(data.message);
					return false;
				}else if(data.code == "600005"){
					console.log("地址信息不存在");
					getAllAddress();
					return false;
				}else if(data.code == "600006"){
					alert(data.message);
					return false;
				}else if(data.code == "600008"){
					$(".bidChangeTan").show();
					return false;
				}else if(data.code == "1111"){
					//alert(data.message);
					window.location.href="login.html";
				}
				else{
					alert(data.message);
				}
			}
		});
	}
    
}

//收藏 取消收藏 
var flag=1;
function collectWay(){
	if(isLogin()){
		if(flag==1){
			collect();
			flag=0;
		}else{
			delCollect();
			flag=1;
		}
	}else{
    	if(confirm("您还没有登录，去登录吗？")){
             location.href = "login.html";
		}
  	}
}

//收藏
var collectSwitch = true;
function collect(){
	if(collectSwitch){
		collectSwitch = false;
		$.ajax({
			url : addUserCollectionUrl,
			type: "post",
			dataType : "json",
			data : {
				"sourceMode":"PC",
				"tokenId":tokenId,
				"userId":userId,
				"colleType":"02", 
				"goodsId":goodId
			},
	        error : function() {
	        },
			success:function(data){
				collectSwitch = true;
				if(data.code == 0000){
					$(".detailCollect").html("已收藏");
				}else if(data.code == 1111) {
	                //alert(data.message);
	                window.location.href="login.html";
	            }else {
		   			alert("收藏失败");
					return;    
				}						
			}
		});
	}
}
//取消收藏
var delCollectSwitch = true;
function delCollect(){
	if(delCollectSwitch){
		delCollectSwitch = false;
		$.ajax({
			url : delUserCollectionUrl,
			type: "post",
			dataType : "json",
			data : {
				"sourceMode":"PC",
				"tokenId":tokenId,
				"userId":userId,
				"colleType":"02", 
				"goodsId":goodId
			},
	        error : function() {
	        },
			success:function(data){
				delCollectSwitch = true;
				if(data.code == 0000){
					$(".detailCollect").html("收藏");
				}else {
		   			alert("取消收藏失败");
					return;    
				}						
			}
		});
	}
}

function getArea(){
	_init_area("s_province", "s_city", "s_county");	//默认显示地址信息
}
//获得用户所有地址
function getAllAddress(){
	$(".shadeBlack").fadeIn();
	$(".chooseAdd").fadeIn();
	$.ajax({
		url:getAddressList,
		type:"get",
		dataType:"json",
		data:{
			"sourceMode":"PC",
			"tokenId":tokenId,
            "n": Math.floor(Math.random()*100)
		},
		error:function(info){
			//alert("网络繁忙，请稍后再试");
		},
		success:function(result){						
			var data=result.addresses;
			$("#allAddress").html("");
			if(data.length>0){
                $("#addressesCountId").val(data.length);
				var addressType="2";
				var moRenId="";
				var getUid="";
				for(var i=0; i<data.length; i++){
					var uid=data[i].pkId;
					var id='address'+i;
					if(i==0){
						getUid=uid;
					}
					if(data[i].addressType=="1"){
						addressType="1";
						moRenId='address'+i;
						getUid=uid;
					}
					var addressDizhi=data[i].province+data[i].city+data[i].area+data[i].detailAddress;
					var content='<li id='+id+' onclick="setClass(\'' + id + '\',\'' + uid + '\')">';
					content+='<p>';
					content+='<b>'+data[i].recipientName+'</b> - ';
					content+=' <b>'+data[i].phone+'</b> - '; 
					content+='<b>'+addressDizhi +'</b>';
					content+='</p>';
					//content+='<span onclick="getAddress(\'' + data[i].recipientName + '\',\'' + data[i].phone + '\',\'' + data[i].province + '\',\'' + data[i].city + '\',\'' + data[i].area + '\',\'' + data[i].detailAddress + '\',\'' + data[i].zipCode + '\',\'' + data[i].isDefault + '\')">编辑</span>';
					content+='</li>';
					$("#allAddress").append(content);
					$(".chooseBtn2").show();
				}
				if(addressType=="1"){
					$("#"+moRenId).addClass("active");
					$("#getaddressId").val(getUid);
				}else{
					$("#address0").addClass("active");
					$("#getaddressId").val(getUid);
				}
				$(".chooseBtn2").show();
			}else{
				var contentNo='<p class="addressNone">您还没有收货地址哦~，点击右上角可以添加新地址！</p>';
				$("#allAddress").html(contentNo);
				$(".chooseBtn2").hide();
			}
		}					
	})	
}
//判断选中哪个,选择收货地址
function setClass(id,uid){
    var id="#"+id;
	$(id).addClass("active");
    $("#getaddressId").val(uid);
}
//关闭第一个
function firstCon(){
	$(".chooseAdd").fadeOut();  
	$(".shadeBlack").fadeOut();
}

//检测是否符合要求
function checkAdd(){
//	var mobile = /(^1[3|4|5|7|8][0-9]{9}$)/;
	var addressName=$("#addressName").val();
	var addressPhone=$("#addressPhone").val();
	var postCode=$("#postCode").val();
	var county=$("#s_county").val();
	var addressMessage=$("#addressMessage").val();
	if(addressName==null||addressName.trim()==""){
		alert("收货人不能为空");
		return false;
	}
	if(addressPhone==null||addressPhone.trim()==""){
		alert("手机号不能为空");
		return false;
	}
	if(county==null||county=="市、县级市"||county== ""){
		alert("地区必须精确到所在区");
		return false;
	}
	if(addressMessage==null||addressMessage.trim()==""){
		alert("详细地址不能为空");
		return false;
	}
	return true;
}


//chooseAdd()填写新地址功能
function chooseAdd(){
    var len = $("#addressesCountId").val();
    if(len==null||len=='')len=0;
    if(parseInt(len,10)<10){
        getArea();
        $(".addChange").fadeIn();
        $("#addNewAddress").html("");
        var content='<button class="addBtn1" onclick="addAddress()">保存</button>';
        content+='<button class="addBtn2" onclick="closeAdd()">取消</button>';
        $("#addNewAddress").append(content);
    }else{
        alert("很抱歉，最多可添加10条地址信息！");
        return false;
    }
}

//添加新地址
var addAddressSwitch = true;
function addAddress(){		
	var addressName=$("#addressName").val();
	var addressPhone=$("#addressPhone").val();
	var postCode=$("#postCode").val();
	var province=$("#s_province").val();
	var city=$("#s_city").val();
	var county=$("#s_county").val();
	var addressMessage=$("#addressMessage").val();
	var isDefault=$("#isDefault").val();
	if(checkAdd()){
		if(addAddressSwitch){
			addAddressSwitch = false;
			$(".loadDiv").show();
			$.ajax({
				type : "post",
				url : getAddressUrl,
				data:{
					"sourceMode":"PC",
					"userId":userId,
					"tokenId":tokenId,
					"recipientName":addressName,
					"phone":addressPhone,
					"zipCode":postCode,
					"province":province,
					"city":city,
					"area":county, 
					"detailAddress":addressMessage,
					"isDefault":isDefault
				},
				error:function(info){
					//alert("网络繁忙，请稍后再试");
				},
				success : function(data) {	
					addAddressSwitch = true;
					$(".loadDiv").hide();
					var data = eval("("+data+")");
					if(data.code=="0000"){														
						cleanBox();	
						$(".addChange").fadeOut();
						getAllAddress();
					}else{
						alert("添加失败");
					}
				}
			});
		}
	}								
}

//编辑地址
function bianjiAddress(){	
	var pkId=$("#getaddressId").val();
	var addressName=$("#addressName").val();
	var addressPhone=$("#addressPhone").val();
	var postCode=$("#postCode").val();
	var province=$("#s_province").val();
	var city=$("#s_city").val();
	var county=$("#s_county").val();
	var addressMessage=$("#addressMessage").val();
	if(checkAdd()){
		$.ajax({
			type : "post",
			url : updateAddressUrl,
			data:{
				"sourceMode":"PC",
				"userId":userId,
				"tokenId":tokenId,
				"pkId":pkId,
				"recipientName":addressName,
				"phone":addressPhone,
				"zipCode":postCode,
				"province":province,
				"city":city,
				"area":county, 
				"detailAddress":addressMessage,
				"isDefault":""
			},
			error:function(info){
				//alert("网络繁忙，请稍后再试");
			},
			success : function(data) {	
				var data = eval("("+data+")");
				if(data.code=="0000"){														
					cleanBox();	
					$(".addChange").fadeOut();
					getAllAddress();
				}else{
					alert("编辑失败");
				}
			}
		});
	}								
}
//获取指定的地址信息
function getAddress(recipientName,phone,province,city,area,detailAddress,zipCode,isDefault){
	$(".addChange").fadeIn();
	var adr=$("#getaddressId").val();	
	
			$("#addressName").val(recipientName);
			$("#addressPhone").val(phone);
			$("#postCode").val(zipCode);
			$("#s_province").val(province);
			$("#s_province2")[0].change();
			$("#s_city").val(city);
			$("#s_city2")[0].change();
			$("#s_county").val(area);
			$("#addressMessage").val(detailAddress);
			$("#isDefault").val(isDefault);
			$("#addNewAddress").html("");
			var content='<button class="addBtn1" onclick="bianjiAddress()">保存</button>';
			content+='<button class="addBtn2" onclick="closeAdd()">取消</button>';
			$("#addNewAddress").append(content);			
			
}
//关闭添加地址页面
function closeAdd(){
	cleanBox();
	$(".addChange").hide();
}
//清空弹出层内容
function cleanBox(){
	$("#addressName").val("");
	$("#addressPhone").val("");
	$("#postCode").val("");
	$("#addressMessage").val("");			
	_init_area("s_province", "s_city", "s_county");	//默认显示地址信息				
}

var orderType;
var ucontrol;
//真实下单
var setOrderSwitch = true;
function setOrder(){
	var goodId=getUrlParam("goodId");		//id
	var adr=$("#getaddressId").val();		//地址
	var money=$("#inputPrice").val();
	if(adr!=null && setOrderSwitch){
		setOrderSwitch =false;
		$(".loadDiv").show();
		$.ajax({
			type : "post",
			url : vcreateOrderUrl,
			async: false,
			dataType : "json",
			data:{
				"sourceMode":"PC",
				"tokenId":tokenId,
				"goodId":goodId,
				"price":money,
				"orderType":orderType,
				"ucontrol":ucontrol,
				"addressId":adr
			},
			error : function() {
				//alert("网络繁忙，请稍后");
			},
			success : function(data) {
				setOrderSwitch = true;
				$(".loadDiv").hide();
				if(data.code == "0000"){//正常单子
					$(".chooseAdd").hide();
					$(".bidSuccessTan").show();
					return false;
				}else if(data.code== "600001"){//试拍单子
					if(orderType=="01"){
						alert("下单成功");
						$(".chooseAdd").hide();
						$(".shadeBlack").hide();
						window.location.href="mine.html?type=myBid";
					}
				    return false;
				}else if(data.code== "600002"){
					$(".chooseAdd").hide();
					$(".baojiaDiv>p.baojiaDivP").html(data.message);
					$(".baoMoneyTan").show();
					$(".baoMoneyTan").find("p.baojiaDivP").html(data.message);
					$(".shadeBlack").show();
				    return false;
				}else if(data.code == "600003"){
					alert(data.message);
					return false;
				}else if(data.code == "600004"){
					alert(data.message);
					return false;
				}else if(data.code == "600005"){
					alert(data.message);
					getAllAddress();
					return false;
				}else if(data.code == "600006"){
					alert(data.message);
					return false;
				}else if(data.code == "600008"){
					ucontrol="01";
					$(".chooseAdd").hide();
					$(".bidChangeTan").show();
					return false;
				}else{
					alert(data.message);
				}
			}
		});
	}else{
		setOrderSwitch = true;
		getAllAddress();
		return; 
	}			
}

function bidSuccessOnclick(){
	$(".chooseAdd").hide();
	$(".shadeBlack").hide();
	window.location.href="mine.html?type=myBid";
}
//确认试拍
function payImme(){
	orderType="01";	
	getArea();
	getAllAddress();
	$(".shipaiTan").hide();
}

//确认修改报价
function bidChangeOnclick(){
	ucontrol="01";
	$(".bidChangeTan").hide();
	getAllAddress();
}
//去充值
function recharge(){
	window.location.href="mine.html?type=myAccount"
}
//弹框取消
function tanHide(){
	$(".chooseAdd").hide();
	$(".shadeBlack").hide();
	$("#getaddressId").val("");
}
function addChangeHide(){
	$(".addChange").hide();
	$(".shadeBlack").hide();
}

function closePopup(){
	$(".baoMoneyTan").hide();
	$(".shadeBlack").hide();
}
function closeBox() {
    promptHide();
    $("#agreementCheck").prop("checked", "checked");
}