<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body{
 background:url(static/images/login_bg.jpg);
 background-size: 100% 100%;
}
*{
 margin: 0;
 padding: 0;
 box-sizing: border-box;
 
}
#container{
   height:100vh;
   backgroud-size:cover;
   background-position:center;
}
#container:after{
  position:absolute;
  content:'';
  top:0;
  left:0;
  height:100%;
  width:100%;
  background:rgba(0,0,0,0.2);
    
}
#content{
  position:absolute;
  top:50%;
  left:74%;
  transform:translate(-50%,-50%);
  text-align:center;
  z-index:999;
  width:350px;
  padding:60px 32px;
  box-shadow:-1px 4px 28px 0px rgba(0,0,0,75)  
}
#content,header{
   color:black;
   font-size:30px;
   font-weight:600;
   margin:0 0 35px 0;
   font-family:"Montserrat",sans-serif;
}
.filed{
    position:relative;
    hegiht:200px;
    width:100%;
    display:flex;
    background:rgba(255,255,255,1);
}
.filed input{
    heigth:100%;
    width:100%;
    background:transparent;
    border:none;
    outline:none;
    color:#222;
    font-size:18px;
    padding-top:10px;
    padding-bottom:10px;
    font-family:'Poppins',sans-serif;
}
.space{
  margin-top:16px;
  
}
.pass{
 text-align:right;
 margin:10px 0;
}
.pass a{
   color:black;
   font-family:'Poppins',sans-serif;
   text-decoration:none;
   font-size:20px;
}
.pass:hover a{
 text-decorate:underline;
}
</style>
<title>登录失败页面</title>
 <%
        pageContext.setAttribute("APP_PATH",request.getContextPath());
%>

<!-- 引入jquery -->
<script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.4.1.min.js"></script>

<!-- 引入样式 -->
    <link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div id="container">
	<!-- 时间 -->
	<div class="col-md-4" style="top:100px;font-size:30px">
	<span class="label label-warning">
		<span class="glyphicon glyphicon-time" aria-hidden="true">
		<span id="time"><script type="text/javascript"> showTime();</script></span>
		</span>
	</span>
	</div>
	<!-- 欢迎信息 -->
 	<div class="col-md-8 col-md-offset-1" style="top:180px">
 		<em><h1 style="font-size:90px">Welcome To</h1></em>
 	</div>
 	<div class="col-md-8 col-md-offset-2" style="top:180px">
 		<em><h1 style="font-size:90px">SSM-MALL</h1>></em>
	</div>
	<!-- 登录失败信息 -->
    <div id="content">
        <p>id或密码<font color="red">错误</font></p>
        <p>请重新登录</p>
       	<%response.setHeader("refresh","3;URL=login.jsp");%>
    </div>
</div>
<script type="text/javascript">
//显示实时时间
function showTime(){
  	var time = new Date();
	nowTime = time.getFullYear()+"-"+(time.getMonth()+1)+"-"+time.getDate()+" "+time.getHours()+":"+time.getMinutes()+":"+time.getSeconds();
    document.getElementById("time").innerHTML = nowTime; 
    }
    setInterval("showTime()",1000);
</script>
</body>
</html>