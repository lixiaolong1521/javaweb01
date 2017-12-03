<%@ page language="java" import="java.util.*" pageEncoding="utf-8" 
	contentType="text/html; charset=utf-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>支付页面</title>
    <style type="text/css">
      input{
       margin-top: 35px;
      }
      
      .pay{
      background-color: #00c3f5;
      color: #FFF;
      border-color: #00c3f5;
      border-radius: 5px;
      }
      
      p{
        margin-top: 35px;
        margin-left: -150px;
      }
      
      .rad{
        margin-top: 0px;
      }
    </style>
  </head>
  
  <body style="text-align: center;border: 1px solid #efefef;width: 500px;height: 350px;margin: auto;">
	<!-- 进行支付的页面 -->
	<form action="<c:url value='/payServlet'/>">
		商品订单号：<input type="text" name="p2_Order" value="1"><br/>
		支付金额：<input type="text" name="p3_Amt" value="${priceAll}"><br/>
		<p>选择银行：</p><br/>
		中国农业银行<input type="radio" class="rad" name="pd_FrpId" value="ABC-NET-B2C">
		建设银行<input type="radio" class="rad" name="pd_FrpId" value="CCB-NET-B2C"><br/>
		<input type="submit" class="pay" value="支付">
	</form>
  </body>
</html>
