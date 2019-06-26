<?php
//*****************************環境設置*****************************
mb_http_input("utf-8");
mb_http_output("utf-8");
header("Content-Type: text/html; charset=utf-8");
date_default_timezone_set('Asia/Shanghai'); 
set_time_limit(0);

//*****************************文件引用*****************************
include_once("conf.php");
include_once("func.php");
include_once("MysqlConn.php");

//*****************************數據庫連接***************************
$conn = new MysqlConn($db_host, $db_uid, $db_pwd, $db_name);

//*****************************參數設定*****************************
$devMaxDelay = 300;         //報警器數據最大有效時間,單位秒, 超過此時間視為超時.

//*****************************獲取表單變量*************************
$fac = __get('factory');
$flo = __get('floor');

//******************************定義數據結構*************************
$jsonArr = array('st'=>1, 'dat'=>null, 'updateTime'=>null);      //Json數據體結構, 狀態|數據|更新時間
$lineArr = array('line'=>null,'st'=>null, 'dat'=>null, 'updateTime'=>null);      //線體數據結構, 線體名|狀態|數據|更新時間
$devArr  = array('addr'=>null,'st'=>null, 'updateTime'=>null);      //站位數據結構, 地址|狀態|更新時間
$lineData = array();    //所有線的數據
$devData = array();     //所有報警的數據
//*******************************操作主體****************************

if(empty($fac) || empty($flo))
{
    $jsonArr['st'] = 0;
} else {
    //獲取所有線的信息
    $allLines = $conn->getAllRow("select line,Line_Sta,lastUpdateUnixTime from linestatus where 
                                    factoryCode=(select code from factoryCode where name='{$fac}') 
                                    and floorCode=(select code from floorCode where name='{$flo}') order  by line");

    if ($allLines & count($allLines) >= 1) {         //確認一下有信息
        foreach ($allLines as $line) {
            $lineArr['line'] = $line[0];    //line
            $lineArr['updateTime'] = $line[2];  //updateTime
            if ($line[1] != 1 || (time() - (int)$line[2]) > $devMaxDelay)                       //如果線體狀態不為1, 就是不開線, 直接返回空數據, 標記該條線停線.
            {                                                                                   //或者最後更新的時間已超時, 視為斷線.
                $lineArr['st'] = 0;           //state
                $lineArr['dat'] = null;        //data
            } else {
                $lineArr['st'] = 1;           //state
                //獲取所有報警器信息
                $lineInfo = $conn->getAllRow("select Dev_addr,Dev_sta,LastUpdateUnixTime from devlst where 
                                            factoryCode=(select code from factoryCode where name='{$fac}') 
                                            and floorCode=(select code from floorCode where name='{$flo}')
                                            and Line='{$line[0]}'");

                if ($lineInfo & count($lineInfo) >= 1)       //判斷有無報警器信息
                {
                    $devData = array();     //初始化報警器數據
                    foreach ($lineInfo as $devInfo) {
                        $devArr['st'] = (time() - (int)$devInfo[2]) > $devMaxDelay ? 0 : $devInfo[1];
                        $devArr['addr'] = $devInfo[0];
                        $devArr['updateTime'] = $devInfo[2];
                        array_push($devData, $devArr);
                    }
                    $lineArr['dat'] = $devData;
                } else {
                    $lineArr['st'] = 0;
                }
            }
            array_push($lineData, $lineArr);        //把線數據匯總
        }
    } else {
        $jsonArr['st'] = 0;
    }
}
$jsonArr['dat'] = $lineData;
$jsonArr['updateTime'] = time();
sleep(1);
print json_encode($jsonArr);
