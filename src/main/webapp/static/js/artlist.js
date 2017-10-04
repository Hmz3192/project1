var total = 0;
var isPage = 1;
var sort=""; 
var kindType = getUrlParam("kindCode");
var kindCode= kindType;
$(function(){
	//排序点击
	$(".sortDiv>ul li").click(function(){
		$(this).addClass("active").siblings().removeClass("active");
	})
	//table切换
	$("#listDivUl1").on('click',"li",function(){
		$(".listDivUl1 li").eq($(this).index()).addClass("active").siblings().removeClass("active")
		$(".listDivUl2 li").eq($(this).index()).show().siblings().hide();
	})
	
	$("#listDivUl2").on('click',"li div p a",function(){
		$(this).parent().parent().parent().siblings().find(".watchDivD2P>a").removeClass("active");
		$(this).addClass("active").siblings().removeClass("active");
	})
	//排序部分
	$("#sortHeight").click(function(){
		sort="start_price/01";
		getData(kindCode,1);
	})
	$("#sortLow").click(function(){
		sort="start_price/02";
		getData(kindCode,1);
	})
	$("#sortMo").click(function(){
		sort="";
		getData(kindCode,1);
	})
	//滑动小分页导航出现
	$(window).scroll(function () {
	    var scrolltop = document.documentElement.scrollTop || document.body.scrollTop
	    var str=location.href;
	    if (scrolltop > 300) {
	    	if(str.indexOf("kindCode=007")>-1){
	    		$(".sortDivDiv").css({
		        	"position":"fixed",
		        	"top":"0",
		        	"z-index":"1000",
		        	"width":"100%",
		        	"margin":"0 auto"
		        });
	    	}else{
	    		$(".sortDivDiv").css({
		        	"position":"fixed",
		        	"top":"-15px",
		        	"z-index":"1000",
		        	"width":"100%",
		        	"margin":"0 auto"
		        });
	    	}
	        
	    }
	    else {
	        $(".sortDivDiv").css({
	        	"position":"relative",
	        	"top":"0",
	        	"z-index":"1000",
	        	"width":"100%",
	        	"margin":"0 auto"
	        });
	    }
	})
	
	
	//获取分类和拍品数据
	getList(kindType);
	getData(kindCode,1);
});


//获取分类信息
function getList(kindType){
	$.ajax({
		url :queryKindsUrl,
		type: "get",
		dataType : "json",
		data : {
			"sourceMode":"PC",
			"kindCode":kindType,
            "n": Math.floor(Math.random()*100)
		},
        error : function() {
	        //alert("网络繁忙，请稍后再试!");
        },
		success:function(result){
			if(result.code=="0000"){
				var data=result.kinds;
				var secondCode=result.secondCode;
				var thirdCode=result.thirdCode;
				var content="";
				var content2="";
				if(data != undefined && data.length>0){
					for(var i=0; i<data.length; i++){
						var data2=data[i].childKinds;
						var fontName = data[i].name;
						if(data[i].code == secondCode){
							content+='<li class="active" onclick=getData(\''+data[i].code+'\',1)><span>'+fontName+'</span></li>';
							content2+='<li class="block">';
						}
						else{
							content+='<li onclick=getData(\''+data[i].code+'\',1)><span>'+fontName+'</span></li>';
							content2+='<li class="none">';
						}
						content2+='<p>'+data[i].name+'</p>';
						content2+='<div>';
						content2+='<p class="watchDivD2P">';					
						if(data2 != undefined && data2.length>0){
							$("#listDivUl2").show();
							for (var j=0; j<data2.length; j++){
								if(data2[j].code == thirdCode){
									content2+='<a href="javascript:;" class="active" onclick="getData(\''+data2[j].code+'\',1)">'+data2[j].name+'</a>';
								}else{
									content2+='<a href="javascript:;"  onclick="getData(\''+data2[j].code+'\',1)">'+data2[j].name+'</a>';
								}
							}
						}
						else{
							console.log("暂无数据");
							
						}
						content2+='</p>';
						content2+='</div>';
						content2+='</li>';
					}
					$("#listDivUl1").html(content);
					$("#listDivUl2").html(content2);
					getMore();
				}
				else{
					console.log("暂无数据");
				}
			}else{
				alert("查询数据失败");
			}
			
		}
		

	})
	
}
//加载更多选项
function getMore(){
	var height=$(".listDivUl1").height();
	//点击更多选项
	if(height>100){
		$(".listDivUl1").css({"max-height":"100px","overflow": "hidden"});
		$(".showMore").show();
	}
	var flag=1;
	$(".showMore").click(function(){
		if(flag==1){
			$(".listDivUl1").animate({"max-height":height});
		    $(".showMore img").css({"transform":"rotate(180deg)"});
		    flag=0;
		}else{
			$(".listDivUl1").animate({"max-height":"100px"});
		    $(".showMore img").css({"transform":"rotate(0deg)"});
		    flag=1;
		}
	})
}

