<?php
/**
 * Created by PhpStorm.
 * User: Ping_yi
 * Date: 2019/6/25
 * Time: 9:41
 */

class MysqlConn
{
    public $conn;       //數據庫連接
    private $host;
    private $uid;
    private $pwd;
    private $db;

    private $lastSql;    //最後運行的SQL, for Debug
    private $lastErr;    //最後的錯誤內容, for Debug
    private $lastErrNo;  //最後出錯的錯誤代碼 for debug
    private $result;     //執行的結果

    /**
     * 初始化類, 四個參數都有的時候自動進行初始化.
     * @param bool $host
     * @param bool $uid
     * @param bool $pwd
     * @param bool $db
     */
    public function __construct($host=false, $uid=false, $pwd=false, $db=false )
    {
        if($host != false &&
            $uid != false &&
            $pwd != false &&
            $db  != false
        )
        {
            $this->host = $host;
            $this->uid = $uid;
            $this->pwd = $pwd;
            $this->db = $db;
            $this->conn = new mysqli($this->host,$this->uid,$this->pwd,$this->db);
            if(!$this->conn) die("database connect error" . $this->conn->error);
            //$this->conn->set_charset('utf-8');
            $this->conn->query("SET NAMES 'UTF8'");
        }
    }

    /**
     * 初始化數據庫連接
     * @return mysqli
     */
    public function init()
    {
        $this->conn = new mysqli($this->host,$this->uid,$this->pwd,$this->db);
        $this->conn->query("SET NAMES 'UTF8'");

    }

    /**
     * 基本數據庫查詢
     * @param $sql
     * @return bool|mysqli_result
     */
    public function query($sql)
    {
        $this->lastSql = $sql;
        $this->result = $this->conn->query($sql);
        if(!$this->result)
        {
            $this->lastErr = $this->conn->error;
            $this->lastErrNo = $this->conn->errno;
        } else {
            $this->lastErr = $this->lastErrNo = null;
        }
        return $this->result;
    }

    /**
     * 返回符合條件的所有結果
     * @param $sql
     * @return bool
     */
    public function getAllRow($sql)
    {
        $row = $this->conn->query($sql);
        if($row && $row->num_rows >= 1)
        {
            return $row->fetch_all();
        } else {
            return false;
        }
    }

    /**
     * 返回符合條件的一列
     * @param $sql
     * @return array|bool
     */
    public function getLine($sql)
    {
        if($result = $this->getAllRow($sql))
        {
            $tmpArr = array();
            foreach ($result as $v)
            {
                array_push($tmpArr,$v[0]);
            }
            return $tmpArr;
        } else {
            return false;
        }
    }

    /**
     * 加入記錄
     * @param $opType
     * @param $act
     * @param $uid
     * @param $event
     * @return bool|mysqli_result
     */
    public function addEvent($opType, $act, $uid, $event)
    {
        global $clientAddr;
        $sql = "insert into events (optype, act, ip, user, timestr, event) value (
                '{$opType}',
                '{$act}',
                '{$clientAddr}',
                '{$uid}',
                now(),
                '{$event}')";
        return $this->conn->query($sql);
    }

    /**
     * 登錄動作
     * @param bool $uid
     * @param bool $pwd
     * @return bool
     */
    public function loginOut($uid=false, $pwd=false)
    {
        $op = "loginOut";
        $act = "login";
        $event = null;
        $result = false;

        $sql = "select * from users where usr='{$uid}' and pwd='{$pwd}'";
        $this->query($sql);

        if($this->result->num_rows != 0)
        {
            $this->query("update users set lastlogintime=now(), loginTimes=loginTimes+1 where usr='{$uid}'");
            $event = "login success";
            $result = true;
        } else {
            $event = "login failure";
            $result = false;
        }
        $this->addEvent($op,$act, $uid, $event);
        return $result;
    }

    /**
     * 獲取錯誤內容
     * @return mixed
     */
    public function getLastErr()
    {
        return $this->lastErr;
    }

    /**
     * 獲取錯誤代碼
     * @return mixed
     */
    public function getLastErrNo()
    {
        return $this->lastErrNo;
    }

    /**
     * 獲取最後執行的SQL語句內容
     * @return mixed
     */
    public function getLastSql()
    {
        return $this->lastSql;
    }





}