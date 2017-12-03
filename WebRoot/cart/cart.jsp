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
    
    <title>My JSP 'cart.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" href="/javaweb_project2/cart/css/reset.css">
<link rel="stylesheet" href="/javaweb_project2/cart/css/carts.css">
  </head>
  
  <body>
<section class="cartMain">
	<div class="cartMain_hd">
		<ul class="order_lists cartTop">
			<li class="list_chk">
				<!--所有商品全选-->
				<input type="checkbox" id="all" class="whole_check">
				<label for="all"></label>
				全选
			</li>
			<li class="list_con">商品信息</li>
			<li class="list_info">商品参数</li>
			<li class="list_price">单价</li>
			<li class="list_amount">数量</li>
			<li class="list_sum">金额</li>
			<li class="list_op">操作</li>
		</ul>
	</div>

	<div class="cartBox">
		<div class="shop_info">
			<div class="all_check">
				<!--店铺全选-->
				<input type="checkbox" id="shop_a" class="shopChoice">
				<label for="shop_a" class="shop"></label>
			</div>
			<div class="shop_name">
				<a href="/javaweb_project2/Ninestars/index.jsp">返回继续购物</a>
			</div>
		</div>
		<div class="order_content">
		   <c:forEach items="${SESSION_CART_PRO}" var="pro">
			<ul class="order_lists">
				<li class="list_chk">
					<input type="checkbox" id="checkbox_${pro.productId}" class="son_check">
					<label for="checkbox_2"></label>
				</li>
				<li class="list_con">
					<div class="list_img"><a href="javascript:;"><img src="/javaweb_project2/Ninestars/img/miimg/minote3.png" alt=""></a></div>
					<div class="list_text"><a href="javascript:;">${pro.model}</a></div>
				</li>
				<li class="list_info">
					<p>颜色：${pro.color}</p>
					<p>版本：${pro.version}</p>
				</li>
				<li class="list_price">
					<p class="price">${pro.price}</p>
				</li>
				<li class="list_amount">
					<div class="amount_box">
						<a href="javascript:;" class="reduce reSty">-</a>
						<input type="text" value="1" class="sum" id="proSum">
						<a href="javascript:;" class="plus">+</a>
					</div>
				</li>
				<li class="list_sum">
					<p class="sum_price">￥${pro.price}</p>
				</li>
				<li class="list_op">
					<p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
				</li>
			</ul>
			</c:forEach>
			<form id="form_to_order" action="/javaweb_project2/orderservlet" method="get">
			<input type="hidden" name="proNum" id="proNum" value="1">
			</form>
<!-- 			<ul class="order_lists">
				<li class="list_chk">
					<input type="checkbox" id="checkbox_3" class="son_check">
					<label for="checkbox_3"></label>
				</li>
				<li class="list_con">
					<div class="list_img"><a href="javascript:;"><img src="/javaweb_project2/cart/images/book-02.jpg" alt=""></a></div>
					<div class="list_text"><a href="javascript:;">看见</a></div>
				</li>
				<li class="list_info">
					<p>规格：默认</p>
					<p>尺寸：16*16*3(cm)</p>
				</li>
				<li class="list_price">
					<p class="price">￥29</p>
				</li>
				<li class="list_amount">
					<div class="amount_box">
						<a href="javascript:;" class="reduce reSty">-</a>
						<input type="text" value="1" class="sum">
						<a href="javascript:;" class="plus">+</a>
					</div>
				</li>
				<li class="list_sum">
					<p class="sum_price">￥29</p>
				</li>
				<li class="list_op">
					<p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
				</li>
			</ul>
			<ul class="order_lists">
				<li class="list_chk">
					<input type="checkbox" id="checkbox_6" class="son_check">
					<label for="checkbox_6"></label>
				</li>
				<li class="list_con">
					<div class="list_img"><a href="javascript:;"><img src="/javaweb_project2/cart/images/book-03.jpg" alt=""></a></div>
					<div class="list_text"><a href="javascript:;">改变孩子先改变自己</a></div>
				</li>
				<li class="list_info">
					<p>规格：默认</p>
					<p>尺寸：16*16*3(cm)</p>
				</li>
				<li class="list_price">
					<p class="price">￥22</p>
				</li>
				<li class="list_amount">
					<div class="amount_box">
						<a href="javascript:;" class="reduce reSty">-</a>
						<input type="text" value="1" class="sum">
						<a href="javascript:;" class="plus">+</a>
					</div>
				</li>
				<li class="list_sum">
					<p class="sum_price">￥22</p>
				</li>
				<li class="list_op">
					<p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
				</li>
			</ul> -->
		</div>
	</div>

	<div class="cartBox">
		<div class="shop_info">
			<div class="all_check">
				
			
				
	<!--底部-->
	<div class="bar-wrapper">
		<div class="bar-right">
			<div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
			<div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
			<div class="calBtn"><a href="javascript:to_order();">结算</a></div>
		</div>
	</div>
</section>
<section class="model_bg"></section>
<section class="my_model">
	<p class="title">删除宝贝<span class="closeModel">X</span></p>
	<p>您确认要删除该宝贝吗？</p>
	<div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
</section>

<script src="/javaweb_project2/cart/js/jquery.min.js"></script>
<script src="/javaweb_project2/cart/js/carts.js"></script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">

</div>
<script>
function to_order(){
console.debug($("#proSum").val()+"xxxxx");
$("#proNum").val($("#proSum").val());
$("#form_to_order").submit();}
</script>
</body>
</html>
