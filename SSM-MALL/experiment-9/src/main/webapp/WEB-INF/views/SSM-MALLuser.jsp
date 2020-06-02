<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body{
 background:url(static/images/SSM_bg.jpg);
 background-size: 100% 100%;
}
</style>
<title>SSM-MALL</title>
 <%
        pageContext.setAttribute("APP_PATH",request.getContextPath());
 		int suid=Integer.parseInt(session.getAttribute("logined").toString());
%>

<!-- 引入jquery -->
<script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.4.1.min.js"></script>

<!-- 引入样式 -->
    <link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 用户信息修改模态框 -->
	<div class="modal fade" id="userUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h4 class="modal-title" id="myModalLabel">修改资料</h4>
	            </div>
                <form class="form-horizontal">
	            <div class="modal-body">
	            <div class="form-group">
	                        <label for="name_update_input"  class="col-sm-2 control-label">ID</label>
	                        <div class="col-sm-10">
	                            <input type="text" readonly="readonly" class="form-control" name="uid" id="uid_update_input">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="name_update_input"  class="col-sm-2 control-label">用户名</label>
	                        <div class="col-sm-10">
	                            <input type="text" class="form-control" name="name" id="name_update_input" placeholder="name">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="password_update_input"  class="col-sm-2 control-label">密码</label>
	                        <div class="col-sm-10">
	                            <input type="password" class="form-control" name="password" id="password_update_input" placeholder="password">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="password2_update_input"  class="col-sm-2 control-label">确认密码</label>
	                        <div class="col-sm-10">
	                            <input type="password" class="form-control" name="password2" id="password2_update_input" placeholder="password again">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
                        <label for="email_update_input" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="email" id="email_update_input" placeholder="xxxxxx@xxx.com">
                            <span class="help-block"></span>
                        </div>
                    </div>
	            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-primary" id="user_update_btn">修改</button>
		                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		            </div>
	            </form>
	        </div>
	    </div>
	</div>
<!-- 商品详情的模态框 -->
	<div class="modal fade" id="proShowModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h4 class="modal-title">商品详情</h4>
	            </div>
                <form class="form-horizontal">
	            <div class="modal-body">
	            <div class="form-group">
                        <label for="pid_show_input"  class="col-sm-2 control-label">商品id</label>
                        <div class="col-sm-10">
                            <input type="text" readonly="readonly" class="form-control" name="pid" id="pid_show_input" placeholder="id">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name_show_input"  class="col-sm-2 control-label">商品名</label>
                        <div class="col-sm-10">
                            <input type="text" readonly="readonly" class="form-control" name="name" id="name_show_input" placeholder="name">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="brand_show_input" class="col-sm-2 control-label">品牌</label>
                        <div class="col-sm-10">
                            <input type="text" readonly="readonly" class="form-control" name="brand" id="brand_show_input" placeholder="brand">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="model_show_input"  class="col-sm-2 control-label">型号</label>
                        <div class="col-sm-10">
                            <input type="text" readonly="readonly" class="form-control" name="model" id="model_show_input" placeholder="model">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="price_show_input"  class="col-sm-2 control-label">价格</label>
                        <div class="col-sm-10">
                            <input type="text" readonly="readonly" class="form-control" name="price" id="price_show_input" placeholder="price">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="introduction_show_input"  class="col-sm-2 control-label">介绍</label>
                        <div class="col-sm-10">
                            <textarea cols="35" readonly="readonly" class="form-control" name="introduction" id="introduction_show_input" placeholder="introduction"></textarea>
                            <span class="help-block"></span>
                        </div>
                    </div>
	            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		            </div>
	            </form>
	        </div>
	    </div>
	</div>
<!-- 写留言模态框 -->
	<div class="modal fade" id="messageNewModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h4 class="modal-title" id="myModalLabel">写留言</h4>
	            </div>
                <form class="form-horizontal">
	            <div class="modal-body">
	            	<div class="form-group">
                        <label for="title_save_input"  class="col-sm-2 control-label">标题：</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="title" id="title_save_input" placeholder="title">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="message_save_input"  class="col-sm-2 control-label">留言：</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" name="content" id="message_save_input" placeholder="content"></textarea>
                            <span class="help-block"></span>
                        </div>
                    </div>   
	            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-primary" id="message_save_btn">保存</button>
		                <button type="reset" class="btn btn-reset">重置</button>
		                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		            </div>
		            <input type="hidden" name="uid" id="uid_save_input">
	           		<input type="hidden" name="pid" id="pid_save_input">
	            </form>
	        </div>
	    </div>
	</div>