//获取列表数据
function getData(queryCode,pageNo){
	$(".loadDiv").show();
	if(queryCode!==kindCode){
		kindCode = queryCode;
	}
	pageNo = parseInt(pageNo,10);
	isPage = pageNo;
	$.ajax({
		url :querySecondGooodsUrl,
		type: "get",
		dataType : "json",
		data : {
			"sourceMode":"PC",
			"tokenId":tokenId,
			"pageNo":pageNo,
			"kindType":queryCode,
			"sort":sort,
            "n": Math.floor(Math.random()*100)
		},
        error : function() {
	       $(".loadDiv").hide();
        },
		success:function(data){
			if(data.code=="0000"){
				var totalCount=data.totalCount;
				$("*[name='total']").html(totalCount);
				total=Math.ceil(totalCount/60);
				$(".thisPage").text(pageNo);
				if(total!=0){
					$(".totlePage").text(total);
				}else{
					$(".totlePage").text(1);
				}
				$("#pageTotal").val(total);
				var data=data.goods;
				var content="";
				$(".auctionList").html(content);
				if(data.length>0){
					for(var i=0; i<data.length; i++){
						content+='<dl>';
						content+='<a href="detail.html?goodId='+data[i].pkId+'" target="_blank">';
						content+='<dt>';
						content+='<img title="'+data[i].goodsName+'" src="'+data[i].thumbnailUrl+'"/>';
						content+='</dt>';
						content+='<dd>';
						content+='<p >'+"Lot "+data[i].lotNum+": "+data[i].goodsName+'</p>';
						content+='<p class="auctionListP1">起拍价：<span>'+data[i].priceUnit+'</span><span>'+data[i].startPrice+'</span></p>';
						if(data[i].estimateMin==null && data[i].estimateMax==null){
							content+='<p class="auctionListP2">估计报价：<span>暂无</span></p>';
						}else if(data[i].estimateMin!=null && data[i].estimateMax==null){
							content+='<p class="auctionListP2">估计报价：<span>'+data[i].priceUnit+''+data[i].estimateMin+'</span></p>';
						}else if(data[i].estimateMin==null && data[i].estimateMax!=null){
							content+='<p class="auctionListP2">估计报价：<span>'+data[i].priceUnit+''+data[i].estimateMax+'</span></p>';
						}else{
							content+='<p class="auctionListP2">估计报价：<span>'+data[i].priceUnit+''+data[i].estimateMin+'-'+data[i].priceUnit+''+data[i].estimateMax+'</span></p>';
						}
						content+='<p>开拍时间：<span>'+data[i].startTime+'</span></p>';
						content+='</dd>';
						content+='</a>';
						content+='</dl>';
					}
					$(".auctionList").html(content);
					$(".loadDiv").hide();
						$('body,html').animate({ scrollTop: 200 }, 1);
					//小分页
	//				var pageTotal=$("#pageTotal").val();
	//				$('.pagination').jqPagination({
	//					link_string	: 'artList.html?kindCode=004&pageNo={page_number}',
	//					max_page	: pageTotal,
	//					paged		: function(page) {
	//						$('.current').html('<a>' + page + '</a>');
	//					}
	//				});
					//分页
	                if (isPage == 1) {
	                    $("#selectPage").html("");
	                    for (var i = 0; i < total; i++) {
	                        $("#selectPage").append("<option value=" + (i+1) + ">第" + (i + 1) + "页</option>");
	                    }
	                }else{
	                	$("#selectPage").val(pageNo);
	                }
	                
	                document.addEventListener('DOMContentLoaded', init(total, pageNo), false);
				}else{
					content+='<p style="font-size:14px; color:#666; text-align:center; line-height:60px;">暂无数据！</p>'
					$(".auctionList").html(content);
					$(".loadDiv").hide();
					document.addEventListener('DOMContentLoaded', init(1,1), false);
					 $("#selectPage").html("");
				}
			}else{
				content+='<p style="font-size:14px; color:#666; text-align:center; line-height:60px;">查询数据失败</p>'
				$(".auctionList").html(content);
				$(".loadDiv").hide();
			}
		}
	})
	
}
	

function getPageFresh(page){
    getData(kindCode,page);
}
//选择页数
function changeColor(page){
    getData(kindCode,page);
}