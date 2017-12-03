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
    
    <title>My JSP 'shoppingcart.jsp' starting page</title>
    
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
      <h2>我的购物车</h2>
      <table border="1" width="60%" cellpadding="0" cellspacing="0">
         <tr>
            <th>名称</th>
            <th>价格</th>
            <th>数量</th>
            <th>操作</th>
         </tr>
         <c:forEach items="${sessionScope.SHOPPINGCART_IN_SESSION.items}" var="item">
           <tr>
            <td>${item.name}</td>
            <td>${item.price}</td>
            <td>${item.num}</td>
            <td><a href="/Day16_page/shoppingcart?cmd=delete&id=${item.id}">删除</a></td>
          </tr>
         
         </c:forEach>
         
         <c:if test="${empty SHOPPINGCART_IN_SESSION.items}">
         <tr>
            <td colspan="4" style="text-align: center;">购物车空空的，赶紧去购物。。。</td>
         </tr>
         </c:if>
         
         <c:if test="${!empty SHOPPINGCART_IN_SESSION.items}">
          <tr>
           <td colspan="4" style="text-align: right;">商品总价格:${sessionScope.SHOPPINGCART_IN_SESSION.totalPrice}</td>
         </tr>
         </c:if>
          
      
      
      
      </table>
      <a href="/Day16_page/shoppingcart/cart.jsp">继续购物</a>
  </body>
</html>
