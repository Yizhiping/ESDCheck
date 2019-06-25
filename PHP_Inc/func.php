<?php 
//include_once('../PHP_Inc/db_open.php');


// 函數名稱: __get
// 功    能: 從get/post/session變量中獲取對應的值, 如果不存在就返回null
// 輸入參數: $str 變量名稱
// 輸    出: 從變量中獲取的值, 未找到時返回NULL.
function __get($str){
	$val = NULL;
	$val = !empty($_GET[$str]) ? $_GET[$str] : $val;
	$val = empty($val) ? !empty($_POST[$str]) ? $_POST[$str] : null  : $val ;

	//$val = !empty($_POST[$str]) ? $_POST[$str] : $val;
	$val = !empty($_SESSION[$str]) ? $_SESSION[$str] : $val;
	return $val;

}

// 函數名稱: __getIP
// 功    能: 獲取遠端Client的IP地址
// 輸入參數: 無
// 輸    出: 遠端Client的IP地址, 無法獲取時返回Unknown.
function __getIP(){
	global $ip;
	if (getenv("HTTP_CLIENT_IP"))
		$ip = getenv("HTTP_CLIENT_IP");
	else if(getenv("HTTP_X_FORWARDED_FOR"))
		$ip = getenv("HTTP_X_FORWARDED_FOR");
	else if(getenv("REMOTE_ADDR"))
		$ip = getenv("REMOTE_ADDR");
	else $ip = "Unknow";
	return $ip;
}

/**
 * 按格式輸出結果, 供控制程式接口使用. 有記錄
 * @param $e_st
 * @param $e_re
 * @param $e_ev
 */
function __printResult($stateCode, $result, $event){
    global $conn;
    global $uid;
    global $act;
    global $opType;

    $conn->addEvent($opType, $act, $uid, $event);
	print "<DataBody><Status>{$stateCode}</Status>{$result}</DataBody>";

}


/**
 * 按格式輸出結果, 供控制程式接口使用. 無記錄
 * @param $e_st 狀態碼
 * @param $e_re 內容
 * @param null $e_ev
 */
function __printResultNoRecord($stateCode, $result){
	print "<DataBody><Status>{$stateCode}</Status>{$result}</DataBody>";
}
