<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="core" %>
<%@ taglib prefix="fmt" uri="fmt" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>东旭工作室后台管理系统</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css/uniform.css" />
		<link rel="stylesheet" href="css/select2.css" />		
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>
	<body style="background:#EEE;">
		
		<div id="content" style="margin-left:0px; min-height:400px;">
			
			<div id="breadcrumb" style="height:40px;line-height:33px;">
				<a href="index02.html" title="去首页" class="tip-bottom"><i class="icon-home"></i>后台首页</a>
				<a href="#">帖子管理</a>
				<a href="#" class="current">帖子列表</a>
				<div style="float:right;">
					<form style="float:left;" action="findpost.html">
						<div style="margin-right:85px;margin-top:9px;">
						<input type="hidden" name="qo" value="5">
						<input type="text" maxLength="5" id="goto" name="content" placeholder="输入ID，账号或昵称"/>
						</div>
						<div style="float:right;margin-top:-43px;margin-right:30px;">
						<button type="submit" >搜索</button></div>
					</form>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						
						
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon icon-file"></i>
								</span>
								<h5>帖子列表</h5>
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped">
									<thead>
									<tr>
										<th>id</th>
										<th>标题</th>
										<th>作者</th>
										<th>发表时间</th>
										<th>最后回复时间</th>
										<th>回复数</th>
										<th>点击数</th>
										<th>内容</th>
										<th>操作</th>
									</tr>
									</thead>
									<tbody>
									<c:forEach items="${post}" var="post">
									<tr>
										<td><center>${post.pId}</center></td>
										<td><center>${post.pName}</center></td>
										<td><center>${post.pAuthor}</center></td>
										<td><center>
											<fmt:formatDate value="${post.pDate}" pattern="yyyy-MM-dd hh:ss:SSS" />
											</center></td>
										<td><center>
											<fmt:formatDate value="${post.vLastreply}" pattern="yyyy-MM-dd hh:ss:SSS" />
											</center></td>
										<td><center>${post.pReply}</center></td>
										<td><center>${post.pTime}</center></td>
										<td><center>请点击</center></td>
										<td><center><a href="deletep.html?id=${post.pId}" onclick= "return confirm('真的要删除吗？？？再考虑考虑？？？');"><i class="icon-trash"></i>删除</a></center></td>
									</tr>
									</c:forEach>
									</tbody>
								</table>							
							</div>
							<center>
								<div>
								 <form action="postlist.html" method="get" onsubmit="return gotoo()">
									<c:if test="${page==0}">
							        <h1>没有这样的存货！亲！</h1>	
							         </c:if>
							         <c:if test="${page!=0}">
								        <c:if test="${page>1}">
								           <a href="postlist.html?startpage=${page-1}">上一页</a>
								          </c:if>
								          	<span>第${page}/${pagecount}页</span>
								          <c:if test="${page<pagecount}">
								           <span><a href="postlist.html?startpage=${page+1}">下一页</a></span>
								         </c:if>
								         	<input type="text" maxLength="5" id="goto" name="startpage" placeholder="跳转页面，最大数为${pagecount}"/>
								         	<button type="submit">Go</button>
								         </form>
							         </c:if>
							      </center>
							   </div>
						</div>
						
						

					</div>
				</div>
				
				<div class="row-fluid">
					<div id="footer" class="span12">
						Copyright © 2014 东旭工作室|made by messTeam
					</div>
				</div>
			</div>
		</div>
		
		
            
            <script src="js/jquery.min.js"></script>
            <scri pt src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.uniform.js"></script>
            <script src="js/select2.min.js"></script>
            <script src="js/jquery.dataTables.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.tables.js"></script>
	</body>
</html>
