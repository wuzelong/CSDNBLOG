<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>登录页面</title>
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
	<!-- 用户注册的模态框 -->
	<div class="modal fade" id="userAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h4 class="modal-title" id="myModalLabel">用户注册</h4>
	            </div>
                <form class="form-horizontal">
	            <div class="modal-body">
	                    <div class="form-group">
	                        <label for="name_add_input"  class="col-sm-2 control-label">用户名</label>
	                        <div class="col-sm-10">
	                            <input type="text" class="form-control" name="name" id="name_add_input" placeholder="name">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="password_add_input"  class="col-sm-2 control-label">密码</label>
	                        <div class="col-sm-10">
	                            <input type="password" class="form-control" name="password" id="password_add_input" placeholder="password">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="password2_add_input"  class="col-sm-2 control-label">确认密码</label>
	                        <div class="col-sm-10">
	                            <input type="password" class="form-control" name="password2" id="password2_add_input" placeholder="password again">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
                        <label for="email_add_input" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="email" id="email_add_input" placeholder="xxxxxx@xxx.com">
                            <span class="help-block"></span>
                        </div>
                    </div>
	            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-primary" id="user_save_btn">注册</button>
		                <button type="reset" class="btn btn-reset">重置</button>
		                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		            </div>
	            </form>
	        </div>
	    </div>
	</div>
<!-- 搭建显示页面和登录表单 -->
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
 		<em><h1 style="font-size:90px">SSM-MALL</h1></em>
	</div>
	<!-- 登录表单 -->
    <div id="content">
        <header>SSM-MALL</header>
	    <form action="${APP_PATH}/SSM-MALL" method="post">
		    <div class = "filed">
		    <input type="text" id="user_login_name" name="uid" placeholder="请输入id"/>
		    </div>
		    <div class="filed space">
		    <input type="password" id="user_login_password" name="password" placeholder="请输入密码" />
		    </div>
		    <br>
		    <input type="button" id="user_register_btn" class="btn btn-success btn-lg" value="注册"/>
		    <input type="submit" class="btn btn-primary btn-lg" value="登录"/>
	    </form>
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

	//点击注册按钮弹出模态框
	$("#user_register_btn").click(function(){
		//console.log("into");
		//清除表单数据（表单重置）
        $("#userAddModal form")[0].reset();
        //弹出模态框
        $("#userAddModal").modal({
        	backdrop:"static"
		});
	});
	
	//显示校验提示
    function show_validate_msg(ele,status,msg){
        //首先清空当前元素
        $(ele).parent().removeClass("has-success has-error");
        $(ele).next("span").text("");
        if ("success" == status) {
            $(ele).parent().addClass("has-success");
            $(ele).next("span").text(msg);
        }else if ("error"==status) {
            $(ele).parent().addClass("has-error");
            $(ele).next("span").text(msg);
        }
	}
	//校验表单数据
	function validate_add_form(){
		var rtn=true;
		//1.拿到要校验的数据，使用jquery正则表达式
        var userName = $("#name_add_input").val();
        var regName = /(^[a-zA-Z0-9_-]{3,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
        if (!regName.test(userName)) {
            show_validate_msg("#name_add_input","error","×:用户名为2-5中文或3-16英文数字组合");
            rtn= false;
        }
        else {
            show_validate_msg("#name_add_input","success","√");
        }
        //2、校验邮箱信息
        var userEmail = $("#email_add_input").val();
        var regEmail = /^([a-zA-Z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/
        if (!regEmail.test(userEmail)) {
            show_validate_msg("#email_add_input","error","×:邮箱格式错误");
            rtn= false;
        }else{
            show_validate_msg("#email_add_input","success","√");
        }
        //3.密码校验（两次一样且不为空）
        var password1=$("#password_add_input").val();
        var password2=$("#password2_add_input").val();
       	if(password1==""){
       		show_validate_msg("#password_add_input","error","×:密码不能为空");
       		rtn= false;
       	}
       	else{
       		show_validate_msg("#password_add_input","success","√");
       	}
       	if(password2==""){
       		show_validate_msg("#password2_add_input","error","×:请再次输入密码");
       		rtn= false;
       	}
       	else if(password1!=password2){
       		show_validate_msg("#password2_add_input","error","×:输入的两次密码不相同");
       		rtn= false;
       	}
       	else{
       		show_validate_msg("#password2_add_input","success","√");
       	}
        return rtn;
    }

	
	//点击保存，注册用户
	$("#user_save_btn").click(function(){
		//1.前端校验表单数据
		if(!validate_add_form()){
			return false;
		}
		//2.发送ajax请求注册用户
		$.ajax({
			 url:"${APP_PATH}/user/",
	            type:"POST",
	            data:$("#userAddModal form").serialize(),//表单信息序列化
	            success:function (result) {
	            	if(result.code==100){//成功
	            		//请求获取用户uid
		                $.ajax({
		                	 url:"${APP_PATH}/users/",
		                     type:"POST",
		                     data:$("#name_add_input"),
		                     success:function (result){//json字符串
			                    	var uidNow=result.extend.userNow.uid;
					                $("#user_login_name").val(uidNow);//注册好后自动填充
					                alert("注册成功！\n您的uid是【"+uidNow+"】");  
		                     }
		                });
		                $("#userAddModal").modal('hide');//关闭模态框
	            	}
	            	 else{
	                	//console.log(result);
	                	//显示错误字段信息
	                	if(undefined!=result.extend.errorFields.name){
	                		show_validate_msg("#name_add_input","error","×:用户名为2-5中文或3-16英文数字组合");
	                	}
						if(undefined!=result.extend.errorFields.email){
							show_validate_msg("#email_add_input","error","×:邮箱格式错误");
	                	}
	                }
	            }
		});
	});
</script>
</body>
</html>