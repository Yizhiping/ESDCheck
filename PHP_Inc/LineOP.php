<?php

$line 	= __get('Line');
$floor	= trim(__get('Floor'));
$factory= trim(__get('Factory'));
$lineStat = __get('Line_Stat');
$lineStat = !empty($lineStat) ? $lineStat : '0';
$lineData = __get('Line_Data');
$modelName = __get('Model');
$unixTime = time();

var_dump(empty($lineStat));

switch ($act) {
	case 'Get':
		if (!empty($line)) {
			$fields = array('id','factory','floor','Line','idx','Station_Name','Dev_Addr','Dev_Sta','Enable','remark','lastupdatetime');
			$result = null;
			$sql = "select * from devlst where line='{$line}' and factory='{$factory}' and floor='{$floor}' order by idx asc";
			$res = $mysqli->query($sql);
			if ($res && $res->num_rows>=1) {
				foreach ($fields as $key => $value) {
					$result .= $value . chr(127);
				}
				$result .= chr(13);

				while ($row = $res->fetch_array()) {
					$result .= $row[0] . chr(127);
					$result .= $row[1] . chr(127);
					$result .= $row[2] . chr(127);
					$result .= $row[3] . chr(127);
					$result .= $row[4] . chr(127);
					$result .= $row[5] . chr(127);
					$result .= $row[6] . chr(127);
					$result .= $row[7] . chr(127);
					$result .= $row[8] . chr(127);
					$result .= $row[9] . chr(127);
					$result .= $row[10] . chr(13);
				}

				__printResultNoRecord(1,$result,'Success');
				$res->free();

			} else {
				__printResultNoRecord(0,'NoResultFound','NoResultFound');
			}

		}
		break;
	case 'Update':
		$flag = 1;
		$lastUpdateUnixTime = time();
		if(!empty($lineData)){
			$devSta = explode('|', $lineData);
			$unixTime = time();
			foreach ($devSta as $v) {
				$tmp = explode(',', $v);
				$sql = "update devlst set LastUpdateUnixTime={$unixTime},Dev_Sta=". $tmp[1] . " where factory='{$factory}' and floor='{$floor}' and line='{$line}' and Dev_Addr={$tmp[0]}";
				if(!$mysqli->query($sql)) $flag = 2;
			}
			$sql_01 = "update linestatus set Line_Sta=1,lastUpdateUnixTime={$lastUpdateUnixTime} where factory='{$factory}' and floor='{$floor}' and line='{$line}'";
			if(!$mysqli->query($sql_01)) $flag = 3;	
		} else {
			$sql_01 = "update linestatus set Line_Sta=0,lastUpdateUnixTime={$lastUpdateUnixTime} where factory='{$factory}' and floor='{$floor}' and line='{$line}'";
			if(!$mysqli->query($sql_01)) $flag = 4;
		}
			

		if($flag == 1){
			__printResultNoRecord(1,'UpdateSuccess','UpdateSuccess');
		} else {
			__printResultNoRecord(0,'UpdateError','UpdateError');
		}

		break;
	case 'MultiUpdate':
		$lastUpdateUnixTime = time();
		$lineUpdated = false;

		$sql_LS = "update linestatus set Line_Sta={$lineStat} where factory='{$factory}' and floor='{$floor}' and line='{$line}'";
		
		if($mysqli->query($sql_LS)){
			$lineUpdated = true;
		}


		if(!empty($lineData) & $lineUpdated == true){
			$lineData = explode('|', $lineData);
			$addrs = explode(',', $lineData[0]);
			$statuses = explode(',', $lineData[1]);
			$subSql_St = "set Dev_Sta=case Dev_Addr ";
			$subSql_Ut = "set LastUpdateUnixTime=case Dev_Addr ";

			foreach ($addrs as $k => $v) {
				$subSql_St .= "when {$v} then {$statuses[$k]} ";
				$subSql_Ut .= "when {$v} then {$lastUpdateUnixTime} ";
			}
			$subSql_St .= ' end';
			$subSql_Ut .= ' end';


			$sqlST = "update devlst {$subSql_St} where Dev_Addr in ({$lineData[0]}) and factory='{$factory}' and floor='{$floor}' and line='{$line}'";
			$sqlUT = "update devlst {$subSql_Ut} where Dev_Addr in ({$lineData[0]}) and factory='{$factory}' and floor='{$floor}' and line='{$line}'";
			
			if($mysqli->query($sqlST) == true & $mysqli->query($sqlUT) == true){
				__printResultNoRecord(1,'UpdateSuccess','UpdateSuccess');
			} else {
				__printResultNoRecord(0,'UpdateDevError','UpdateError');
			}
		} else {
			if($lineUpdated != true ){
				__printResultNoRecord(0,'UpdateLineError','UpdateError');
			} else {
				__printResultNoRecord(1,'UpdateLineSuccess','UpdateError');
			}
		}



		break;
	case 'MultiAdd':
		$errFlag = false;
		$sql = "select 1 from linestatus where factory='{$factory}' and floor='{$floor}' and line='{$line}'";
		//print $sql;
		$tmpRes = $mysqli->query($sql);
		if($tmpRes->num_rows>=1){
			$sql = "update linestatus set Model='{$modelName}',LastUpdateUnixTime={$unixTime} where factory='{$factory}' and floor='{$floor}' and line='{$line}'";
			//print $sql;
			if(!$mysqli->query($sql)){
				$errFlag = true;
			}
		} else {
			$sql = "insert into linestatus (factory,floor,line,Model,Dev_sl,Line_Sta,LastUpdateUnixTime) values ('{$factory}','{$floor}','{$line}','{$modelName}',0,0,{$unixTime})";
			//print $sql;
			if($mysqli->query($sql) != true){
				$errFlag = true;
			}
		}
		
		$tmpRes->free();
		$lineData = str_replace('_', '+', $lineData);

		if(!$errFlag){
			$sql = "insert into devlst (factory,floor,line,idx,Station_Name,Dev_Addr,Dev_Sta,Enable) values ". base64_decode($lineData);
			//print $sql;
			if($mysqli->query($sql) == true){
				__printResultNoRecord(1,'insertSuccess','insertSuccess');
			} else {
				__printResultNoRecord(0,'insertError01' . $mysqli->error,'insertError');
			}
		} else {
			__printResultNoRecord(0,'insertError02'. $mysqli->error,'insertError');
		}

		break;
	case 'Delete':
		$flag = 1;
		$DevAddr = __get('DevAddr');
		if($DevAddr=='All'){
			$sql_01 = "delete from linestatus where factory='{$factory}' and floor='{$floor}' and line='{$line}'";
			$sql_02 = "delete from devlst where factory='{$factory}' and floor='{$floor}' and line='{$line}'";

			if(!$mysqli->query($sql_01)) $flag=0;
			if(!$mysqli->query($sql_02)) $flag=2;

		} else {
			$sql = "delete from devlst where factory='{$factory}' and floor='{$floor}' and line='{$line}' and Dev_Addr in ({$DevAddr})";
			if(!$mysqli->query($sql)) $flag=3;
		}

		if($flag==1){
			__printResultNoRecord(1,'DeleteDevSuccess','DeleteDevByLineSuccess');
		} else {
			__printResultNoRecord(0,'DeleteError','DeleteError');
		}

		break;
	case 'Add':
		$flag = 1;				//標誌位
		$devCount = 0;			//Dev數量
		$DatavalidTime = 0;		//失效時間
		$modelName = __get('Model');

		$unixTime = time();
		$tmpRes = $mysqli->query("select id from linestatus where factory='{$factory}' and floor='{$floor}' and line='{$line}'");
		if($tmpRes && $tmpRes->num_rows>=1){
			//有記錄, 什麼也不干
		} else {
			//無記錄, 添加
			$sql_01 = "insert into linestatus (factory,floor,line,Model,Dev_sl,Line_Sta,DatavalidTime) values ('{$factory}','{$floor}','{$line}','{$modelName}',{$devCount},{$lineStat},{$DatavalidTime})";
			if(!$mysqli->query($sql_01)) $flag=0;
		}
		$tmpRes->free();
		$devArr = explode(",", $lineData);
		$devArr[1] =   base64_decode(str_replace('_', '+', $devArr[1]));	//Http表單上傳+會被替換為空格, 故使用_替換+

		// print($devArr[1]);
		$lineData = implode(',', $devArr);

		$sql = "insert into devlst (factory,floor,line,idx,Station_Name,Dev_Addr,Dev_Sta,Enable,LastUpdateUnixTime) value " . "('{$factory}','{$floor}','{$line}'," . $lineData . ",{$unixTime})";

		if(!$mysqli->query($sql)) $flag=1;

		if($flag==1){
			__printResultNoRecord(1,'insertSuccess','insertSuccess');
		} else {
			__printResultNoRecord(0,'insertError','insertError');
		}

		
		break;	
	case 'SaveSetting' :
		$settingFile = __get('settingFile');
		$sql = "insert into settingFile (factory,floor,line,settingFile_Base64) value ('{$factory}','{$floor}','{$line}','{$settingFile}')";
		$mysqli->query("delete from settingFile where factory='{$factory}' and floor='{$floor}' and line='{$line}'");

		if($mysqli->query($sql)){
			__printResultNoRecord(1,'SaveAccessed');
		} else {
			__printResultNoRecord(0,'SaveError');
		}


		break;
	case 'GetSetting' :
		$sql = "select settingFile_Base64 from settingFile where factory='{$factory}' and floor='{$floor}' and line='{$line}'";
		print $sql;
		$res = $mysqli->query($sql);
		if($res && $res->num_rows>=1){
			$row = $res->fetch_array();
			__printResultNoRecord(1,$row['settingFile_Base64']);
		} else 
		{
			__printResultNoRecord(0,'NoResultFound');
		}
		$res->free();
		break;

	default:

		break;
}
?>