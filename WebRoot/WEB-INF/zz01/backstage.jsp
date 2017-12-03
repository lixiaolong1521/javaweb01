<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'backstage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <script type="text/javascript" src="js/tests/vendor/jquery.min.js"></script>
<script type="text/javascript" src="js/dropdown.js"></script>
<script type="text/javascript" src="js/collapse.js"></script>
 <link rel = "stylesheet" type="text/css" href="css/bootstrap.min.css">
  </head>
  
  <body>
  <!-- 导航 -->
  <ul class="nav nav-pills nav-justified ">
  <li role="presentation" class=""><a href="#">后台首页</a></li>
  <li role="presentation"><a href="#">用户管理</a></li>
  <li role="presentation"><a href="#">订单管理</a></li>
  
  <li role="presentation">
  <a data-toggle="collapse" data-parent="#accordion"  href="#collapseThree">
			商品管理
				</a>
	<!-- 	<div id="collapseThree" class="panel-collapse collapse panel-body">
				Nihil anim keffiyeh helvetica, craft beer labore wes anderson 
				cred nesciunt sapiente ea proident. Ad vegan excepteur butcher 
				vice lomo.
			</div> -->
 <ul class="nav nav-tabs nav-justified  panel-collapse collapse panel-body"  id="collapseThree">
  <li role="presentation" class=""><a href="#">商品列表</a></li>
  <li role="presentation"><a href="#">商品分类</a></li>
  <li role="presentation"><a href="#">商品状态</a></li>
  </ul>
  
  
  
  
</li>
</ul>
<!-- 路径导航 -->
<ol class="breadcrumb">
  <li><a href="#">后台首页</a></li>
  <li><a href="#">商品管理</a></li>
  <li class="active">商品分类</li>
</ol>
<!-- 页面主要内容 -->
<div id="mainContent">
<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
	<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
	<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
<table class="table">
	<caption>基本的表格布局</caption>
   <thead>
      <tr>
       <th><input type="checkbox"></th>
         <th>ID</th>
         <th>商品名称</th>
         <th>所属分类</th>
          <th>商品图片</th>
           <th>商品价格</th>
            <th>商品描述</th>
             <th>商品库存</th>
             
      </tr>
   </thead>
   <tbody>
      <tr>
       <th><input type="checkbox"></th>
         <td>56</td>
         <td>小米6</td>
         <td>xxx系列</td>
         <td><img src="img/phonebrand.jpg"></td>
         <td>3000</td>
         <td>真的好用,煎鸡蛋很快,国产第一手机</td>
         <td>336</td>
      </tr>
      <tr>
       <th><input type="checkbox"></th>
         <td>45</td>
         <td>10x</td>
      </tr>
   </tbody>
</table>
</div>
<!-- 分页 -->
<nav aria-label="Page navigation">
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
<script type="text/javascript">

$("#productList").click(function(){
   $("#mainContent").empty();
   
});


</script>
  </body>
</html>
