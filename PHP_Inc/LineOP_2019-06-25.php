<?php
/**
 * Created by PhpStorm.
 * User: Ping_yi
 * Date: 2019/6/25
 * Time: 12:58
 */

//*****************************表單變量******************************
$line 	= __get('Line');
$flo	= trim(__get('Floor'));
$fac    = trim(__get('Factory'));
$lineStat = __get('Line_Stat');
$lineStat = !empty($lineStat) ? $lineStat : '0';
$lineData = __get('Line_Data');
$model = __get('Model');
$now = time();

//*****************************子路由**********************************
switch ($act)
{
    /**
     * 獲取指定線體的所有訊息
     * 格式, addr | name
     */
    case 'Get':
        $sql = "select dev_addr, station_name from devlst where factoryCode='{$fac}' and floorCode='{$flo}' and line='{$line}' order by idx asc";
        $result = $conn->getAllRow($sql);
        if(!$result)    //無結果
        {
            __printResultNoRecord(0,null);
        } else {
            $tmpStr = null;
            foreach ($result as $r)
            {
                $tmpStr .= $r[0] . chr(127) . $r[1] . chr(13);
            }
            __printResultNoRecord(1,$tmpStr);
        }
        break;
    /**
     * 多重更新, 數據格式 addr| state,addr| state,addr| state
     */
    case 'MultiUpdate':
        $sql = null;
        $err = false;
        //更新報警器狀態
        $lineDataArr = explode(',',$lineData);
        if (count($lineDataArr) >= 1) {
            foreach ($lineDataArr as $v) {
                $tmpArr = explode('|', $v);
                if (count($tmpArr) == 2) $sql .= " when {$tmpArr[0]} then {$tmpArr[1]}";
            }

            if ($sql != null) {
                $sql = "update devlst set Dev_Sta=case Dev_Addr" . $sql . " end where factoryCode='{$fac}' and floorCode='{$flo}' and line='{$line}'";
                if(!$conn->query($sql)) {
                    $err = true;
                }
            }
        }

        // 更新線體狀態
        if($err ==  false) {
            if ($conn->query("update linestatus set Line_Sta='{$lineStat}',LastUpdateTime=now(),LastUpdateUnixTime={$now} where factoryCode='{$fac}' and floorCode='{$flo}' and Line='{$line}'")) {
                __printResultNoRecord(1,'Update success');
            } else {
                __printResultNoRecord(1,'Update fail');
            }
        }

        break;
    /**
     * 更新
     */
    case 'Update':
        break;
    case 'Add':
        break;
    /**
     * 多重添加數據, 數據格式 addr|name,addr|name
     */
    case 'MultiAdd':
        $err = false;
        //第一步, 刪除原有數據
        $conn->query("delete from devlst where factoryCode='{$fac}' and floorCode='{$flo}' and Line='{$line}'");
        $conn->query("delete from linestatus where factoryCode='{$fac}' and floorCode='{$flo}' and Line='{$line}'");


        //第二部, 添加數據
        /*添加報警器數據*/
        $lineDataArr = explode(',',$lineData);
        if(count($lineDataArr) >= 1)
        {
            $tmpSqlArr = array();
            $idx = 1;
            foreach ($lineDataArr as $v)
            {
                $tmpArr = explode('|',$v);
                array_push($tmpSqlArr,"('{$fac}','{$flo}','{$line}',{$idx},'{$tmpArr[1]}',{$tmpArr[0]})");
                $idx++;
            }

            if(count($tmpSqlArr) >= 1)
            {
                $sql = "insert into devlst (factoryCode, floorCode, Line, idx, Station_Name, Dev_Addr) values " . implode(',',$tmpSqlArr);
                if(!$conn->query($sql)) $err = true;
            }
        }

        /*添加產線數據*/
        $sql = "insert into linestatus (factoryCode, floorCode, Line, Model, Line_Sta) value ('{$fac}','{$flo}','{$line}','{$model}',0)";
        if(!$conn->query($sql)) $err=true;

        if($err)
        {
            __printResultNoRecord(0,'insert data fail');
        } else {
            __printResultNoRecord(1,"insert data success");
        }

        break;
    case 'Delete':
        break;
    case 'SaveSetting':
        break;
    case 'GetSetting':
        break;
}
