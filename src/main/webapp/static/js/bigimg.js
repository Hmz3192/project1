function imgMagnify() {
			// 图片左右滚动
			if ($("#imageMenu li").length > 50) {
				var count = $("#imageMenu li").length - 50;
			} else {
				var count = $("#imageMenu li").length;
			}
			var interval = $("#imageMenu li:first").width();
//			console.log(interval)
			var curIndex = 0;
			$('.scrollbutton').click(function() {
				if ($(this).hasClass('disabled')) return false;
				if ($(this).hasClass('smallImgUp')) --curIndex;
				else ++curIndex;
				$('.scrollbutton').removeClass('disabled');
				if (curIndex == 0) $('.smallImgUp').addClass('disabled');
				if (curIndex == count - 4) $('.smallImgDown').addClass('disabled');
				$("#imageMenu ul").stop(false, true).animate({
					"marginLeft": -curIndex * interval + "px"
				}, 600);
			});
			// 解决 ie6 select框 问题
			$.fn.decorateIframe = function(options) {
				if ($.support.msie && $.support.version < 50) {
					var opts = $.extend({}, $.fn.decorateIframe.defaults, options);
					$(this).each(function() {
						var $myThis = $(this);
						//创建一个IFRAME
						var divIframe = $("<iframe />");
						divIframe.attr("id", opts.iframeId);
						divIframe.css("position", "absolute");
						divIframe.css("display", "none");
						divIframe.css("display", "block");
						divIframe.css("z-index", opts.iframeZIndex);
						divIframe.css("border");
						divIframe.css("top", "0");
						divIframe.css("left", "0");
						if (opts.width == 0) {
							divIframe.css("width", $myThis.width() + parseInt($myThis.css("padding")) * 2 + "px");
						}
						if (opts.height == 0) {
							divIframe.css("height", $myThis.height() + parseInt($myThis.css("padding")) * 2 + "px");
						}
						divIframe.css("filter", "mask(color=#fff)");
						$myThis.append(divIframe);
					});
				}
			}
			$.fn.decorateIframe.defaults = {
					iframeId: "decorateIframe1",
					iframeZIndex: -1,
					width: 0,
					height: 0
				}
				//放大镜视窗
			$("#bigView").decorateIframe();
			//点击到中图
			var midChangeHandler = null;
			midChange($("#imageMenu li").eq(0).find("img").attr("src"));
			$("#imageMenu li img").bind("click", function() {
				if ($(this).attr("id") != "onlickImg") {
					midChange($(this).attr("mid"));
					$("#imageMenu li").removeAttr("id");
					$(this).parent().attr("id", "onlickImg");
				}
			}).bind("mouseover", function() {
				if ($(this).attr("id") != "onlickImg") {
					window.clearTimeout(midChangeHandler);
					midChange($(this).attr("mid"));
					$("#imageMenu li img").css({
						"border": "0px"
					});
					$(this).css({
						"border": " 1px solid #7E69B4"
					});
					$("#imageMenu li").removeAttr("id");
					$(this).parent().attr("id", "onlickImg");
				}
			}).bind("mouseout", function() {
				if ($(this).attr("id") != "onlickImg") {
					$(this).removeAttr("style");
					midChangeHandler = window.setTimeout(function() {
						midChange($("#onlickImg img").attr("mid"));
					}, 1000);
				}
			});
			/*中图的src》》》》》》》》》》》》》》》》》》》》》》》》》》》》》*/
			function midChange(src) {
				$("#midimg").attr("src", src).load(function() {
				$("#midimg").removeAttr("width").removeAttr("height");
					if(parseInt($("#midimg").css("width")) > parseInt($("#midimg").css("height"))){
						$("#midimg").attr("width","400")
					}else{
						$("#midimg").attr("height","400")
					}
					
					//console.log($("#midimg").css("width"));
					changeViewImg();
					
				});
			}
			//大视窗看图
			function mouseover(e) {
				if ($("#winSelector").css("display") == "none") {
					$("#winSelector,#bigView").show();
				}
				$("#winSelector").css(fixedPosition(e));
				e.stopPropagation();
			}

			function mouseOut(e) {
				if ($("#winSelector").css("display") != "none") {
					$("#winSelector,#bigView").hide();
				}
				e.stopPropagation();
			}
			$("#vertical").mouseover(mouseover); //中图事件
			$("#vertical,#winSelector").mousemove(mouseover).mouseout(mouseOut); //选择器事件
			var $divWidth = $("#winSelector").width(); //选择器宽度
			var $divHeight = $("#winSelector").height(); //选择器高度
			
			
			var $vertWidth = $("#midimg").parent().width(); //中图box宽度
			var $vertHeight = $("#midimg").parent().height(); //中图box高度
			var $viewImgWidth = $viewImgHeight = $boxHeight = $boxWidth = 0; //IE加载后才能得到 大图宽度 大图高度 大图视窗高度 大图视窗宽度
			
			/*大图的src》》》》》》》》》》》》》》》》》》》》》》》》》》》》》*/
			function changeViewImg() {
				$("#bigView img").attr("src", $("#midimg").attr("src"));

				
			}
			changeViewImg();
			$("#bigView").scrollLeft(0).scrollTop(0);

			function fixedPosition(e) {
				if (e == null) {
					return;
				}
				$viewImgWidth = 0;
				
				$("#bigView").css("background","#FFFFFF")
				var $imgWidth = parseInt($("#midimg").css("width")); //中图宽度
				var $imgHeight = parseInt($("#midimg").css("height")); //中图高度
			
			    //console.log($imgWidth+":"+$imgHeight);
				var $imgLeft = $("#midimg").offset().left; //中图左边距
				var $imgTop = $("#midimg").offset().top; //中图上边距
				var $vertLeft = $("#vertical").offset().left; //中图box左边距
				var $vertTop = $("#vertical").offset().top; //中图box上边距
				X = e.pageX - $vertLeft - $divWidth / 2; 
				//selector顶点坐标 X
				Y = e.pageY - $vertTop - $divHeight / 2; 
				//selector顶点坐标 Y
				X = X < 0 ? 0 : X;
				Y = Y < 0 ? 0 : Y;
				X = X + $divWidth > $vertWidth ? $vertWidth - $divWidth : X;
				Y = Y + $divHeight > $vertHeight ? $vertHeight - $divHeight : Y;
				if ($viewImgWidth == 0) {
				$viewImgWidth = 0;
				$viewImgHeight = 0;
				$boxHeight = $boxWidth ="400"
					$("#bigView").width($boxWidth);
					$("#bigView").height($boxHeight);
					$viewImgWidth = parseInt(400 * $imgWidth / $divWidth)
					$viewImgHeight = parseInt(400 * $imgHeight / $divHeight)
//					console.log($viewImgWidth+":"+$viewImgHeight);
					$("#bigView img").width($viewImgWidth)
					$("#bigView img").height($viewImgHeight)
				}
				
				
				var percentX = (X-$imgLeft+$vertLeft)*$viewImgWidth/$imgWidth
				var percentY = (Y-$imgTop+$vertTop)*$viewImgHeight/$imgHeight
				
//				console.log($imgLeft+":"+$vertLeft);
				//大图在box里的位置
				$("#bigView img").css({
					"left": (percentX * -1),
					"top": (percentY * -1)
				});
				
				//大图box位置
				$("#bigView").css({
					"top": 0,
					"left": 430
				});
				//选择器的位置
				return {
					left: X,
					top: Y
				};
			}
		}
		$(document).ready(function() {
			//imgMagnify();
		});
		$("#imgFade").hide();		
		$("#imgFade span").hide();		
		$("#vertical").click(function(){
			$(".shadeBlack").show();
			$("#imgFade").show();
			changeFadeImg();
			$("#imgFade").css("z-index","2100");
			$("#imgFade span").show();
		})
		$("#imgFade span").click(function(){
			$(".shadeBlack").hide();
			$("#imgFade").hide();
			changeHideImg() ;
			$("#imgFade").css("z-index","0");
			$("#imgFade span").hide();
		})
		function changeHideImg() {
			$("#imgFade img").attr("src", "");
		}
		function changeFadeImg() {
			$("#imgFade img").attr("src", $("#midimg").attr("src"));
		}
