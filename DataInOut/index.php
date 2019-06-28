<?php
//***************************環境設置**************************
mb_http_input("GBK");
mb_http_output("GBK");
header("Content-Type: text/html; charset=GBK");
date_default_timezone_set('Asia/Shanghai');

//*********************類,庫引用******************************
include_once "../PHP_Inc/conf.php";
include_once('../PHP_Inc/MysqlConn.php');
include_once('../PHP_Inc/func.php');

//*********************靜態變量*********************************
define('NEWLINE', '<br />');

//*********************表單參數*********************************
$uid = __get("user");
$pwd = __get("pwd");
$opType = __get("optype");
$act = __get("Act");
$clientAddr = __getIP();

//*********************數據庫參數********************************
$conn = new MysqlConn($db_host, $db_uid, $db_pwd, $db_name);
if(!$conn) die("數據庫連接錯誤");
$conn->query("SET NAMES 'GBK'");

//********************路由開始***********************************
switch ($opType)
{
    case "Loginout":            //登錄系統
        if($conn->loginOut($uid,$pwd))
        {
            __printResultNoRecord(1,'login success');
        } else {
            __printResultNoRecord(0, "login failure");
        }
        break;

    case "DevOPByLine":         //操作
        include("../PHP_Inc/LineOP_2019-06-25.php");
        break;
}