<!-- 写回复模态框 -->
	<div class="modal fade" id="revertNewModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h4 class="modal-title" id="myModalLabel">写回复</h4>
	            </div>
                <form class="form-horizontal">
	            <div class="modal-body">
                    <div class="form-group">
                        <label for="revert_save_input"  class="col-sm-2 control-label">回复：</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" name="content" id="revert_save_input" placeholder="content"></textarea>
                            <span class="help-block"></span>
                        </div>
                    </div>   
	            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-primary" id="revert_save_btn">回复</button>
		                <button type="reset" class="btn btn-reset">重置</button>
		                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		            </div>
		            <input type="hidden" name="uid" id="uid_revert_input">
	           		<input type="hidden" name="mid" id="mid_revert_input">
	            </form>
	        </div>
	    </div>
	</div>
<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题行 -->
		<div class="page-header">
		  <h1>SSM-MALL <em><small id="page-header_small"> welcome </small></em></h1>
		</div>
		<!-- 导航 -->
		<ul class="nav nav-pills nav-justified "style="font-size:20px">
		  <li role="presentation"><a id="pros_show_all_a">
		  	<span class="glyphicon glyphicon-home" aria-hidden="true">主页
		  	</span></a></li>
		  <li role="presentation"><a id="message_a">
		  	<span class="glyphicon glyphicon-comment" aria-hidden="true">讨论区
		  	</span></a></li>
		  <li role="presentation"><a id="admin_email_a">
		  <span class="glyphicon glyphicon-earphone" aria-hidden="true">联系我们
		  	</span></a></li>
		  <li role="presentation" class="dropdown">
		    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
		      	<span class="glyphicon glyphicon-user" aria-hidden="true">
		      	个人中心 <span class="caret"></span></span>
		    </a>
		    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1"style="font-size:17px">
		    <li><a id="user_profile_a">修改资料<br></a></li>
		    <li><a id="user_message_a">我的留言<br></a></li>
		    <li role="separator" class="divider"></li>
		    <li><a id="user_logout_a">注销<br></a></li>
		  </ul>
		  </li>
		<!-- 搜索栏 -->
		  <li role="presentation">
			  <div class="col-md-12">
		      <div class="input-group">
		        <input type="text" id="pro_search_test" class="form-control" placeholder="Search for products">
		          <span class="input-group-btn">
		            <button class="btn btn-success btn-lg" type="button" id="pro_search_btn">
		            <span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
		          </span>
		        </div>
		      </div>
	      </li>		
		</ul>
	<br>
	<!-- 数据显示 -->
	<div id="content">	
		<!-- 请求数据并加载显示 -->
		<h2>数据加载中，请稍候...</h2>
		
	</div>
	<br>	
	<!-- 分页 -->
	<div class="row">
		<!-- 分页文字信息 -->
		<div class="col-md-6" id="page_info_area"></div>
		<!-- 分页条信息 -->
		<div class="col-md-6" id="page_nav_area">
			
		</div>
	</div>
