
<?php
header("Content-Type: text/html;charset=utf-8");
//建立连接
$conn = mysqli_connect('localhost','root','200217');
if($conn){
    //数据库连接成功
    $select = mysqli_select_db($conn,"uiue");		//选择数据库
    if($select){
        //数据库选择成功
        if(isset($_POST["subl"])){

            $user = $_POST["username"];
            $pass = $_POST["password"];
            if($user == ""||$pass == ""){
                //用户名or密码为空
                //弹窗提示信息并返回登陆页面
                echo"<script type="."\""."text/javascript"."\"".">"."window.alert"."("."\""."用户名或密码不能为空！"."\"".")".";"."</script>";
                echo"<script type="."\""."text/javascript"."\"".">"."window.location="."\""."login.html"."\""."</script>";
                exit;
            }
            //sql语句
            $sql_select = "select id,pwd from user where id = '$user' and pwd = '$pass'";
            //设置编码
            mysqli_query($conn,'SET NAMES UTF8');
            //执行sql语句
            $ret = mysqli_query($conn,$sql_select);
            $row = mysqli_fetch_array($ret);

            //用户密码正确
            if($user == $row['id']&&$pass == $row['pwd']){
                //跳转登陆成功页面
                header("Location:loginsucc.php");
            }else{
                //跳转登陆失败页面
                header("Location:loginfal.php");
            }
        }
    }
    //关闭数据库
    mysqli_close($conn);
}else{
    //连接错误处理
    die('Could not connect:'.mysqli_error());
}

?>