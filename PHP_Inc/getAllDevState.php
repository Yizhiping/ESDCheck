<?php
mb_http_input("utf-8");
mb_http_output("utf-8");
header("Content-Type: text/html; charset=utf-8");
date_default_timezone_set('Asia/Shanghai');

//****************************文件引用****************************
include_once("conf.php");
include_once('MysqlConn.php');
include_once('func.php');

//****************************連接數據庫*************************
$conn = new MysqlConn($db_host, $db_uid, $db_pwd, $db_name);

//****************************表單變量獲取************************
$fac = __get('factory');
$flo	 = __get('floor');

//*****************************環境變量***************************
$maxDevForLine = 16;	//每行顯示的最大數量
$html = null;

//******************************自定義函數*************************
function chkTwoLines($str,$encoding="utf8")		//檢查字符串是否需要顯示兩行
{

    if (($len = strlen($str)) == 0) {
        return false;
    }

    $encoding = strtolower($encoding);

    if ($encoding == "utf8" or $encoding == "utf-8") {
        $step = 3;
    } elseif ($encoding == "gbk" or $encoding == "gb2312") {
        $step = 2;
    } else {
        return false;
    }

    $total = 0;
    $hz	 = 0;

    for ($i=0; $i<$len; $i++) {
        $total++;
        //如果字节码大于127，则根据编码跳几个字节
        if (ord($str{$i}) >= 0x80) {
            $i = $i + $step - 1;//之所以减去1，因为for循环本身还要$i++
            $hz++;
        }
    }

    if($hz!=0){
        if($hz>4 || $total>=8) {
            return true;
        } else {
            return false;
        }
    } else {
        if($total>=10){
            return true;
        } else {
            return false;
        }
    }
}


//獲取當前樓層信息
$allLines = $conn->getAllRow("select line,model,Line_Sta,lastUpdateUnixTime from linestatus where 
                                    factoryCode=(select code from factorycode where name='{$fac}') 
                                    and floorCode=(select code from floorcode where name='{$flo}') order  by line");

foreach ($allLines as $line)
{
    $lineInfo = $conn->getAllRow("select station_name,Dev_addr,Dev_sta,LastUpdateUnixTime from devlst where 
                                    factoryCode=(select code from factorycode where name='{$fac}') 
                                    and floorCode=(select code from floorcode where name='{$flo}')
                                    and Line='{$line[0]}'");
    $html .= "<div class='lineBox' line='{$line[0]}' state='{$line[2]}' lastupdatetime='{$line[3]}'>";
    $html .= "<div class='lineName'>{$line[0]}</div>";
    $html .= "<div class='modelName'>{$line[1]}</div>";
    $html .= "<div class='devBox'>";
    foreach ($lineInfo as $devInfo)
    {
        $html .= "<div class='devInfo'>{$devInfo[0]}</div>";
    }
    $html .= "</div></div>";
}





?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
        .lineBox {
            color: white;
            margin-bottom: 5px;
            padding: 2px 0px 2px;
            background-color: #333;
        }

        .lineBox div {
            height: 40px;
            word-wrap:break-word;
            text-align: center;
            border: 1px solid #222;
            display: inline-block;
            border-radius: 10%;

        }

        .lineName {
            width: 50px;
        }

        .devInfo {
            width: 80px;
            font-size: 14px;
        }

        .modelName {
            width: 80px;
            margin-right: 10px;
        }
    </style>
    <title>无标题文档</title>
</head>

<body>
<div id="div_DevMain">
    <?php echo $html ?>
</div>
</body>
</html>