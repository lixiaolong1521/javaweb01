<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="/javaweb_project2/login/css/cs1.css">

  </head>
  
  <body style="background-image: url(/javaweb_project2/login/img/101.jpg);">
		<div id="logo"><img src="/javaweb_project2/login/img/logo.png" /></div>
		<div id="total">
		<div id="back" >
		<!--最外层  -->
     
     <div id="content">
       <!-- 面板-->
       <form id="panel" action="/javaweb_project2/login" method="get"> 
          <!-- 账号 -->
         <div class="group">
           <label>账号</label>
           <input placeholder="请输入账号" type="text" name="username">
         </div>
          <!-- 密码 -->
         <div class="group">
           <label>密码</label>
           <input type="password" placeholder="请输入密码" name="password">
         </div>
         <!-- 验证码 -->
         <div class="group">
         <label>验证码</label>
         <input type="text" name="randomCode"> 
         <img alt="验证码" src="/javaweb_project2/randomCode" title="看不清？点击切换"
         onclick="changeRandomCode();" id="randomCodeImg"> 
         <span style="color:red;">${errorMsg}</span>   
         </div>
          <!-- 登录 -->
         <div class="login">
            <input type="submit" value="登录"></input>
         </div>
       
       </form>
       
       <!-- 注册 -->
       <div class="reg">
       <a href="/javaweb_project2/login/register.jsp">   <button>创建新账号?</button></a>
       </div>
     </div>
     </div>
     </div>
       <script type="text/javascript">
     function changeRandomCode(){
	  //alert(1);
	      document.getElementById("randomCodeImg").src="/javaweb_project2/randomCode?"+new Date().getTime();
	  }
    </script>
	</body>
</html>
