<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	  function changeRandomCode(){
	      document.getElementById("randomCodeImg").src="/javaweb_project2/randomCode?"+new Date().getTime();
	  }
	
	</script>

  </head>
  
  <body>
    <h2>登录界面</h2>
    <span style="color:red">${errorMsg}</span>
    <form action="/javaweb_project2/login" method="post">
          用户名:<input type="text" name="username"> <br/><br/>
           密码:<input type="password" name="password"> <br/><br/>
           验证码:<input type="text" name="randomCode"> 
       <img alt="验证码" src="/javaweb_project2/randomCode" title="看不清？点击切换"
       onclick="changeRandomCode();" id="randomCodeImg">    
           
           <br/><br/>
           
      <input type="submit" value="登录">
    </form>
  </body>
</html>
