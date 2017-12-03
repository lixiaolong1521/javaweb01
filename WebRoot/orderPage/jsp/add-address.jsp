<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加新地址</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/add-address.css">
	

  </head>
  
  <body>
   <div class="add-address">
      <div class="add-address-header">
        <p class="add-address-header-title">添加新地址</p>
      </div>
      <div class="add-address-content">
        <div class="add-address-edit">
         收货人姓名  <p class="add-address-non-empty">*</p>
          <input type="text" placeholder="姓名长度不超过15个汉字">
        </div>
        <div class="add-address-edit">
          收货人手机号<p class="add-address-non-empty">*</p>
          <input type="tel" placeholder="请输入11位手机号">
        </div>
        <div class="add-address-edit">
        收货人地址<p class="add-address-non-empty">*</p>
        <select class="link-city">
          <option value="省份/直辖市">省份/直辖市</option>
        </select>
        <select class="link-city">
          <option>城市</option>
        </select>
        <select class="link-city">
          <option>区/县</option>
        </select>
        <select class="link-city">
          <option>乡镇/街道</option>
        </select>
        </div>
        <div class="add-address-edit last">
                详细地址<p class="add-address-non-empty">*</p>
           <input type="text" required="required">
        </div>
      </div>
      <div class="add-address-footer">
        <input type="button" class="add-address-footer-btn" value="确认">
        <input type="button" class="add-address-footer-btn cancle" value="取消">
      </div>
    
    </div>
  </body>
</html>
