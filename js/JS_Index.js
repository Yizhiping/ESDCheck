var line=null;
var station=null;

/*
 * 设置输入域(input/textarea)光标的位置
 * @param {HTMLInputElement/HTMLTextAreaElement} elem
 * @param {Number} index
 */
$.fn.setCursorPosition = function(option) {
    var settings = $.extend({
        index: 0
    }, option)
    return this.each(function() {
        var elem  = this
        var val   = elem.value
        var len   = val.length
        var index = settings.index
 
        // 非input和textarea直接返回
        var $elem = $(elem)
        if (!$elem.is('input,textarea')) return
        // 超过文本长度直接返回
        if (len < index) return
 
        setTimeout(function() {
            elem.focus()
            if (elem.setSelectionRange) { // 标准浏览器
                elem.setSelectionRange(index, index)   
            } else { // IE9-
                var range = elem.createTextRange()
                range.moveStart("character", -len)
                range.moveEnd("character", -len)
                range.moveStart("character", index)
                range.moveEnd("character", 0)
                range.select()
            }
        }, 10)
    })
}


function blink(selector){
$(selector).fadeOut(100, function(){
  $(this).fadeIn(50, function(){
   // blink(this);
  });
});
//	$(selector).fadeOut(100, function(){
// $(this).fadeIn(50, function(){
// blink(this);
//  });
//});
}

function shake(ele,cls,times){          
        var i = 0,t= false ,o =ele.attr("class")+" ",c ="",times=times||2;
         if(t) return;
         t= setInterval(function(){
             i++;
             c = i%2 ? o+cls : o;
             ele.attr("class",c);
             if(i==2*times){
                 clearInterval(t);
                 ele.removeClass(cls);
             }
         },200);
 };
	 

function __getDateTime(UnixTime){
	var now = new Date(UnixTime*1000);
	//now = now.setTime(UnixTime*1000);
	var yy = now.getFullYear();      //年
	var mm = now.getMonth() + 1;     //月
	var dd = now.getDate();          //日
	var hh = now.getHours();         //时
	var ii = now.getMinutes();       //分
	var ss = now.getSeconds();       //秒
	var clock = yy + "-";
	if(mm < 10) clock += "0";
	clock += mm + "-";
	if(dd < 10) clock += "0";
	clock += dd + " ";
	if(hh < 10) clock += "0";
	clock += hh + ":";
	if (ii < 10) clock += "0"; 
	clock += ii + ":";
	if (ss < 10) clock += "0"; 
	clock += ss;
	return clock.substr(2,17);     //获取当前日期
}


//$('#getstr').val($.cookie('Getstr'));
var lastRequetTime = null;

$(function() { (function getDataFromServer() {
		if(lastRequetTime != null){
			var url = "Ins/getProbebyLine_new.php";
			var line = $.cookie('line');
			var station = $.cookie('station');
			url = url + "?sid=" + Math.random() + "&line=" + line + '&station=' + station;
			var now = new Date();
			var datatime = now.toDateString() + ' ' + now.toLocaleTimeString();
			$('#showmsg').html('<span style="font-size=12px;">資料時間: ' + datatime + '</span>');
			
			var proTDArr = $('.usetimes');
			var proIDArr = [];
			
			proTDArr.each(function() {
				proIDArr.push($(this).attr('id'));
            });
			
			
			$.ajax({
				type: 'POST',
				url: url,
				dataType: "json",
				cache: false,
				timeout: 6000,
				data:{'lastRequetTime':lastRequetTime,'probeIDs':JSON.stringify(proIDArr)},
				success: function(data, textStatus) {
					lastRequetTime = data.ti.rqt;
					if(data.st == 1){
						//lastRequetTime = data.ti.rqt;
						var i=0;
						for(var tmpid in data.da.probeIds){
							var smbfb = Number(data.da.bfb[i]);
							$('#'+data.da.probeIds[i]).parent().parent().parent().parent().parent().children('.datatime').text(__getDateTime(data.da.lastUpdateTime[i]));
							
							$('#'+data.da.probeIds[i]).text(data.da.useTimes[i]);	//更新使用次數
							
							
							if(smbfb < 90){
								$('#'+data.da.probeIds[i]).css('background-color','#090');
							} else if(smbfb >= 90.1 && smbfb <= 100 ){
								$('#'+data.da.probeIds[i]).css('background-color','#C60');
							} else {
								$('#'+data.da.probeIds[i]).css('background-color','#C00');
							}

							shake($('#'+data.da.probeIds[i]),'red',5);		//閃爍效果

							i++;
						}
					}
					getDataFromServer();
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					getDataFromServer();
				}
	
			});
		} else {
			
		setTimeout(getDataFromServer,3000);
		}
		
		$('.datatime').each(function() {
			
			var timeDiff = null;
			
			var explorer =navigator.userAgent;		//判斷是否為IE瀏覽器, 解決new Date兼容性問題
			//if (explorer.indexOf("MSIE") >= 0) {
			//		
			//	timeDiff = (new Date().getTime() - Date.parse(getDateForStringDate('20' + $(this).text())))/1000;		
			//} else {
			//	timeDiff = (new Date().getTime() - Date.parse(new Date('20' + $(this).text())))/1000;
			//
			//}
			
			timeDiff = (new Date().getTime() - Date.parse(getDateForStringDate('20' + $(this).text())))/1000;
			
			//根據數據最後的更新時間, 變更資料時間的背景顏色
			var bgcolor = null;
			if(timeDiff < 900){
				//$(this).css('background-color','#03f');
				//$(this).prev().css('background-color','#03f');
				bgcolor = '#136495'; //03f
			} else if (timeDiff>=901 &&　timeDiff<=3600) {
				//$(this).css('background-color','#FFCC33');
				bgcolor = '#A9541B';
			} else if (timeDiff>=3601 && timeDiff<=21600){
				//$(this).css('background-color','#FF3333');
				bgcolor = '#660000';  //990000
			} else {
				//$(this).css('background-color','#666');
				bgcolor = '#660000';  //666
				
			}
			
			$(this).css('background-color',bgcolor);
			$(this).prev().css('background-color',bgcolor);
			
            
        });

    })();
});

