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
$now = time();
$maxDevForLine = 16;	//每行顯示的最大數量
$html = null;
//******************************自定義函數*************************
function chkTwoLines($str,$encoding="utf8")		//檢查字符串是否需要顯示兩行
{
    return strlen($str) > 10;

}
//獲取當前樓層信息
$allLines = $conn->getAllRow("select line,model,Line_Sta,lastUpdateUnixTime from linestatus where 
                                    factoryCode=(select code from factorycode where name='{$fac}') 
                                    and floorCode=(select code from floorcode where name='{$flo}') order  by line");
if($allLines & count($allLines) >= 1)
{
    $html .= "<table id='resTab'>";
    foreach ($allLines as $line)
    {
        //獲取線體信息
        $lineInfo = $conn->getAllRow("select station_name,Dev_addr,Dev_sta,LastUpdateUnixTime from devlst where 
                                        factoryCode=(select code from factorycode where name='{$fac}') 
                                        and floorCode=(select code from floorcode where name='{$flo}')
                                        and Line='{$line[0]}'");
        if($lineInfo & count($lineInfo) >= 1) {
            $html .= "<tr class='resTR' id='{$line[0]}' line='{$line[0]}' state='{$line[2]}' updatetime='{$line[3]}'><td class='lineTitle'>{$line[0]}</td><td class='lineTitle'>{$line[1]}</td><td>";
            foreach ($lineInfo as $devInfo) {
                if(chkTwoLines($devInfo[0])) {
                    $html .= "<div class='devInfo' style='line-height: 20px;' line='{$line[0]}' addr='{$devInfo[1]}' updatetime='{$devInfo[3]}' state='999'>{$devInfo[0]}</div>";
                } else {
                    $html .= "<div class='devInfo' style='line-height: 40px;' line='{$line[0]}' addr='{$devInfo[1]}' updatetime='{$devInfo[3]}' state='999'>{$devInfo[0]}</div>";
                }
            }
            $html .= "</td></tr>";
        }
    }
    $html .= "</table>";
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
/*        線體和機種*/
        .lineTitle {
            font-size: 24px;
            padding: 0px 5px 0px;
        }
        /*整個結果表格*/
        #resTab {
            color: white;
            width: 100%;
            font-size: 12px;
            margin-top: 2px;
        }
        /*鼠標放上去整行的效果*/
        #resTab tr:hover {
            background-color: #333;
        }
        /*表格的單元格*/
        #resTab td{
            border-bottom: 1px solid #555;
        }
        /*報警器的小方塊*/
        #resTab td:nth-child(3) div {
            border-left: 1px solid #666;
            border-top: 1px solid #666;
            border-right: 3px solid #666;
            border-bottom: 3px solid #666;
            height: 40px;
            line-height: 40px;
            width: 70px;
            text-align: center;
            float: left;
            border-radius: 10%;
            padding: 2px 2px 2px;
            margin-right: 0.1rem;
            margin-top: 5px;
            display: inline-block;
            cursor: pointer;
            white-space:normal;
            word-break:break-all;
            overflow:hidden;
            font-weight: bolder;
        }
        /*報警器小方塊鼠標放上去的效果*/
        #resTab td:nth-child(3) div:hover {
            border-left: 3px solid #666;
            border-top: 3px solid #666;
            border-right: 1px solid #666;
            border-bottom: 1px solid #666;
        }
        /*線體和機種*/
        #resTab td:nth-child(1),#resTab td:nth-child(2) {
            border: 1px solid #666;
            border-radius: 10%;
            text-align: center;
            vertical-align: middle;
            font-size: 15px;
            font-weight: bolder;
            cursor: pointer;
        }
        /*線體*/
        #resTab td:nth-child(1)
        {
            padding: 0px 1em 0px;
        }
        /*機種*/
        #resTab td:nth-child(2){
            padding: 0px 0.5em 0px;
        }
        /*報警器*/
        #resTab td:nth-child(3){
            padding-left: 5px;
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