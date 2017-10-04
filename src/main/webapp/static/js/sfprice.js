/*
*2015年12月11日10:33:01 ycs
*对金钱处理
*/

//起拍价的金钱类型
function getStartUnits(startPrice){
	if(startPrice.indexOf("(")>-1){
		var num=startPrice.indexOf("(");
		startPrice=startPrice.substring(0,num);
	}
	startPrice=startPrice.replace(",","");				//去除可能存在的，号
	startPrice=startPrice.replace(" ","");				//去除可能存在的 号
	var oldUnit=startPrice.replace(/\d+/g,"");			//去掉数字，只留钱符号
	return oldUnit;
}

//起拍价的价格
function getStartPrice(startPrice){
	if(startPrice.indexOf("(")>-1){
			var num=startPrice.indexOf("(");
			startPrice=startPrice.substring(0,num);
	}
	startPrice=startPrice.replace(",","");
	startPrice=startPrice.replace(" ","");
	var oldPrice=startPrice.replace(/[^0-9]/ig,"");		//商品起始价格
	return oldPrice;
}

//最大报价的符号
function getMaxPriceUnits(priceStr){
	var str="";
	if(priceStr!=""&&priceStr!="Description:"){
		var str = priceStr.split(" ")[2];	
		if(str==undefined){
			str = priceStr.split(" ")[0];	
		}
		str=getStartUnits(str);
	}
	return str;
}

//最大报价的85%
function getMaxPrice(priceStr){
	var maxPrice="";
	if(priceStr!=""&&priceStr!="Description:"){
		var maxPrice = priceStr.split(" ")[2];	
		if(maxPrice==undefined){
			maxPrice = priceStr.split(" ")[0];	
		}
		maxPrice=getStartPrice(maxPrice);
		maxPrice=parseInt(maxPrice * 0.85);
	}
	return maxPrice;
}

//换算成比例
function getRMB(unit){
		var unit=unit;
		var exchange="6.3514";
		if(unit=="$"){
 		     unit = "$";
 		     exchange=6.3514;
 		}else if(unit=="€"){
 		     unit = "€";
 		     exchange=7.2209;
 		}else if(unit=="AUD"){
 		      unit = "AUD";
 		     exchange=4.6359;
 		}else if(unit=="£"){
 		      unit = "£";
 		     exchange=9.8199;
 		}else if(unit=="CAD"){
 		     unit = "CAD";
 		     exchange=4.9378;
 		}else if(unit=="SGD"){
 		     unit = "SGD";
 		     exchange=4.6039;
 		}else if(unit=="R"){
 		     unit = "R";
 		     exchange=0.4857;
 		}else if(unit=="DKK"){
 		     unit = "DKK";
 		     exchange=0.9689;
 		}else if(unit=="CHF"){
 		     unit = "CHF";
 		     exchange=6.6806;
 		}else if(unit=="HKD"){
 		     unit = "HKD";
 		     exchange=0.8202;
 		}else if(unit=="円"){
 		     unit = "円";
 		     exchange=0.052124;
 		}else if(unit=="SEK"){
 		     unit = "SEK";
 		     exchange=0.7510;
 		}else if(unit=="EUR"){
 		     unit = "EUR";
 		     exchange=6.9586;
 		}else if(unit=="RM"){
 		     unit = "RM";
 		     exchange=1.5114;
 		}
		else if(unit=="Rs."){
 		     unit = "Rs.";
 		     exchange=0.09649;
 		}		
 		return  exchange;
}

//取小数点后2位
function parseNum(x) {  
	var f_x = parseFloat(x);  
	var f_x = Math.round(x*100)/100;  
	return f_x;  
} 

///获取合适的价格
function  recommend(price) {
	
	var list = new Array();
	// 生成价格
	if (price < 100) {
		// 100生成 0-100价格区间50
		var i = 0;
		for (var j = 0; j < 10; j++) {
			i = i + 10;
			if (i <= 100) {
				list.push(i);
				
			}
		}
		return list;
	} else if (price > 100 && price < 500) {
		// 500生成 100-500价格区间50
		var i = 100;
		for (var j = 0; j < 8; j++) {
			i = i + 50;
			if (i <= 500) {
				list.push(i);
				
			}
		}
		return list;

	} else if (price > 500 && price < 1000) {
		var i = 500;
		for (var j = 0; j < 5; j++) {
			i = i + 100;
			if (i <= 1000) {
				list.push(i);
				
			}
		}
		return list;

	} else if (price > 1000 && price < 2000) {

		var i = 1000;
		for (var j = 0; j < 5; j++) {
			i = i + 200;
			if (i <= 2000) {
				list.push(i);
				
			}
		}
		return list;

	} else if (price > 2000 && price < 5000) {

		var i = 2000;
		for (var j = 0; j < 12; j++) {
			i = i + 250;
			if (i <= 5000) {
				list.push(i);
				
			}
		}
		return list;

	} else if (price > 5000 && price < 10000) {

		var i = 5000;
		for (var j = 0; j < 10; j++) {
			i = i + 500;
			if (i <= 10000) {
				list.push(i);
				
			}
		}
		return list;

	} else if (price > 10000 && price < 20000) {
		var i = 10000;
		for (var j = 0; j < 10; j++) {
			i = i + 1000;
			if (i <= 20000) {
				list.push(i);
				
			}
		}
		return list;

	} else if (price > 20000 && price < 50000) {
		var i = 20000;
		for (var j = 0; j < 15; j++) {
			i = i + 2000;
			if (i <= 50000) {
				list.push(i);
				
			}
		}
		return list;

	} else if (price > 50000 && price < 100000) {

		var i = 50000;
		for (var j = 0; j < 15; j++) {
			i = i + 5000;
			if (i <= 100000) {
				list.push(i);
				
			}
		}
		return list;
	}
	return list;
}
