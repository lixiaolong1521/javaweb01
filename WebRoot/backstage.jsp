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
    
    <title>My JSP 'backstage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <title>AdminLTE 2 | Starter</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<link rel="stylesheet" type="text/css" href="backstagecss/backstagelogin.css">
  </head>
  
  <body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <!-- Main Header -->
  <header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b></b>后台</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>后台</b>管理</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigationxxxxxxxxxxxxxx</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
         
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info" >
          <p >管理员</p>
          <!-- Status -->
          <a href="#"><!-- <i class="fa fa-circle text-success"></i> 在线 --></a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="查找...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree" id="sidebarMenu">
        <li class="header">导航栏</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="#"><a href="#"><i class="fa fa-link"></i> <span>用户管理</span></a></li>
        <li id="orderM"><a href="javascript:showallorders()"><i class="fa fa-link"></i> <span>订单管理</span></a></li>
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>商品管理</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li id="proList"><a href="javascript:goPage(1,3)">商品列表</a></li>
            
            <li><a href="">商品管理</a></li>
            <li><a>商品上架</a></li>
          </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
                 后台管理
        <small>某个页面</small>
      </h1>
      <ol class="breadcrumb" id="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> 后台首页</a></li>
       <!--  <li><a href="#"><i class="fa fa-dashboard"></i> 商品管理</a></li>
        <li class="active">商品操作</li> -->
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid" id="mainContent">
     <div id="sqlData">
     <table class='table'>
     <caption>
     <button class='btn btn-primary btn-lg' data-toggle='modal' data-target='#myModal'>新增商品</button>
     </caption>
     <body>
     <c:forEach items="${pageResult.listData}" var="product" varStatus="vs">
     <c:if test="vs.count==0">
     <tr><th>ID</th><th>品牌</th><th>手机型号</th><th>图片</th><th>售价</th><th>颜色</th><th>内存</th><th>库存</th><th>版本</th></tr>
     </c:if>
     <tr><td>${product.productId}</td><td>${product.brand}</td><td>${product.model}</td><td>${product.img}</td><td>${product.price}</td><td>${product.color}</td><td>${product.storageCapacity}</td><td>${product.inventoryNumber}</td><td>${product.version}</td></tr>
     </c:forEach>
     </body>
     </table>
     </div>
     <!-- 上面是数据 -->
     <div id="page" style="text-align: center">
         <ul class="pagination">
 <!--    <li><a href="#">&laquo;</a></li>
    <li class="active"><a href="#">1</a></li>
    <li class="disabled"><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">&raquo;</a></li> -->
    
     <li> <a href="javascript:goPage(1,${pageResult.pageSize})">首页</a> </li>
    <li>  <a href="javascript:goPage(${pageResult.prePage},${pageResult.pageSize})">上一页</a> </li>
      <c:forEach begin="${pageResult.index.beginIndex}" 
      end="${pageResult.index.endIndex}" var="index">
      <c:if test="${index==pageResult.currentPage}">
        <%--  <span style="color:red;">${index}</span> --%>
        <li class="active"><a>${index}</a></li>
      </c:if>
      <c:if test="${index!=pageResult.currentPage}">
         <%-- <a href="javascript:goPage(${index},${pageResult.pageSize})">${index}</a> --%>
         <li><a href="javascript:goPage(${index},${pageResult.pageSize})">${index}</a></li>
      </c:if>
      </c:forEach>
      <li><a href="javascript:goPage(${pageResult.nextPage},${pageResult.pageSize})">下一页</a> </li>  
     <li> <a href="javascript:goPage(${pageResult.totalPage},${pageResult.pageSize})">尾页</a> </li>
</ul>
     </div>
     <form action="/javaweb_project2/prolistbs" method="post"  id="advanceFrom">
     <input type="hidden"  name="currentPage" id="currentPageInput">
     <input type="hidden"  name="pageSize" id="pageSizeInput">
     </form>
     <!-- 上面是分页 -->
      <!--------------------------
        | Your Page Content Here |
        -------------------------->
