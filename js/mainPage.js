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

 	//廠區和樓層變更
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
//					window.console.log('[' + __getDateTime(lastRequetTime/1000) + '] -> factory:' + factory + ', floor:' + floor + ', Get all dev status data!');
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
			
			$.ajax({
				type: 'POST',
				url: url,
				dataType: "json",
				cache: false,
				timeout: 6000,
				success: function(data, textStatus) {
					var lastUpdateTime = data.updateTime;		//數據最後更新的時間
					console.log(lastUpdateTime);
					$('#showTime').text('資料時間: ' + __getDateTime(lastUpdateTime) );	//更新數據更新的時間

					$('.resTR').each(function (e) {		//處理所有線體的資料
						var lineName = $(this).attr('line');	//獲取當前線體名稱
						var lineInfo = getLineInfo(lineName, data.dat);		//獲取當前線體資料
						var lineState;										//新的線體資料
						var lineUpdateTime;
						var lineCurrentState;								//線體總狀態
						var lineOldState =  $(this).attr('state');			//舊的線體資料

						if(lineInfo != false)
						{
							lineUpdateTime= lineInfo.updateTime;	//數據中當前線體的更新時間

                            lineState = (Number(lastUpdateTime) - Number(lineUpdateTime)) > 300 ? 0 : lineInfo.st;				//數據中當前線體的狀態
							$(this).attr('updatetime',lineUpdateTime);	//更新時間
							$(this).attr('state', lineState);			//更新狀態

							if(lineState == 1)							//開線狀態
							{
								lineCurrentState = 1;
                                $(this).attr('state',1);											//更新線體狀態
                                $(this).children('td').children('.devInfo').each(function (e) {
									var devAddr = $(this).attr('addr');			//當前報警器的地址
									var devState = $(this).attr('state');			//當前報警器的狀態
									var devInfo = getDevInfo(devAddr,lineInfo.dat); //使用地址從數據中獲取到新的狀態信息

									if(devInfo != false) {
                                        var newUpdateTime = devInfo.updateTime;			//新的時間
                                        var newState = (Number(lastUpdateTime) - Number(newUpdateTime)) > 300 ? 0 : devInfo.st;						//新的狀態
										if(newState != 1) lineCurrentState = 2;			//新狀態中有非PASS的就判線體狀態為FAIL
                                        $(this).attr('updatetime',newUpdateTime);		//更新時間
                                        $(this).attr('state',newState);					//更新狀態
                                        if (devState != newState || lineOldState != lineState) {			//新舊狀態不相同, 改變顏色.
                                            if (newState == 1) {											//或者是線體狀態改變的時候
												$(this).css('backgroundColor','#0C0');
                                            } else if(newState == 2)
											{
                                                $(this).css('backgroundColor','#C66');
											} else {
                                                $(this).css('backgroundColor','#999');
											}
                                            shake($(this));
                                        }
                                    } else {
                                        $(this).remove();								//找不到時, 說明服務器上沒有這個, 刪除之
									}
                                });
                                if(lineCurrentState != 1)								//線體不為1, 標示為紅色.
								{
                                    $(this).children('.lineTitle').css('backgroundColor','#C66');
								} else {												//線體為, 標示為綠色.
                                    $(this).children('.lineTitle').css('backgroundColor','#0C0');
								}
							} else {													//停線狀態
                                $(this).attr('state',0);								//更顯線體狀態
								$(this).children('.lineTitle').css('backgroundColor','#999');
								$(this).children('td').children('.devInfo').css('backgroundColor','#999');
							}
						} else {		//找不到線體, 整條線刪除
							//$(this).remove();
						}
                    });
					getDataFromServer();
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					//todo: 獲取資料出錯處理
					getDataFromServer();
				}
			});
		} else {
			setTimeout(getDataFromServer,3000);
		}
    })();
});
function getDevInfo(addr, devsInfo) {
    for (var i in devsInfo)
    {
        if(addr == devsInfo[i].addr)
        {
            return devsInfo[i];
        }
    }
    return false;
}
function getLineInfo(name, linesInfo) {
	for (var i in linesInfo)
	{
		if(name == linesInfo[i].line)
		{
			return linesInfo[i];
		}
	}
    return false;
}


function __getDateTime(UnixTime){			//從UnixTime獲取日期時間字符串
	var now = new Date(UnixTime*1000);
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
	return clock;
}

function shake(ele){       //指定元素閃爍效果,需要設置好CSS
//        var i = 0,t= false ,o =ele.attr("class")+" ",c ="",times=times||2;
		var t = false;
		var i = 0;
        var oldColor = ele.css('border-color');
        var newColor = "#fff";
         if(t) return;
         t = setInterval(function(){
             i++;
			 ele.css('border-color',newColor);
             if(i%2 == 0){
                 clearInterval(t);
                 ele.css('border-color',oldColor);
             }
         },200);
 };