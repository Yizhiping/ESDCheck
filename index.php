<?php
//***************************環境設置**************************
mb_http_input("utf-8");
mb_http_output("utf-8");
header("Content-Type: text/html; charset=utf-8");
date_default_timezone_set('Asia/Shanghai'); 

//****************************文件引用**************************
include_once "PHP_Inc/conf.php";
include_once "PHP_Inc/MysqlConn.php";
include_once('PHP_Inc/func.php');

//****************************數據庫連接***********************
$conn = new MysqlConn($db_host, $db_uid, $db_pwd, $db_name);

//****************************自定義函數***********************
function __getList($act){
    global $conn;

    if($act=='factory'){
        $sql = "select name from factoryCode order by name ";
    } else if($act=='floor') {
        $sql = "select name from floorcode order by name ";
    }
    $tmpstr = null;
    foreach($conn->getLine($sql) as $v){
        $tmpstr .= "<li>{$v}</li>" . chr(13);
    }

    return $tmpstr;
}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script type="text/javascript" src="js/mainPage.js"></script>
<link rel="stylesheet" type="text/css" href="PHP_Inc/main.css"/>
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<title>人員ESD接地實時監控看板</title>

</head>

<body>
	<div id="mainDiv">
		<div id="mainTitle">人員ESD接地實時監控看板</div>
		<div id="menu">
			<ul>
				<li id="sel_factory"><font>廠區 : -----</font> ▼
					<ul class="usr_select">
					<?php print __getList('factory')?>
					</ul>
				</li>
				<li id="sel_floor"><font>樓層 : -----</font> ▼
					<ul class="usr_select">
						<?php print __getList('floor')?>
					</ul>
				</li>
			</ul>
			<ul id="Demo" style="color:#fff; font-weight:bold; ">
				<li style="width:70px; height:25px;line-height: 25px; margin-left:30px;background-color:#0c0;border-radius:5px;">PASS</li>
				<li style="width:70px; height:25px;line-height: 25px; margin-left:5px;background-color:#c66;border-radius:5px;">FAIL</li>
				<li style="width:70px; height:25px;line-height: 25px; margin-left:5px;background-color:#999;border-radius:5px;">LineOFF</li>
			</ul>
			<div id="showTime"></div>
		</div>
		<div id="content">
            <img id="LoadingAnimation" src="Image/timg.gif"/>
        </div>
		<div id="footer">建議分辨率 1440*900, 使用Firefox,Chrome,或IE9以上瀏覽器以獲得最佳效果 | <a href="mailto:Ping_Yi">Contact us</a> | LastUpdate：2017/10/18 生技機構部-自動化課. All rights reserve</div>
	</div>
</body>
</html>