</div>
<script type="text/javascript">
	var pageId=0;//给什么信息分页
	var pageMid;//回复的留言mid
	var pageUid;//查询用户uid
	var totalRecord;//总页数，操作后去到最后一页
	//1.页面加载完成以后，发送一个ajax请求，得到分页数据
	$(function () {
	    //欢迎+用户名
	    var uid=<%=suid%>
	    $.ajax({
        	url:"${APP_PATH}/user/"+uid,
            type:"GET",
            success:function (result) {
                var userData = result.extend.user;
                $("#page-header_small").append(userData.name);
            }
        });
	    //第一次去首页
	    pageId=0;
	    to_page(1);
	});
	
	//点击显示全部按钮->到所有商品第一页
	$("#pros_show_all_a").click(function (){
		pageId=0;
		to_page(1);
	});
	
	function to_page(pn) {
        $.ajax({
            url:"${APP_PATH}/pros_user/",
            data:"pn="+pn,
            type:"GET",
            success:function (result) {
                //1、解析并显示商品信息
                build_pros_table(result);
                //2、解析并显示分页信息
                build_page_info(result);
                //3、解析显示分页条
                build_page_nav(result);
            }
        });
    }
	//点击查找按钮->跳到查找结果第一页
    $("#pro_search_btn").click(function () {
    	pageId=1;
    	to_searchPage(1,true);
    });
    
    function to_searchPage(pn,tag) {
    	$.ajax({
            url:"${APP_PATH}/pros_user/search",
            data:{condition:$("#pro_search_test").val(),pn:pn},
            type:"POST",
            datatype:"json",
            scriptCharset: 'utf-8',
            success:function (result) {
            	//提示查找结果
            	if(tag)
            	alert("共查到"+result.extend.pageInfo.total+"条记录");
                //1、解析并显示商品信息
                build_pros_table(result);
                //2、解析并显示分页信息
                build_page_info(result);
                //3、解析显示分页条
                build_page_nav(result);
            }
        });
    }
    //构建商品信息
    function build_pros_table(result) {
        //清空原数据
        $("#content").empty();
        var pros = result.extend.pageInfo.list;
        var index=2;
        $.each(pros,function (index, item) {
        	var div0 = $("<div></div>").addClass("row");
            var div1 = $("<div></div>").addClass("col-sm-6 col-md-4");
            var div2 = $("<div></div>").addClass("thumbnail");
            var img = $("<img></img>").attr("src",item.picture).attr("width","55%");
            var div3 = $("<div></div>").addClass("caption");
            var name = $("<h2></h2>").html(item.name);
            var price = $("<h3></h3>").addClass("text-right").html(item.price)
            .append($("<span></span>").addClass("glyphicon glyphicon-usd"));
            var introduction=$("<h4></h4>").html(item.introduction);
            var detailBtn = $("<button></button>").addClass("btn btn-primary btn-lg det_btn").attr("style","margin-left:25px").html("查看详情")
            .append($("<span></span>").addClass("glyphicon glyphicon-info-sign"));
            var writeBtn = $("<button></button>").addClass("btn btn-warning btn-lg write_btn").attr("style","margin-left:40px").html("问大家")
            .append($("<span></span>").addClass("glyphicon glyphicon-question-sign"));
            //为按钮添加一个自定义的属性，来表示当前商品id
            detailBtn.attr("edit_id",item.pid);
            writeBtn.attr("write_id",item.pid);
            //append方法执行完成以后还是返回原来的元素，所以可以继续append
            div1.append(div2)
                .append(img)
                .append((div3)
                		.append(name)
                		.append(price)
                		.append(introduction)
                		.append(detailBtn)
                		.append(writeBtn)
                	)
            if(index%3==2){//一行三个
            	div0.append(div1).appendTo("#content");
            }
            else    div1.appendTo("#content");
            index=index+1;
        });
    }
    
    //解析构建显示分页信息
    function build_page_info(result) {
        //先清空
        $("#page_info_area").empty();
        $("#page_info_area").append("当前"+result.extend.pageInfo.pageNum+"页，总"+
            result.extend.pageInfo.pages+"页，共"+
            result.extend.pageInfo.total+"条记录");
        totalRecord = result.extend.pageInfo.total;
    }
    
    //解析构建分页条信息，点击进行跳转下一页
    function build_page_nav(result) {
        //page_nav_area
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");

        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if (result.extend.pageInfo.hasPreviousPage == false) {
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else {
            //为元素添加翻页事件
           	var condition=$("#pro_search_test").val();
            firstPageLi.click(function () {
            	if(pageId==0) to_page(1);            		
            	else if(pageId==1)to_searchPage(1,false);
            	else if(pageId==2)to_message_page(1);
            	else to_revert_page(1);
            });
            prePageLi.click(function () {
            	if(pageId==0) to_page(result.extend.pageInfo.pageNum -1);            		
            	else if(pageId==1)to_searchPage(result.extend.pageInfo.pageNum -1,false);
            	else if(pageId==2)to_message_page(result.extend.pageInfo.pageNum -1);          		
            	else to_revert_page(result.extend.pageInfo.pageNum -1);
            });
        }

        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if (result.extend.pageInfo.hasNextPage == false) {
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else {
            nextPageLi.click(function () {
            	if(pageId==0) to_page(result.extend.pageInfo.pageNum +1);            		
            	else if(pageId==1)to_searchPage(result.extend.pageInfo.pageNum +1,false);
            	else if(pageId==2)to_message_page(result.extend.pageInfo.pageNum +1);          		          	
            	else to_revert_page(result.extend.pageInfo.pageNum +1);
            });
            lastPageLi.click(function () {
            	if(pageId==0) to_page(result.extend.pageInfo.pages);            		
            	else if(pageId==1)to_searchPage(result.extend.pageInfo.pages,false);
            	else if(pageId==2)to_message_page(result.extend.pageInfo.pages);  
            	else to_revert_page(result.extend.pageInfo.pages);
            });
        }

        //页码
        ul.append(firstPageLi).append(prePageLi);
        $.each(result.extend.pageInfo.navigatepageNums,function (index, item) {
            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if (result.extend.pageInfo.pageNum == item) {
                numLi.addClass("active");
            }
            numLi.click(function () {
            	if(pageId==0) to_page(item);            		
            	else if(pageId==1)to_searchPage(item,false);
            	else if(pageId==2)to_message_page(item);        
            	else to_revert_page(item);
            });
            ul.append(numLi);
        });

        ul.append(nextPageLi).append(lastPageLi);

        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    }
    function reset_form(ele){
        $(ele)[0].reset();
        $(ele).find("*").removeClass("has-error has-success");
        $(ele).find(".help-block").text("");
    }
	//点击注销，确认后跳转到登录界面
	$("#user_logout_a").click(function (){
		if(confirm("确认注销吗？")){
			 window.location.href ="logout.jsp";
		}
    });
	
	//点击联系我们，弹框
	$("#admin_email_a").click(function (){
		alert("如您有问题或改进建议\n请发送至邮箱:413652081@qq.com");
    });
	
	//点击修改资料，弹出模态框
	$("#user_profile_a").click(function () {
        //清除表单数据（表单重置）
        $("#userUpdateModal form")[0].reset();
      	//显示修改前信息
      	var uid=<%=suid%>;
		 getUser(uid);
        //弹出模态框
        $("#userUpdateModal").modal({
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
	function validate_update_form(){
		var rtn=true;
		//1.拿到要校验的数据，使用jquery正则表达式
        var userName = $("#name_update_input").val();
        var regName = /(^[a-zA-Z0-9_-]{3,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
        if (!regName.test(userName)) {
            show_validate_msg("#name_update_input","error","×:用户名为2-5中文或3-16英文数字组合");
            rtn= false;
        }
        else {
            show_validate_msg("#name_update_input","success","√");
        }
        //2、校验邮箱信息
        var userEmail = $("#email_update_input").val();
        var regEmail = /^([a-zA-Z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/
        if (!regEmail.test(userEmail)) {
            show_validate_msg("#email_update_input","error","×:邮箱格式错误");
            rtn= false;
        }else{
            show_validate_msg("#email_update_input","success","√");
        }
        //3.密码校验（两次一样且不为空）
        var password1=$("#password_update_input").val();
        var password2=$("#password2_update_input").val();
       	if(password1==""){
       		show_validate_msg("#password_update_input","error","×:密码不能为空");
       		rtn= false;
       	}
       	else{
       		show_validate_msg("#password_update_input","success","√");
       	}
       	if(password2==""){
       		show_validate_msg("#password2_update_input","error","×:请再次输入密码");
       		rtn= false;
       	}
       	else if(password1!=password2){
       		show_validate_msg("#password2_update_input","error","×:输入的两次密码不相同");
       		rtn= false;
       	}
       	else{
       		show_validate_msg("#password2_update_input","success","√");
       	}
        return rtn;
    }
	
	//点击修改弹出修改模态框
	$("#user_update_btn").click(function(){
		//1.确认旧密码
		var old=prompt("请输入旧密码","old password");
		var uid=<%=suid%>
	    $.ajax({
        	url:"${APP_PATH}/user/"+uid,
            type:"GET",
            success:function (result) {
                var pass = result.extend.user.password;
				if(old!=pass){
					alert("旧密码不正确！");
				}
			    else{
					//2.前端校验表单数据
					if(!validate_update_form()){
						return false;
					}
					//3.发送ajax请求注册用户
					$.ajax({
						 url:"${APP_PATH}/user/update",
				            type:"POST",
				            data:$("#userUpdateModal form").serialize(),//表单信息序列化
				            success:function (result) {
				            	if(result.code==100){//成功
				            		alert("修改成功！");  
					                $("#userUpdateModal").modal('hide');//关闭模态框
				            	}
				            	 else{
				                	//显示错误字段信息
				                	if(undefined!=result.extend.errorFields.name){
				                		show_validate_msg("#name_update_input","error","×:用户名为2-5中文或3-16英文数字组合");
				                	}
									if(undefined!=result.extend.errorFields.email){
										show_validate_msg("#email_update_input","error","×:邮箱格式错误");
				                	}
				                }
				            }
					});
				}
            }
        });
	});
	//显示修改前数据
    function getUser(uid) {
        $.ajax({
            url:"${APP_PATH}/user/"+uid,
            type:"GET",
            success:function (result) {
                var userData = result.extend.user;
                $("#uid_update_input").val(userData.uid);
                $("#name_update_input").val(userData.name);
                $("#password_update_input").val(userData.password);
                $("#password2_update_input").val(userData.password);
                $("#email_update_input").val(userData.email);
            }
        });
    }
	
	//点击查看详情，弹出商品详情模态框
	$(document).on("click",".det_btn",function (){
		//1、发送请求查出商品信息
        $.ajax({
            url:"${APP_PATH}/pro/"+($(this).attr("edit_id")),
            type:"GET",
            success:function (result) {
                var proData = result.extend.pro;
                $("#pid_show_input").val(proData.pid);
                $("#name_show_input").val(proData.name);
                $("#brand_show_input").val(proData.brand);
                $("#model_show_input").val(proData.model);
                $("#price_show_input").val(proData.price);
                $("#introduction_show_input").val(proData.introduction);
            }
        });
		//2.弹出模态框
        $("#proShowModal").modal({
            backdrop:"static"
        });
	});
	
	//点击问大家，弹出写留言模态框
	$(document).on("click",".write_btn",function (){
		//清空
		$("#messageNewModal form")[0].reset();
		//把商品的pid传递给模态框的保存按钮
		$("#message_save_btn").attr("write_id",$(this).attr("write_id"));
		$("#messageNewModal").modal({
            backdrop:"static"
        });
	});
	
	//点击保存，新增留言（写留言模态框）
    $("#message_save_btn").click(function () {
    	var suid=<%=suid%>;
    	$("#uid_save_input").val(parseInt(suid));
    	$("#pid_save_input").val($(this).attr("write_id"));
    	//1.前端校验表单数据
		if(!validate_save_form()){
			return false;
		}
    	//2.发送ajax请求保存留言
        $.ajax({
            url:"${APP_PATH}/message/",
            type:"POST",
            data:$("#messageNewModal form").serialize(),//表单信息序列化
            success:function (result) {
                //1、关闭模态框
                $("#messageNewModal").modal('hide');
                //2、来到最后一页，显示刚才保存的数据
                alert("留言成功！");
            }
        });
    });
	//校验留言
	function validate_save_form(){
		var rtn=true;
		var title=$("#title_save_input").val();
		var content=$("#message_save_input").val();
		if(title==null||""==title){
			show_validate_msg("#title_save_input","error","×:标题不能为空");
			rtn= false;
		}
		if(content==null||""==content){
			show_validate_msg("#message_save_input","error","×:内容不能为空");
			rtn= false;
		}
		return rtn;
	}
	 
	//点击讨论区
	$("#message_a").click(function (){
		//清空原数据
		$("#content").empty();
		//去到留言第一页
		pageId=2;
		to_message_page(1);
	});
	function to_message_page(pn){
		$.ajax({
            url:"${APP_PATH}/messages/",
            data:"pn="+pn,
            type:"GET",
            success:function (result) {
                //1、解析并显示留言
                build_messages_table(result);
                //2、解析并显示分页信息
                build_page_info(result);
                //3、解析显示分页条
                build_page_nav(result);
            }
        });
	}
	//构建留言信息
    function build_messages_table(result) {
        //清空原数据
        $("#content").empty();
        var messages=result.extend.pageInfo.list;
        var divBg=$("<div></div>").addClass("jumbotron").attr("style","font-size:30px");
       	var table=$("<table></table>").addClass("table table-striped");
       	var head=$("<thead></thead>").append($("<tr></tr>")).append($("<th></th>").append("标题"));
       	var body=$("<tbody><tboty>");
       	$.each(messages,function (index, item) {
        	var tr=$("<tr></tr>");
        	var td=$("<td></td>");
        	var title=$("<a></a>").attr("id","message_link").html(item.title);
        	title.attr("mid",item.mid);
        	tr.append(td.append(title));
        	body.append(tr);
        });
       	divBg.append(table).append(head).append(body).appendTo($("#content"));
	}
	
	//点击留言标题链接，显示留言具体信息
	$(document).on("click","#message_link",function (){
    	var mid=$(this).attr("mid")
    	//1.清空原数据
        $("#content").empty();
    	//2.发送请求获取留言信息及相关回复并填充数据
    	//2.获取留言信息
    	$.ajax({
    		 url:"${APP_PATH}/message/"+mid,
             type:"GET",
             async:false,//关闭同步，加载完留言后再加载回复
             success:function (result){
             	var message=result.extend.message;
             	//console.log(message);
             	var div=$("<div></div>").addClass("jumbotron").attr("id","jum")
            	.append($("<h1></h1>").append(message.product.pid).append("-"+message.product.name))
            	.append($("<h2></h2>").append(message.title))
	            .append($("<h3></h3>").attr("align","center").append(message.content));
	            var uname=$("<h5></h5>").attr("align","left").append("发布人："+message.user.name);
	            var time=$("<h5></h5>").attr("align","left").append("时间："+message.time);
	            var revCnt=$("<h5></h5>").attr("align","left").append("回复数："+message.revertcount);
	            var revBtn=$("<button></button>").addClass("btn btn-info btn-lg rev_btn").attr("style","margin-left:800px")
            	.append("回复").attr("mid",message.mid)
	            .append($("<span></span>").addClass("glyphicon glyphicon-plus-sign"));
	            var delBtn=$("<button></button>").addClass("btn btn-danger btn-lg delM_btn")
            	.append("删除").attr("mid",message.mid)
	            .append($("<span></span>").addClass("glyphicon glyphicon-trash"));
            	var uid=<%=suid%>;
            	if(uid==message.user.uid){//删除权限
            		div.append(uname).append(time).append(revCnt).append(revBtn).append(delBtn).appendTo($("#content"));
            	}
            	else div.append(uname).append(time).append(revCnt).append(revBtn).appendTo($("#content"));
             }
    	});
    	//3.获取回复信息
    	pageId=3;
    	pageMid=mid;
    	to_revert_page(1);
    });
	function to_revert_page(pn){
		$.ajax({
            url:"${APP_PATH}/reverts/",
            data:{pn:pn,mid:pageMid},
            type:"POST",
            success:function (result) {
                //1、解析并显示回复
                build_revert_table(result);
                //2、解析并显示分页信息
                build_page_info(result);
                //3、解析显示分页条
                build_page_nav(result);
            }
        });
	}
	//构建某留言下的回复信息
    function build_revert_table(result) {
    	var reverts=result.extend.pageInfo.list;
    	var divA =$("<div></div>").attr("id","revertDiv");
    	var divH=$("<div></div>").addClass("page-header");
    	var title=$("<h2></h2>").append("以下是所有回复").append($("<small></small>")
    		.append("————————————————————————————————————————————————————"));
    	var ul=$("<ul></ul>").addClass("list-group").attr("style","font-size:30px");
    	var nl=$("<li></li>").append("暂无回复");
    	$.each(reverts,function (index, item) {
    		var li=$("<li></li>").addClass("list-group-item").append(index+1).append("楼：");
    		var pc=$("<p></p>").attr("align","center").append(item.content);
    		var pn=$("<p></p>").attr("align","right").attr("style","font-size:15px").append(item.user.name);
    		var pt=$("<p></p>").attr("align","right").attr("style","font-size:15px").append(item.time);
    		var delBtn=$("<button></button>").addClass("btn btn-danger btn-lg delR_btn")
        	.append("删除").attr("rid",item.rid)
            .append($("<span></span>").addClass("glyphicon glyphicon-trash"));
    		var uid=<%=suid%>;
        	if(uid==item.user.uid){//删除权限
        		li.append(pc).append(pn).append(pt).append(delBtn).appendTo(ul);
        	}
        	else li.append(pc).append(pn).append(pt).appendTo(ul);
    	});
    	var jum=document.getElementById("jum");
    	if(result.extend.pageInfo.total==0)
    		divA.append(divH).append(title).append(ul.append(nl)).appendTo(jum);
    	else divA.append(divH).append(title).append(ul).appendTo(jum);
	}
	//点击回复按钮，弹出写回复模态框
	$(document).on("click",".rev_btn",function () {
		//清空
		$("#revertNewModal form")[0].reset();
		//把商品的pid传递给模态框的保存按钮
		$("#revert_save_btn").attr("mid",$(this).attr("mid"));
		$("#revertNewModal").modal({
            backdrop:"static"
        });
	});
	
	//点击保存，新增回复（写回复模态框）
    $("#revert_save_btn").click(function () {
    	var suid=<%=suid%>;
    	$("#uid_revert_input").val(parseInt(suid));
    	$("#mid_revert_input").val($(this).attr("mid"));
    	//1.前端校验表单数据
    	var content=$("#revert_save_input").val();
    	if(content==null||""==content){
			show_validate_msg("#revert_save_input","error","×:回复内容不能为空");
			return false;
		}
    	//2.发送ajax请求保存回复
        $.ajax({
            url:"${APP_PATH}/revert/",
            type:"POST",
            data:$("#revertNewModal form").serialize(),//表单信息序列化
            success:function (result) {
                //关闭模态框
                $("#revertNewModal").modal('hide');
                //清空原回复数据
                $(document.getElementById("revertDiv")).empty();
                //去到留言第一页
                pageId=2;
            	to_message_page(1);
                alert("回复成功！");
                //更新留言表字段回复数
            }
        });
    });
	
    //点击删除留言按钮
	$(document).on("click",".delM_btn",function () {
		//把留言的mid传递给模态框的保存按钮
        var mid = $(this).attr("mid");
        if(confirm("将不可恢复的删除留言及其所有回复,\n确认删除吗？")){
            //发送ajax请求删除
            $.ajax({
                url:"${APP_PATH}/message/"+mid,
                type:"DELETE",
                success:function (result) {
                    alert("删除成功！");
                    //回到讨论区第一页
                    pageId=2;
            		to_message_page(1);
                }
            });
        }
	});
  
	//点击删除留言按钮
	$(document).on("click",".delR_btn",function () {
		//把留言的mid传递给模态框的保存按钮
        var rid = $(this).attr("rid");
        if(confirm("确认删除该留言吗？")){
            //发送ajax请求删除
            $.ajax({
                url:"${APP_PATH}/revert/"+rid,
                type:"DELETE",
                success:function (result) {
                    alert("删除成功！");
                    //清空原回复数据
                    $(document.getElementById("revertDiv")).empty();
                    //去到回复第一页
                    to_revert_page(1);
                }
            });
        }
	});
	
    //点击我的留言->查询我的留言
	$("#user_message_a").click(function () {
		//去到我的留言第一页
		pageId=4;
		pageUid=<%=suid%>;
		to_messageSearch_page(1);
    });
	function to_messageSearch_page(pn){
		$.ajax({
            url:"${APP_PATH}/message/search",
            data:{uid:pageUid,pn:pn},
            type:"POST",
            success:function (result) {
                //1、解析并显示留言
                 build_messages_table(result)
                //2、解析并显示分页信息
                build_page_info(result);
                //3、解析显示分页条
                build_page_nav(result);
            }
        });
	}

	</script>
</body>
</html>