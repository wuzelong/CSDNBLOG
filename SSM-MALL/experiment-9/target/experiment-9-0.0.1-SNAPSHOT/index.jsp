<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>商品列表</title>
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
<!-- 商品修改的模态框 -->
	<div class="modal fade" id="proUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h4 class="modal-title">商品修改</h4>
	            </div>
                <form class="form-horizontal">
	            <div class="modal-body">
	                    <div class="form-group">
	                        <label for="name_add_input"  class="col-sm-2 control-label">商品名</label>
	                        <div class="col-sm-10">
	                            <input type="text" class="form-control" name="name" id="name_add_input" placeholder="name">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="brand_add_input"  class="col-sm-2 control-label">品牌</label>
	                        <div class="col-sm-10">
	                            <input type="text" class="form-control" name="brand" id="brand_update_input" placeholder="brand">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="model_add_input"  class="col-sm-2 control-label">型号</label>
	                        <div class="col-sm-10">
	                            <input type="text" class="form-control" name="model" id="model_update_input" placeholder="model">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="price_add_input"  class="col-sm-2 control-label">价格</label>
	                        <div class="col-sm-10">
	                            <input type="text" class="form-control" name="price" id="price_update_input" placeholder="price">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="introduction_add_input"  class="col-sm-2 control-label">介绍</label>
	                        <div class="col-sm-10">
	                            <textarea cols="35" class="form-control" name="introduction" id="introduction_update_input" placeholder="introduction">
	                            </textarea>
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-primary" id="pro_update_btn">更新</button>
		                <button type="reset" class="btn btn-reset">重置</button>
		                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		            </div>
	            </form>
	        </div>
	    </div>
	</div>
	<!-- 商品添加的模态框 -->
	<div class="modal fade" id="proAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h4 class="modal-title" id="myModalLabel">商品添加</h4>
	            </div>
                <form class="form-horizontal">
	            <div class="modal-body">
	                    <div class="form-group">
	                        <label for="name_add_input"  class="col-sm-2 control-label">商品名</label>
	                        <div class="col-sm-10">
	                            <input type="text" class="form-control" name="name" id="name_add_input" placeholder="name">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="brand_add_input"  class="col-sm-2 control-label">品牌</label>
	                        <div class="col-sm-10">
	                            <input type="text" class="form-control" name="brand" id="brand_add_input" placeholder="brand">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="model_add_input"  class="col-sm-2 control-label">型号</label>
	                        <div class="col-sm-10">
	                            <input type="text" class="form-control" name="model" id="model_add_input" placeholder="model">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="price_add_input"  class="col-sm-2 control-label">价格</label>
	                        <div class="col-sm-10">
	                            <input type="text" class="form-control" name="price" id="price_add_input" placeholder="price">
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="introduction_add_input"  class="col-sm-2 control-label">介绍</label>
	                        <div class="col-sm-10">
	                            <textarea rows="4" cols="35" class="form-control" name="introduction" id="introduction_add_input" placeholder="introduction">
	                            </textarea>
	                            <span class="help-block"></span>
	                        </div>
	                    </div>
	            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-primary" id="pro_save_btn">保存</button>
		                <button type="reset" class="btn btn-reset">重置</button>
		                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		            </div>
	            </form>
	        </div>
	    </div>
	</div>
	<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题行 -->
		<div class="row">
			<div class ="col-md-12">
				<h1>商品</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<button class="btn btn-primary" id="pro_add_modal_btn"  data-dismiss="modal">新增商品</button>
				<button class="btn btn-danger" id="pro_delete_all_btn">批量删除</button>
			</div>
		</div>
		<!-- 表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="pros_table">
					<thead>
					<tr>
						<th>
                            <input type="checkbox" id="check_all">
                        </th>
						<th>#</th>
						<th>picture</th>
						<th>productname</th>
						<th>brand</th>
						<th>model</th>
						<th>price</th>
						<th>introduction</th>
						<th>操作</th>
					</tr>
					</thead>
					<tbody>
					
					</tbody>	
				</table>
			</div>
		</div>
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

    var totalRecord,currentPage;
    //1、页面加载完成以后，发送一个ajax请求，得到分页数据
    $(function () {
        //第一次去首页
        //console.log("into page1");
        to_page(1);
    });

    function to_page(pn) {
        $.ajax({
            url:"${APP_PATH}/pros/",
            data:"pn="+pn,
            type:"GET",
            success:function (result) {
                // console.log(result);
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
        //清空table表格
        $("#pros_table tbody").empty();
        var pros = result.extend.pageInfo.list;
        $.each(pros,function (index, item) {
            // alert(item.proName);
            var checkBoxTd = $("<td></td>").append("<input type='checkbox' class='check_item'/>");
            var piddTd = $("<td></td>").append(item.pid);
            var pictureTd = $("<td></td>").append(item.picture);
            var nameTd = $("<td></td>").append(item.name);
            var brandTd = $("<td></td>").append(item.brand);
            var modelTd = $("<td></td>").append(item.model);
            var priceTd = $("<td></td>").append(item.price);
            var introduction = $("<td></td>").append(item.introduction);
            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil"));
            //为编辑按钮添加一个自定义的属性，来表示当前商品id
            editBtn.attr("edit_id",item.pid);
            var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash"));
            //为删除按钮添加属性表示id
            delBtn.attr("del_id",item.pid);
            var btnTd =$("<td></td>").append(editBtn).append(" ").append(delBtn);
            //append方法执行完成以后还是返回原来的元素，所以可以继续append
            $("<tr></tr>")
            	.append(checkBoxTd)
                .append(piddTd)
                .append(pictureTd)
                .append(nameTd)
                .append(brandTd)
                .append(modelTd)
                .append(priceTd)
                .append(introduction)
                .append(editBtn)
                .append(delBtn)
                .appendTo("#pros_table tbody");
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
        //更新商品信息后，需返回显示当前页
        currentPage = result.extend.pageInfo.pageNum;
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
            firstPageLi.click(function () {
                to_page(1);
            });
            prePageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum -1);
            });
        }

        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if (result.extend.pageInfo.hasNextPage == false) {
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else {
            nextPageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum +1);
            });
            lastPageLi.click(function () {
                to_page(result.extend.pageInfo.pages);
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
                to_page(item);
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

    //点击新增按钮弹出模态框
    $("#pro_add_modal_btn").click(function () {
        //清除表单数据（表单重置）
        reset_form("#proAddModal form");
        //弹出模态框
        $("#proAddModal").modal({
        	backdrop:"static"
        });
    });

    //点击保存，保存商品
    $("#pro_save_btn").click(function () {
        //模态框中填写的数据提交到服务器进行保存
        //发送ajax请求保存商品
        $.ajax({
            url:"${APP_PATH}/pro/",
            type:"POST",
            data:$("#proAddModal form").serialize(),//表单信息序列化
            success:function (result) {
                //1、关闭模态框
                $("#proAddModal").modal('hide');
                //2、来到最后一页，显示刚才保存的数据
                //发送ajax请求显示最后一页数据即可
                // to_page(9999);
                to_page(totalRecord);
            }
        });
    });

    //绑定点击.live()
    //jquery新版没有live，使用on方法进行替代
    $(document).on("click",".edit_btn",function () {
        // alert("edit");
        //2、查出商品信息，显示商品信息
        getPro($(this).attr("edit_id"));
        //3、把商品的pid传递给模态框的更新按钮
        $("#pro_update_btn").attr("edit_id",$(this).attr("edit_id"));
        $("#proUpdateModal").modal({
            backdrop:"static"
        });
    });

    function getPro(pid) {
        $.ajax({
            url:"${APP_PATH}/pro/"+pid,
            type:"GET",
            success:function (result) {
                var proData = result.extend.pro;
                $("#name_add_input").val(proData.name);
                $("#brand_update_input").val(proData.brand);
                $("#model_update_input").val(proData.model);
                $("#price_update_input").val(proData.price);
                $("#introduction_update_input").val(proData.introduction);
            }
        });
    }

    //点击更新，更新商品信息
    $("#pro_update_btn").click(function () {
        //发送ajax请求，保存更新商品信息
        $.ajax({
            url:"${APP_PATH}/pro/"+$(this).attr("edit_id"),
            type:"PUT",
            data:$("#proUpdateModal form").serialize(),
            success:function () {
                // 关闭对话框
                $("#proUpdateModal").modal("hide");
                to_page(currentPage);
            }
        });
    });

    //单个删除
    $(document).on("click",".delete_btn",function () {
       //1、弹出确认删除对话框
        var proId = $(this).attr("del_id");
        if(confirm("确认删除该商品吗？")){
            //发送ajax请求删除
            $.ajax({
                url:"${APP_PATH}/pro/"+proId,
                type:"DELETE",
                success:function (result) {
                    alert(result.msg);
                    //回到本页
                    to_page(currentPage);
                }
            });
        }
    });

    //完成全选/全不选功能
    $("#check_all").click(function () {
        var is_All_Check = $(this).prop("checked");
        $(".check_item").prop("checked",is_All_Check);
    });

    //check_item，复选框选择操作
    $(document).on("click",".check_item",function () {
        //判断当前选择中的元素是否选满
        var flag = $(".check_item:checked").length == $(".check_item").length;
        $("#check_all").prop("checked",flag);
    })

    //批量删除
    $("#pro_delete_all_btn").click(function () {
        var proNames = "";
        var del_idstr = "";
        $.each($(".check_item:checked"),function () {
            //组装商品字符串
            proNames += $(this).parents("tr").find("td:eq(2)").text()+",";
            //组织商品id字符串
            del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
        });
        //去除pronames多月的","
        proNames = proNames.substring(0,proNames.length-1);
        //去除商品删除id多余的-
        del_idstr = del_idstr.substring(0,del_idstr.length-1);
        if (confirm("确认删除所选商品吗？")) {
            //发送ajax请求
            $.ajax({
                url:"${APP_PATH}/pro/"+del_idstr,
                type:"DELETE",
                success:function (result) {
                    alert(result.msg);
                    //回到当前页面
                    to_page(currentPage);
                    $("#check_all").prop("checked",false);
                }
            })

        }
    });

</script>
</body>
</html>