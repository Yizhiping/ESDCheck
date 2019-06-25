var autoRefresh = false;				//標誌位, 用於檢查是否選擇好廠區和樓層
var factory = null;
var Floor = null;
var lastRequetTime = null;				//標誌位, 最後更新的時間

window.console = window.console || (function (){
	var c = {};
	c.log = c.warn = c.debug = c.info = c.error = c.time = c.dir = c.profile = c.clear = c.exception = c.trace = c.assert = function () {};
	return c;
})();





$(document).ready(function(e) {
$.cookie('factory','');
$.cookie('floor','');

	$(window).resize(function(){ 		//自適應高度
		$('#content').css({height:($(window).height()-40-30-20)});
		if($(window).width()<=1350){
			$('#content').css('width','1350');
			$('#menu').css('width','1350');
			$('#mainTitle').css('width','1350');
			$('#footer').css('width','1350');
		} else {
			$('#content').css('width',$(window).width());
			$('#menu').css('width',$(window).width());
			$('#mainTitle').css('width',$(window).width());
			$('#footer').css('width',$(window).width());
		}
	}); 
 	$(window).resize(); 

 	$('.usr_select>li').click(function(){
 		var thisValue = $(this).text();
 		var thisParent = $(this).parent().parent().attr('id');
 		if (thisParent=='sel_factory') {
			$(this).parent().parent().children('font').html('廠區 : ' + thisValue);
			$.cookie('factory',thisValue);
			factory = thisValue;
		} else {
			$(this).parent().parent().children('font').html('樓層 : ' + thisValue );
			$.cookie('floor',thisValue);
			floor = thisValue;
		}

		if($.cookie('floor')!='' && $.cookie('factory')!='')
		{
			autoRefresh = true;
            $('#LoadingAnimation').show();	//加載時的動畫

			$.ajax({
				type:'GET',
				url:'PHP_Inc/getAllDevState.php'+ "?sid=" + Math.random(),
				data:{'factory':factory,'floor':floor},
				datatype:'html',
				success:function(a, b, c){
                    $('#LoadingAnimation').show();
					var now = new Date();
					lastRequetTime = now.getTime();
					$('#content').html(a);
					$('#showTime').text('資料時間: ' + __getDateTime(lastRequetTime/1000));
					window.console.log('[' + __getDateTime(lastRequetTime/1000) + '] -> factory:' + factory + ', floor:' + floor + ', Get all dev status data!');
				}
			});
		}
 		
 	});
});

