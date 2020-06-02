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
				<button class="btn btn-primary">新增</button>
				<button class="btn btn-danger">删除</button>
			</div>
		</div>
		<!-- 表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover">
					<tr>
						<th>#</th>
						<th>picture</th>
						<th>productname</th>
						<th>brand</th>
						<th>model</th>
						<th>price</th>
						<th>introduction</th>
						<th>操作</th>
					</tr>
					<c:forEach items="${pageInfo.list}" var="pro">
						<tr>
						<th>${pro.pid}</th>
						<th>${pro.picture}</th>
						<th>${pro.name}</th>
						<th>${pro.brand}</th>
						<th>${pro.model}</th>
						<th>${pro.price}</th>
						<th>${pro.introduction}</th>
						<th>
							<button class="btn btn-primary">
							<span class="glyphicon glyphicon-pencil btn-xs" aria-hidden="true"></span>
							</button>
							<button class="btn btn-danger">
							<span class="glyphicon glyphicon-trash btn-xs" aria-hidden="true"></span>
							</button>
						</th>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<!-- 分页 -->
		<div class="row">
			<!-- 分页文字信息 -->
			<div class="col-md-6">
			当前${pageInfo.pageNum}页，总${pageInfo.pages}页，共${pageInfo.total}条记录
			</div>
			<!-- 分页条信息 -->
			<div class="col-md-6">
				<nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li><a href="${APP_PATH}/pros?pn=1">首页</a></li>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <li>
                                <a href="${APP_PATH}/emps?pn=${pageInfo.pageNum-1}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${!pageInfo.hasPreviousPage}">
                            <li>
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>


                        <c:forEach items="${pageInfo.navigatepageNums}" var="page_Num">
                            <c:if test="${page_Num == pageInfo.pageNum}">
                                <li class="active"><a href="#" >${page_Num}</a></li>
                            </c:if>
                            <c:if test="${page_Num != pageInfo.pageNum}">
                                <li><a href="${APP_PATH}/pros?pn=${page_Num}" >${page_Num}</a></li>
                            </c:if>
                        </c:forEach>

                        <c:if test="${pageInfo.hasNextPage}">
                            <li>
                                <a href="${APP_PATH}/pros?pn=${pageInfo.pageNum+1}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${!pageInfo.hasNextPage}">
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>

                        <li><a href="${APP_PATH}/pros?pn=${pageInfo.pages}">末页</a></li>
                    </ul>
                </nav>
			</div>
		</div>
	</div>
</body>
</html>