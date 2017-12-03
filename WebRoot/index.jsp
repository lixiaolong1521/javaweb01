<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="backstagecss/backstagelogin.css">
	<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  </head>
  
  <body>
    This is my JSP page. <br>

	<div  id="loginbox" style="width:300px;height:290px;"  >
	<form>
		<table class="table">
			<!-- <caption>基本的表格布局</caption> -->
			<thead>
				<tr>
					<th style="width:300px;text-align:center;">登录后台</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" placeholder="请输入账号" style="width:300px;height:48px; border:0px;"/></td>
				</tr>
				<tr>
					<td><input type="password" placeholder="请输入密码"style="width:300px;height:48px;border:0px"></td>
				</tr>
				<tr>
				<td><input id="btn_backstage_login" type="button" value="登录" style="border:0px;width:302px;height:48px;text-align:center;background-color:#3c8dbc"></td>
				</tr>
			</tbody>
		</table>
		</form>
	</div>

<div id="mask"></div>

<!-- 	<a id="login_a" >登录</a>
    <div id="loginbox">
		<form>
			<table >
				<tr  >
					<th colspan="1">登录界面</th>
					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th><a id="close">关闭窗口</a></th>
				</tr>
				<tr>
					<td>账号：</td>
					<td colspan="2"><input type="text" placeholder="请输入账号"/></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td colspan="2"><input type="password" placeholder="请输入密码"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="登录" id="loginBtn"></td>
					<td><a href="#">注册账号</a></td>
				</tr>
			</table>
		</form>
	</div> -->
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript">
	$(function(){
    	//$("#mask").show();
    	/*  */
    	$("#login_a").on('click',function(){
    		$("#mask").show();
    		$("#loginbox").show();
    	});
    	/*  */
    	$("#btn_backstage_login").on('click',function(){
    		$("#loginbox").hide();
    		$("#mask").hide();
    	});
    });
	</script>
  </body>
</html>