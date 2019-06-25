<?php
mb_http_input("utf-8");
mb_http_output("utf-8");
header("Content-Type: text/html; charset=utf-8");
date_default_timezone_set('Asia/Shanghai'); 

include_once('MysqlConn.php');
include_once('func.php');

$factory = __get('factory');
$floor	 = __get('floor');

$maxDevForLine = 16;	//每行顯示的最大數量
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


?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style>
#div_DevMain{
	/*width: 2000px;*/
}
.div_DevLine {
	height: 42px;
	/*line-height: 40px;*/
	font-size: 12px;
	font-weight: bold;
	/*width: 2000px;*/
	/*overflow: scroll;*/
	margin-bottom: 2px;

	border-bottom:  1px #222 solid;
}
.div_DevLine div,span{
	float:left;
	display: inline;
	border-radius:5px;
	position:relative;
	z-index:2;
	background-color:blue;
	text-align:center;
	margin-right:2px;
	margin-bottom: 2px;
	border-bottom:3px solid #666;
	border-right:3px solid #666;
	}
.div_DevLine span{
	display: block;
	width: 70px;
	float: left;
	height:40px;
	line-height: 40px;
	word-wrap:break-word;
	word-break:break-all;


}
.div_LineName {
	width:50px;
	height: 40px;

	border-bottom: 2px solid #aaa;
	border-right: 2px solid #aaa;
	}

.div_ModelName {
	width: 80px;
	height: 40px;
	margin-right: 10px;
	border-bottom: 2px solid #aaa;
	border-right: 2px solid #aaa;
}

.div_Dev{
	width: 70px;
}

.twoLines_Title{
	height: 84px;
	line-height:84px;
}

.div_DevLine span:hover{
	border-top:3px solid #666;
	border-left:3px solid #666;
	border-bottom:none;
	border-right:none;
	color: #fff;
	cursor: pointer;
}
</style>
<title>无标题文档</title>
</head>

<body>
<div id="div_DevMain">
<?php
$mysqli = new MySQLi();
$mysqli->connect($db_host,$db_user,$db_pwd,$db_dbName);
$mysqli->set_Charset('UTF-8');
$mysqli->select_db($db_dbName);
$mysqli->query("SET NAMES 'utf8'");

$res_line = $mysqli->query("select line,model,line_sta,LastUpdateUnixTime from linestatus where factory='{$factory}' and floor='{$floor}' order by line");
if($res_line && $res_line->num_rows>=1){
$strLine = '';
$strDevs = '';
$twoLine = false;
	while($row_line = $res_line->fetch_array()){
		$strLine = '';
		$res_Devs = $mysqli->query("select * from devlst where factory='{$factory}' and floor='{$floor}' and line='{$row_line['line']}' order by idx");
		if($res_Devs && $res_Devs->num_rows>=1){
			$strDevs = '';
			$i = 0;
			$twoLine = false;

			while($row_Devs = $res_Devs->fetch_array()){
				$i++;
				$strStyle = chkTwoLines($row_Devs['Station_Name']) == true ? ' style="line-height:20px;' : '';
				$strStyle = $strStyle =='' ? ' style="' : $strStyle;
				$lineBackgroundColor = '#00CC00';
				

				if($row_line['line_sta']==1 || abs(time()-$row_line['LastUpdateUnixTime'])<600){	//線狀態不等於1或更新時間大於10分鐘,顯示為灰色
					if(abs(time()-$row_Devs['LastUpdateUnixTime'])<600){
						if ($row_Devs['Dev_Sta']==1) {
							$devBackgroundColor ='#00CC00';
						} elseif ($row_Devs['Dev_Sta']==2) {
							$devBackgroundColor ='#c66';
							$lineBackgroundColor='#c66';
						}else{
							$devBackgroundColor ='#c66';
							$lineBackgroundColor='#c66';
						}
					}else {
						$devBackgroundColor ='#999';
						$lineBackgroundColor='#999';
					}
				} else {
					$devBackgroundColor ='#999';
					$lineBackgroundColor='#999';
				}

				$strStyle .= ' background-color:' . $devBackgroundColor . '"';
				$line = str_replace('/', '', $row_line['line']);
				$tmpID = $line . $row_Devs['Dev_Addr'];
				$strDevs .= "<span{$strStyle} updatetime=\"{$row_Devs['LastUpdateUnixTime']}\" id=\"{$tmpID}\" line=\"{$line}\" devSta=\"{$row_Devs['Dev_Sta']}\">{$row_Devs['Station_Name']}</span>";
			}
			if($i>$maxDevForLine) $twoLine = true;
		}
		$res_Devs->free();


		$str_StyleTwoLineTitle = '';
		$lineHeight = 42;
		$str_StyleTwoLineTitle = $twoLine == true ? ' twoLines_Title' : '';
		$lineHeight = $twoLine == true ? 87 : $lineHeight;
		$lineName = $row_line['line'];

		$strLine="<div class=\"div_DevLine\" style=\"height:{$lineHeight}px;\">
				  <div line=\"{$line}\" sta=\"{$row_line['line_sta']}\" class=\"div_LineName{$str_StyleTwoLineTitle}\" style=\"line-height:{$lineHeight}px;background-color:{$lineBackgroundColor};\">{$lineName}</div>
	        	  <div line=\"{$line}\" class=\"div_ModelName{$str_StyleTwoLineTitle}\" style=\"line-height:{$lineHeight}px;background-color:{$lineBackgroundColor}; margin-right:10px;\">{$row_line['model']}</div>"
	        	  . $strDevs
	        	  . '</div>';

	    print $strLine;
	}
}

?>

</div>
</body>
</html>