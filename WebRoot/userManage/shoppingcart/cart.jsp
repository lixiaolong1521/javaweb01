<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cart.jsp' starting page</title>
    
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
     <h2>商品列表</h2>
      <%
      //生成随机数
         String token = UUID.randomUUID().toString();
      //把随机数放在session中
       request.getSession().setAttribute("TOKEN_IN_SESSION", token);  
      
       %>
      <form action="/Day16_page/shoppingcart?cmd=save" method="post">
     
      <input type="hidden" name="token" value="${sessionScope.TOKEN_IN_SESSION }">
         商品：<select name="name">
          <option>电脑</option>
          <option>手机</option>
          <option>Pad</option>
       </select>
       <br/>
       数量：<input type="number" name="num">
       <br/>
      <input type="submit" value="买买买">
      </form>
  </body>
</html>
