<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'changepassword.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
  	
   %>
   <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form class="form-horizontal" method="post" action="/javaweb_project2/changeInfo?cmd=changepassword">
				<div class="control-group">
					 <label class="control-label" for="inputEmail" >用户名</label>
					<div class="controls">
						<input id="inputEmail" type="text" name="name" value="${sessionScope.USER_IN_SESSION.username}" readonly/>
					</div>
				</div>
				<div class="control-group" id="password1">
					 <label class="control-label" for="inputPassword">原密码</label>
					<div class="controls">
						<input id="inputPassword" type="password"  name="oldpassword" id="password1"/>
					</div>
				</div>
				<div class="control-group">
					 <label class="control-label" for="inputPassword1">新密码</label>
					<div class="controls">
						<input id="inputPassword1" type="password"  name="newpassword" id="password2"/>
					</div>
					
				</div>
				<div class="control-group">
					<div class="controls">
						  <button type="submit" class="btn">保存修改</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
  </body>
</html>
