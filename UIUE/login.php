<?php
error_reporting(0);
header("Content-Type: text/html;charset=utf-8");
//建立连接

$conn = mysqli_connect('localhost','root','200217');
if($conn){
    //数据库连接成功
    $select = mysqli_select_db($conn,"uiue");		//选择数据库
    if($select){
        //数据库选择成功
        $user = $_POST["username"];
        $pass = $_POST["password"];
        //sql语句
        $sql_select = "select id,pwd from user where id = '$user' and pwd = '$pass'";
        //设置编码
        mysqli_query($conn,'SET NAMES UTF8');
        //执行sql语句
        $ret = mysqli_query($conn,$sql_select);
        $row = mysqli_fetch_array($ret);
        //用户密码正确
        if($row!=null&&$row!=null&&$user == $row['id']&&$pass == $row['pwd']){
            echo 100;
        }else{
            echo 200;
        }
    }
    //关闭数据库
    mysqli_close($conn);
}else{
    //连接错误处理
    die('Could not connect:'.mysqli_error());
}

?>