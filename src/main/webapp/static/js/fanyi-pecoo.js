//翻译事件
var contentDetail= "",contentDetail1="";

function getFanYi(){
	if(contentDetail !="" || contentDetail1!=""){
	    if(contentDetail !="" ){
	        document.getElementById("name").innerHTML=contentDetail;
	        contentDetail="";
	    }
	     if(contentDetail1 !="" ){
	        document.getElementById("detailedDesc").innerHTML=contentDetail1;
	        contentDetail1="";
	    }
	     $("#fanyiCH").html("翻译");
	    return ;
	}
	var detailedDesc = $("#name").html();
	detailedDesc = clearString(detailedDesc);
	contentDetail = detailedDesc;
	var str1= "20170525000049140" + detailedDesc + "12345678" +"7Jt6Swy7g11DNMHMv3Pv";
	var sign = MD5(str1);
	$.ajax({
		url : "http://api.fanyi.baidu.com/api/trans/vip/translate",
		dataType : "jsonp",
		jsonp:"callback",
		type : "get",
		data:{
	        "q": detailedDesc,
	        "appid": "20170525000049140",
	        "salt": "12345678",
	        "from": "auto",
	        "to": "zh",
	        "sign": sign
	    },
		success : function(data) {
		     for(var key in data){
		        //console.log(data[key]);
		        if(key == "trans_result"){
		            //ascii2native(data['trans_result'][0]['dst'],"name");
		        	document.getElementById("name").innerHTML = data['trans_result'][0]['dst'];
		        }
		     }
		     getFanYi1();
		     $("#fanyiCH").html("已翻译");
		}
	});
}

function getFanYi1(){
	var detailedDesc = $("#detailedDesc").html();
	detailedDesc = clearString(detailedDesc);
	contentDetail1 = detailedDesc;
	var str1= "20170525000049140" + detailedDesc + "12345678" +"7Jt6Swy7g11DNMHMv3Pv";
	var sign = MD5(str1);
	$.ajax({
		    url : "http://api.fanyi.baidu.com/api/trans/vip/translate",
			dataType : "jsonp",
			jsonp:"callback",
			type : "get",
			data:{
		        "q": detailedDesc,
		        "appid": "20170525000049140",
		        "salt": "12345678",
		        "from": "auto",
		        "to": "zh",
		        "sign": sign
		    },
			success : function(data) {
			     for(var key in data){
			        //console.log(data[key]);
			        if(key == "trans_result"){
			            document.getElementById("detailedDesc").innerHTML = data['trans_result'][0]['dst'];
			        }
			     }
			}
	});
			
}
			
/**
 *   特殊字符转换
 * 	 1. + URL 中+号表示空格 %2B 
 *   2. 空格 URL中的空格可以用+号或者编码 %20 
 *   3. / 分隔目录和子目录 %2F 
 *   4. ? 分隔实际的 URL 和参数 %3F 
 *   5. % 指定特殊字符 %25 
 *   6. # 表示书签 %23 
 *   7. & URL 中指定的参数间的分隔符 %26 
 *   8. = URL 中指定参数的值 %3D
 * @returns
 */
function clearString(s){ 
	s=s.replace(/\r\n/g,"");  
    s=s.replace(/\n/g,"");  
    var pattern = new RegExp("[`~!@#$^&*()=|{}\\[\\]<>/?~！@#￥……&*（）&;|{}‘；”“'，、？]") 
    var rs = ""; 
    for (var i = 0; i < s.length; i++) { 
        rs = rs+s.substr(i, 1).replace(pattern, ''); 
    } 
    return rs;  
}
String.prototype.replaceAll = function(s1,s2){
	 return this.replace(new RegExp(s1,"gm"),s2);
}