/**
 * 解决 ie，火狐浏览器不兼容new Date(s)
 * @param strDate
 * 返回 date对象
 * add by zyf at 2015年11月5日
 */
function getDateForStringDate(strDate){
	//切割年月日与时分秒称为数组
	var s = strDate.split(" "); 
	var s1 = s[0].split("-"); 
	var s2 = s[1].split(":");
	if(s2.length==2){
		s2.push("00");
	}
	return new Date(s1[0],s1[1]-1,s1[2],s2[0],s2[1],s2[2]);
}

function openwin(url){
window.open(url,"newwindow","height=375,width=620,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
//写成一行
} 



$(document).ready(function(e) {
//	setTimeout('zhuose()',2000);
	
	
	var line = $.cookie('line');
	var station = $.cookie('station');
	
	$('#line').val(line);
	$('#station').val(station);

	$('#Content-Main').on('dblclick','.usetimes',function(){
		var probeid;
		probeid = $(this).attr('id');
		//alert(probeid);
		openwin('ins/Maintain.php?probeid=' + probeid);
		//location.reload();
	});
		
	$('#Footer').css('position','fixed');
	$('#Footer').css('bottom','0px');
	
	
	$('#show').click(function(){
//		var station = $('#station').val();
//		var line = $('#line').val();
		var html="<div id=\"loading\"><img src=\"img/timg.gif\"></div>";
		// var Getstr = ''; // = $.cookie('Getstr');
		
		// if(Getstr.length==0) {
		// 	Getstr = 'line=' + line +'&station=' + station; // + '&staidx=' + staidx;
		// }
		 
		if(line.length!=0){
			$('#sel_Line').text('Line: ' + line + ' ▼');
		}
		if(station.length!=0){
			$('#sel_Station').text('Station: ' + station + ' ▼');
		}


		$('#Content-Main').html(html);
//		$('#getstr').val(Getstr);
		$.cookie('line',line)
		$.cookie('station',station);
		
		var url = "Ins/getProbebyLine.php";
//		var line = $.cookie('line');
//		var station = $.cookie('station');
		url = url + "?sid=" + Math.random() + "&line=" + line + '&station=' + station;
		var now = new Date();
		var datatime = now.toDateString() + ' ' + now.toLocaleTimeString();
		$('#showmsg').html('<span style="font-size=12px;">資料時間: ' + datatime + '</span>');
		$.ajax({
            type: 'GET',
            url: url,
            dataType: "json",
            cache: false,
            timeout: 6000,
	        success: function(data, textStatus) {
	        	lastRequetTime = data.ti.rqt;
				if(data.st == 1){
					if(data.da!=null){
						$('#Content-Main').html(data.da);
					} else {
						$('#Content-Main').html('<h3>您選擇的線體站位無信息,請更換其他線體或站位.</h3>');
					}

				
				} else {
					$('#Content-Main').html('<h3>發生錯誤, 無法獲取信息，請聯係系統管理员.</h3>');
				}
            //    getDataFromServer();
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
				$('#Content-Main').html('<h3>無法取得信息，請聯係系統管理员.</h3>');

            }

        });
		
	});

		
		
	$('#Content-Main').scroll(function(){
		//alert('觸發了滾動條事件');
		$('#Footer').css('position','fixed');
		$('#Footer').css('bottom','0px');
	});
	
	$('#partman').click(function(){    //打開料號管理界面
		window.open('ins/partno.php',"newwindow","height=500,width=1000,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
	});
	

	$(window).resize(function(){ 		//登录窗口自动居中
	
		//var bodyheight=$(document.body).height();
		//alert(bodyheight);
		$('#Content-Main').css({height:($(window).height()-75-15)});
		$('#div_login').css({ 
		position:'absolute', 
		left: ($(window).width() - $('#div_login').outerWidth())/2, 
		top: ($(window).height() - $('#div_login').outerHeight())/2 + $(document).scrollTop() 
		}); 
	}); 
	//初始化函数 
	$(window).resize(); 
	
	$('.lgInput').bind('focus',function(){		//登入动作
		$(this).css('border','1px solid #111').select();
		$(this).css('background-color','#fff');
	});
	
	$('.lgInput').bind('blur',function(){
		$(this).css('border','1px solid #fff');
		$(this).css('background-color','#CFF');
	});
	
	$('#btn_login').click(function(){			//登入动作
		var usr = $('#usr').val();
		var pwd = $('#pwd').val();

		if (usr=='UserID' || pwd=='Password') {
			return;
		}


		if(usr.length==0 || pwd.length==0){
			alert('用戶名和密碼不能為空');
			return false;
		}
		usr = $.base64.encode(usr);
		
		$.ajax({
			type:'POST',
			url:"ins/login_ajax.php",
			data:{'usr':usr,'pwd':hex_md5(pwd),'opType':'login'},
			success: function(a, b, c){
				var rspArr = a.split(',');
				alert(rspArr[1]);
				if(rspArr[0]==1){
					$('#login').hide();
					$.cookie('isLogin',true);
					$.cookie('usr',rspArr[2]);
					$.cookie('usrLevel',rspArr[3]);
					window.location.reload(true);
					$('#div_login').hide();
					$('#show').click();
				}
			}
		});
		

	});
	
	$('#login').click(function(){		//显示登入窗口
		$('#div_login').show();
		$('#usr').focus().select();
		$('#usr').val('UserID');
		$('#pwd').val('Password').attr('type','text');
		$(window).resize();
		// return false;
	});
	
	$('#btn_cancel').click(function(){ 	//取消登录窗口
		$('#div_login').hide();
	});
	
	$('#logout').click(function(){		//登出动作
		$.ajax({
			type:'POST',
			url:"ins/login_ajax.php",
			data:{'opType':'logout'},
			success: function(a, b, c){
				rspArr = a.split(',');
				if(rspArr[0]==1){
					$('.GotoMan').hide();
					$.cookie('isLogin',null);
					$.cookie('usr',null);
					$.cookie('usrLevel',null);

					alert(rspArr[1]);
					window.location.reload();
					$('#show').click();
		
				}else{
					alert('登出失败,请尝试关闭浏览器后重试.');
				}
			}
		});
		
	});

	$('#ls>ul>li').click(function(){
		var thisID = $(this).children('a').attr('id');
		if(thisID=='sel_Line' || thisID=='sel_Station'){
			$(this).children('ul').css('display','block');
		}

	});
	
	$('#ls>ul>li>ul>li').click(function() {
        var thisValue = $(this).text();
		var thisParent = $(this).parent().attr('id');
		// $(this).parent().parent().children('a').text(thisParent + ' : ' + thisValue + ' ▼');
		
		if(thisParent=='line'){
			$.cookie('line',thisValue);
			line = thisValue;
			$('#sel_Line').text('Line: ' + line + ' ▼')
		} else {
			$.cookie('station',thisValue);
			station = thisValue;
			$('#sel_Station').text('Station: ' + station + ' ▼')
		}
	
		$('#'+thisParent).hide(200);

		if (line.length!=0 && station.length!=0) {
			$('#show').click();
		}
		
		//alert(thisParent);
    });

	$('.lgInput').keydown(function(){	//用戶和密碼輸入框輸入時的事件
		if ($(this).val()=='UserID' || $(this).val()=='Password') {
			$(this).val('');
		}

		
		if($(this).attr('id')=='pwd'){

			$(this).attr('type','Password')
		}
		
	});

	$('.lgInput').focus(function(){		//用戶和密碼輸入框獲得焦點時, 將光標定到第一的位置.
		if ($(this).val()=='') {
			$(this).setCursorPosition(1);
		}
	});

	$('.lgInput').click(function(){		//用戶和密碼輸入框獲得焦點時, 將光標定到第一的位置. 增加用鼠標點擊的情況
		if ($(this).val()=='') {
			$(this).setCursorPosition(1);
		}
	});

});


// JavaScript Document