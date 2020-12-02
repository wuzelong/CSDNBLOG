<?php
error_reporting(0);
header("Content-Type: text/html;charset=utf-8");
//建立连接
$servername = "localhost";
$username = "root";
$password = "200217";

$conn = mysqli_connect($servername, $username, $password, 'uiue');
if($conn){
    //数据库连接成功
    $select = mysqli_select_db($conn,"uiue");		//选择数据库

    $user = $_POST["username"];
    $pass = $_POST["password"];

    mysqli_set_charset($conn,'utf8');	//设置编码
    //sql语句
    $sql_select = "select id from user where id = '$user'";
    //sql语句执行
    $result = mysqli_query($conn,$sql_select);
    //判断用户名是否已存在
    $num = mysqli_num_rows($result);
    if($num){
        //用户名已存在
        echo 200;
    }else{
        //用户名不存在
        $sql_insert = "insert into user(id,pwd) values('$user','$pass')";
        //插入数据
        $ret = mysqli_query($conn,$sql_insert);
        $row = mysqli_fetch_array($ret);
        echo 100;

    }
    //关闭数据库
    mysqli_close($conn);
}else{
    //连接错误处理
    die('Could not connect:'.mysqli_error($conn));
}
?>