$(function() { (function getDataFromServer() {			//自動運行, 從服務器獲取數據
		if(lastRequetTime != null){
			var url = "PHP_Inc/getCurrentDevData.php";
			var factory = $.cookie('factory');
			var floor = $.cookie('floor');
			url = url + "?sid=" + Math.random() + "&factory=" + factory + '&floor=' + floor;
			
			// var devIDArr = $('sapn');
			// var devIDArr = [];
			
			// devIDArr.each(function() {
				// devIDArr.push($(this).attr('id'));
            // });
			
			
			$.ajax({
				type: 'POST',
				url: url,
				dataType: "json",
				cache: false,
				timeout: 6000,
				data:{'lastRequetTime':lastRequetTime},
				success: function(data, textStatus) {
					lastRequetTime = data.ti.rst;

					//var now = new Date(data.ti.rst);
					//var datatime = now.toDateString() + ' ' + now.toLocaleTimeString();
					$('#showTime').text('資料時間: ' + __getDateTime(data.ti.rst) );

					if(data.st == 1){
						var i=0;
						for(var id in data.da.offLines){	//未開的線體變灰色
							$("[line='" + data.da.offLines[i] +"']").css('backgroundColor','#999');
							// $(".div_LineName,[line='" + data.da.offLines[i] +"']").attr('sta',0);
							$('.div_LineName').each(function(){
								if($(this).attr('line') == data.da.offLines[i] ){
									if($(this).attr('sta')==1){
										window.console.log('[' + __getDateTime(lastRequetTime) + '] -> ' + data.da.offLines[i] + ' -> line off');	
									}
									$(this).attr('sta',0)
									
								}
							});
							i++;
						}

						i=0;
						for(var id in data.da.onLines){
							var j=0;
							var devID  = null;
							var devSta = null;
							var offDevCount = 0;
							var lineSta=1;
							for(var k in data.da.devIDs[i]){
								devID = data.da.devIDs[i][j];
								devSta= data.da.devSta[i][j];
								devLut= data.da.lut[i][j];

								$('.div_LineName').each(function(){				//線體開線/關線時,線體名稱閃爍
									if($(this).attr('line') == data.da.onLines[i] ){
										if($(this).attr('sta')==0){
											window.console.log('[' + __getDateTime(lastRequetTime) + '] -> ' + data.da.onLines[i] + ' -> line on.');
											$(this).attr('sta',1);
										}
										
										
									}
								});


								$('#' + devID).attr('updatetime',devLut);			//更新Dev數據的時間
								if(Math.abs(lastRequetTime - devLut) > 600){		//判斷更新的時間是否大於10分鐘.

									if($('#' + devID).attr('devSta')==1){
										window.console.log('[' + __getDateTime(lastRequetTime) + '] -> ' + devID + ' -> timeout, Device off.');
										$('#' + devID).css('backgroundColor','#999').attr('devSta',0);
									}

									offDevCount++;									//計數大於5分鐘無反應的數量
									devSta = 0;

								} else {


									if(devSta == 1){	//變更Dev背景顏色
										$('#' + devID).css('backgroundColor','#00CC00');
										
									} else {
										$('#' + devID).css('backgroundColor','#c66');
										
									}

									if($('#' + devID).attr('devSta') != devSta){	//狀態變更閃爍
										var tmpstr = devSta == 1 ? ' PASS.' : ' FAIL.';
										window.console.log('[' + __getDateTime(lastRequetTime) + '] -> ' + devID + ' ' + $('#' + devID).text() + tmpstr);
										$('#' + devID).attr('devSta',devSta);
										shake($('#' + devID),'red',3);
									}
								}

								if(devSta != 1){	//判斷線的狀態
									lineSta = 0;
								}

								j++;
							}

							if(offDevCount < data.da.devIDs[i].length){
								if(lineSta != 1){						//改變線體和機種名稱的背景顏色
									$('.div_LineName').each(function(){
										if($(this).attr('line')==data.da.onLines[i]){
											$(this).css('backgroundColor','#c66');
										}
									});
									$('.div_ModelName').each(function(){
										if($(this).attr('line')==data.da.onLines[i]){
											$(this).css('backgroundColor','#c66');
										}
									});
								} else {
									$('.div_LineName').each(function(){
										if($(this).attr('line')==data.da.onLines[i]){
											$(this).css('backgroundColor','#0c0');
										}
									});
									$('.div_ModelName').each(function(){
										if($(this).attr('line')==data.da.onLines[i]){
											$(this).css('backgroundColor','#0c0');
										}
									});
								}
							} else {
								$('.div_LineName').each(function(){
									if($(this).attr('line')==data.da.onLines[i]){
										$(this).css('backgroundColor','#999');
									}
								});
								$('.div_ModelName').each(function(){
									if($(this).attr('line')==data.da.onLines[i]){
										$(this).css('backgroundColor','#999');
									}
								});
							}

							i++;
						}
					}
					// alert(1);
					getDataFromServer();
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					// alert(2);
					getDataFromServer();
					
				}
	
			});
		} else {
		// alert(3);
		setTimeout(getDataFromServer,3000);

		}
		
		

    })();
});


function __getDateTime(UnixTime){			//從UnixTime獲取日期時間字符串
	var now = new Date(UnixTime*1000);
	//now = now.setTime(UnixTime*1000);
	var yy = now.getFullYear();      //年
	var mm = now.getMonth() + 1;     //月
	var dd = now.getDate();          //日
	var hh = now.getHours();         //时
	var ii = now.getMinutes();       //分
	var ss = now.getSeconds();       //秒
	var clock = yy + "/";
	if(mm < 10) clock += "0";
	clock += mm + "/";
	if(dd < 10) clock += "0";
	clock += dd + " ";
	if(hh < 10) clock += "0";
	clock += hh + ":";
	if (ii < 10) clock += "0"; 
	clock += ii + ":";
	if (ss < 10) clock += "0"; 
	clock += ss;
	//return clock.substr(2,17);     //获取当前日期
	return clock;
}

function shake(ele,cls,times){       //指定元素閃爍效果,需要設置好CSS   
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