<%--          <table class="table">
  <caption>基本的表格布局</caption>
 
    <thead>
    <tr>
      <!-- <th>名称</th> -->
      <th>ID</th>
      <th>用户名称</th>
      <th>密码</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${users}" var="user">
    <tr>
      <td>${user.id}</td>
      <td>${user.userName}</td>
      <td>${user.password}</td>
    </tr>
     </c:forEach>
  </tbody>
</table> --%>
 

     
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
<!--   <footer class="main-footer">
    To the right
    <div class="pull-right hidden-xs">
      Anything you want
    </div>
    Default to the left
    <strong>Copyright &copy; 2017 <a href="#">Company</a>.</strong> All rights reserved.
  </footer> -->
<!-- 设置内容 -->
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!--登录 -->
<div  id="loginbox"  >
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
					<td><input id="adminname" type="text" placeholder="请输入账号" style="width:300px;height:48px; border:0px;"/></td>
				</tr>
				<tr>
					<td><input id="password" type="password" placeholder="请输入密码"style="width:300px;height:48px;border:0px"></td>
				</tr>
				<tr>
				<td><input id="btn_backstage_login" type="button" value="登录" style="border:0px;width:302px;height:48px;text-align:center;background-color:#3c8dbc"></td>
				</tr>
			</tbody>
		</table>
		</form>
	</div>
<div id="mask"></div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;</button>
				<h4 class="modal-title" id="myModalLabel" >新增商品</h4>
			</div>
			<div class="modal-body">
			<form action="/javaweb_project2/addproduct" method="post" id="form_addProduct">
			<table class="table">
			<tbody>
			<tr><td>品牌：<input type="text" name="addBrand" ></td></tr>
			<tr><td>型号：<input type="text" name="addModel"></td></tr>
			<tr><td>价格：<input type="text" name="addPrice"></td></tr>
		    <tr><td>颜色：<input type="text" name="addColor"></td></tr>
		    <tr><td>内存：<input type="text" name="addStorage"></td></tr>
		    <tr><td>库存：<input type="text" name="addInventory"></td></tr>
		    <tr><td>版本：<input type="text" name="addVersion"></td></tr>
		    <tr><td>类型：<input type="text" name="addType"></td></tr>
		    <tr><td id ="addresult"></td><td><input type="reset" value="清空" class="btn btn-default clearInfo"></td></tr>
			</tbody>
			</table>
			</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default clearInfo" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="addProduct()">
					提交商品信息
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
 <script src="backstagejs/bsjs01.js" type="text/javascript" ></script> 
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
     <script type="text/javascript">
	function goPage(currentPage,pageSize){
    //将当前页面的值 存放在高级查询表单隐藏域中
    document.getElementById("currentPageInput").value=currentPage;
    document.getElementById("pageSizeInput").value=pageSize;
    //提交高级查询的表单
    document.getElementById("advanceFrom").submit();
 }
	
						$(function() {
							$("#mask").show();
							$("#login_a").show();
							$("#login_a").on('click', function() {
								/* $("#mask").show();
								$("#loginbox").show(); */
									$("#loginbox").hide();
											$("#mask").hide();
							});
						    $(".clearInfo").click(function(){
							alert("xxx");
							$("#addresult").empty();
							});
	                        
							
							/*  */
							$("#btn_backstage_login").on('click', function() {
								var adminname = $("#adminname").val();
								var password = $("#password").val();
								console.debug(adminname + password);
								$.post("/javaweb_project2/backstagelogin", {
									adminname : adminname,
									password : password
								}, function(data, status) {
									console.debug("xxxx" + data);
									if (status == "success") {
										if (data== null) {
											
										} else {
										   console.debug("not null");
											
										 
							
											console.debug(data);
											$(".pull-left p").html(data);
											$("#loginbox").hide();
											$("#mask").hide();
											
										}
									}
								},"json");

							});
							
						});

					</script>
</body>
</html>
