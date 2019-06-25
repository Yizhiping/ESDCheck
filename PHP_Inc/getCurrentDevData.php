<?php
mb_http_input("utf-8");
mb_http_output("utf-8");
header("Content-Type: text/html; charset=utf-8");
date_default_timezone_set('Asia/Shanghai'); 
set_time_limit(0);

include_once('db_open.php');
include_once('func.php');

$mysqli = new MySQLi();
$mysqli->connect($db_host,$db_user,$db_pwd,$db_dbName);
$mysqli->set_Charset('UTF-8');
$mysqli->select_db($db_dbName);
$mysqli->query("SET NAMES 'utf8'");


$factory = __get('factory');
$floor	 = __get('floor');
$lastUpdateTime = __get('lastRequetTime');

$arrTime = array('rqt'=>null, 'rst'=>null);		//請求時間,回復時間
$jsonArr = array('st' => null,'da' => null, 'ti'=>$arrTime );	//狀態,數據,時間
$dataArr = array('offLines'=>null, 'onLines'=>null, 'devIDs'=>null, 'devSta'=>null,'lut'=>null);	//關閉的線,開著的線,開著的ID,開著的狀態
$arrOffLines = array();
$arrOnLines  = array();
$arrIDs		 = array();
$arrSta		 = array();
$arrLut		 = array();
$sqlLine = "select line,line_sta from linestatus where factory='{$factory}' and floor='{$floor}'";
// print($sqlLine);
$resLine = $mysqli->query($sqlLine);
$i = 0;
$j = 0;
while($resLine && $rowLine = $resLine->fetch_array()){
	if($rowLine['line_sta']==1){
		$arrOnLines[$i] = str_replace('/', '',$rowLine['line']);
		$resDev = $mysqli->query("select id,dev_sta,line,dev_addr,LastUpdateUnixTime from devlst where factory='{$factory}' and floor='{$floor}' and line='{$rowLine['line']}'");
		$tmpids = array();	//臨時數據,裝id
		$tmpsta = array();	//臨時數據,裝sta
		$tmplut = array();  //臨時數據,lut
		$k = 0;
		while ($rowDev = $resDev->fetch_array()) {
			$tmpsta[$k] = (int)$rowDev['dev_sta'];
			$tmpids[$k] = str_replace('/', '', $rowDev['line']) . $rowDev['dev_addr'];
			$tmplut[$k] = (int)$rowDev['LastUpdateUnixTime'];
			$k++;
		}
		$arrIDs[$i] = $tmpids;
		$arrSta[$i] = $tmpsta;
		$arrLut[$i] = $tmplut;
		$i++;
		$resDev->free();
	} else {
		$arrOffLines[$j] = str_replace('/', '',$rowLine['line']);
		$j++;
	}
}
$resLine->free();
include_once('db_close.php');

$dataArr['offLines'] = $arrOffLines;
$dataArr['onLines']  = $arrOnLines;
$dataArr['devIDs']   = $arrIDs;
$dataArr['devSta']   = $arrSta;
$dataArr['lut']		 = $arrLut;

$arrTime['rqt'] = (int)$lastUpdateTime;
$arrTime['rst'] = (int)time();

$jsonArr['st'] = 1;
$jsonArr['da'] = $dataArr;
$jsonArr['ti'] = $arrTime;


sleep(5);
print json_encode($jsonArr);


?>