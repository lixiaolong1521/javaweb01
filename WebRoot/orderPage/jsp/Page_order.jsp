<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>确认订单信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="/javaweb_project2/orderPage/css/Page_order.css">
	<script type="text/javascript" src="/javaweb_project2/orderPage/js/jquery-2.1.3.js"></script>
     <script type="text/javascript" src="/javaweb_project2/orderPage/js/Page_order.js"></script>
  </head>
  
  <body>
    <div class="container">
	<div class="row top">
	    <div class="logo"><a><img alt="#" src="/javaweb_project2/orderPage/image/chuizi.png"></a></div>
		<div class="col-md-6 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-left">
						<li class="active">购物车  >></li>
						<li>确认订单  >></li>
						<li>在线支付  >></li>
						<li>完成</li>
						</ul>
				</div>
				
			</nav>
		</div>
		<div class="col-md-6 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-right">
					    <li class="active">
							 <a href="#"><img alt="#" src="/javaweb_project2/orderPage/image/yonghu.png">用户名</a>
						</li>
						<li>
							 <a href="#"><img alt="#" src="/javaweb_project2/orderPage/image/xiaoxi.png">消息</a>
						</li>
						<li class="active">
							 <a href="#">我的</a>
						</li>
						<li>
							 <a href="#">首页</a>
						</li>
						<li>
							 <a href="#"><img alt="#" src="/javaweb_project2/orderPage/image/gouwuche.png">购物车</a>
						</li>
						<li>
							 <a href="#"><img alt="#" src="/javaweb_project2/orderPage/image/shoucang.png">收藏夹</a>
						</li>
						<li>
							 <a href="#"><img alt="#" src="/javaweb_project2/orderPage/image/daohang.png ">网站导航</a>
						</li>
					</ul>
					
				</div>
				
			</nav>
		</div>
	</div>
	<div class="row order">
		<div class="col-md-12 czcontainer">
			<div class="row address">
				<div class="col-md-6 address-title">
				收货人信息
				</div>
				<ul class="address-add">
				  <li class="address-add-checkbox">
				    <div class="address-add-icon"><a href="/javaweb_project2/orderPage/jsp/add-address.jsp"><img alt="#" src="/javaweb_project2/orderPage/image/tianjia.png"></a></div>
				    <div class="address-add-text">添加收货地址</div>
				  </li>
				</ul>
			</div>
			<div class="row order-product">
				<div class="col-md-12 order-product-title">确认订单信息</div>
				<div id="orderProductList" class="order-product-list">
				   <table class="order-product-table" cellpadding="0" cellspacing="0">
				     <thead>
				       <tr>
				         <th class="order-product-table-name">
				           <div class="order-product-supplier">
				                                供应商:
				             <span>中软科技</span>
				           </div>
				         </th>
				         <th class="order-product-table-price">价格</th>
				         <th class="order-product-table-num">数量</th>
				         <th class="order-product-table-total">小计</th>
				         <th class="order-product-table-express">配送方式</th>
				       </tr> 
				     </thead>
				     <tbody>
				       <c:forEach items="${SESSION_CART_PRO}" var="pro">
				       <tr>
				         <td class="order-product-table-name">
				           <a>
				             <img alt="#" src="/javaweb_project2/orderPage/image/shouji.jpg" style="display: inline; margin-top: 20px;">
				           </a>
				           <div class="order-product-name">
				             <a class="order-product-link">
				               <p class="order-product-name-item">${pro.model}</p>
				               <p class="order-product-name-item last">${pro.version}/${pro.color}/${pro.storageCapacity}</p>
				             </a>
				           </div>
				         </td>
				         <td class="order-product-table-price">
				           <p>
				             <span class="order-product-price">¥${pro.price}</span>
				           </p>
				         </td>
				         <td class="order-product-table-num">1</td>
				         <td class="order-product-table-total">
				           <p class="order-product-price red" id="allPrice">¥${pro.price}</p>
				         </td>
				         <td class="order-product-table-express">
				           <p style="font-weight: 400;list-style:none;font-size: 15px; ">
				                                  快递配送:运费
				             <span class="order-product-price red">¥ 0.00</span>
				           </p>
				           <div class="order-product-arrival" style="color: #666;font-size: 15px;">
				             <p>
				               <img alt="#" src="/javaweb_project2/orderPage/image/shandian.png" style="vertical-align: middle;">
				                                            次日达
				             </p>
				             <p>19:00前下单并支付,</p>
				             <p>
				                                             预计
				               <strong>明日(11月22日)</strong>
				                                             送达
				             </p>
				           </div>
				         </td>
				       </tr>
				       </c:forEach>
				     </tbody>
				     <tfoot>
				       <tr style="background-color: #f5f5f5; height: 108px;">
				         <td colspan="5">
				           <div class="order-product-info">
				             <div class="order-product-invoice clearfix">
				               <div class="order-product-invoice-type">
				                                                   发票类型 :电子发票 
				                <div class="order-product-invoice-icon"><img alt="#" src="/javaweb_project2/orderPage/image/wenhao.png"></div>
				               </div>
				               <div class="order-product-invoice-info">
				                 <p>
				                                                         发票抬头:
				                   <span class="order-product-invoice-title">默认为收货人姓名</span>
				                   <span class="order-product-invoice-edit">修改</span>
				                 </p>
				               </div>
				             </div>
				             <div class="order-product-remark">
				               <span class="order-product-remark-title">备注</span>
				               <textarea class="order-product-remark-input" placeholder="备注..." maxlength="45"></textarea>
				             </div>
				           </div>
				           <div class="order-product-total">
				                               
				           </div>
				         </td>
				       </tr>
				     </tfoot>
				   </table>
				</div>
			</div>
			<div id="orderTotal" class="order-total clearfix">
				<div class="order-total-pay">
				  <div class="oreder-total-pay-header">选择支付方式</div>
				  <div class="oreder-total-pay-content">
				    <div class="order-total-pay-row clearfix">
				      <div class="order-total-pay-title">支付宝</div>
				      <div class="order-total-pay-radio">
				        <input type="radio" style="display: inline-block;float: left;margin-top: 15px; margin-right: 5px;">
				      </div>
				      <div><img alt="#" src="/javaweb_project2/orderPage/image/zhifubao.png"></div>
				    </div>
				    <div class="order-total-pay-row clearfix" style="margin-top: 30px;">
				       <div class="order-total-pay-title"><a href="javascript:showAllPrice();">微信支付</a></div>
				       <div class="order-total-pay-radio">
				         <input type="radio" style="display: inline-block;float: left;margin-top: 15px; margin-right: 5px;">
				       </div>
				       <div class="order-total-pay-radio">
				         <img alt="#" src="/javaweb_project2/orderPage/image/weixinzhifu.png">
				       </div>
				    </div>
				    <div></div>
				  </div>
				</div>
				<div class="order-total-content">
				  <div class="order-total-row">
				  总金额
				    <div class="order-total-price">
				      ¥<span id="totalPrice1">${priceAll}</span>
				    </div>
				  </div>
				  <div class="order-total-row">
				    运费
				    <div class="order-total-price">
				    ¥ 0.00
				    </div>
				  </div>
				  <div class="order-total-line"></div>
				  <div class="order-total-row">
				    应付:
				    <div class="order-total-price totle">
				     ¥<span id="totalPrice1">${priceAll}</span>
				    </div>
				  </div>
				  <div class="order-total-row clearfix">
				    <div class="order-total-valid"></div>
				    <div class="cz-btn"><a style="color: #FFF;" href="/javaweb_project2/orderPage//jsp/pay.jsp">提交订单</a></div>
				  </div>
				  <div class="order-total-tip"></div>
				</div>
			</div>
		</div>
	</div>
	
<!-- 	<div class="row footer" style="position:relative;">
		<div class="cz-container">
		  <section class="footer-top clearfix">
		    <ul class="footer-services clearfix">
		      <li class="footer-services-item">
		        <a class="footer-services-link" href="#">
		          <img alt="#" src="/javaweb_project2/orderPage/image/shunfengbaoyou.png">
		          <span class="footer-services-text">顺丰包邮</span>
		        </a>
		      </li>
		      <li class="footer-services-item">
		        <a class="footer-services-link" href="#">
		          <img alt="#" src="/javaweb_project2/orderPage/image/ciri.png">
		          <span class="footer-services-text">100+ 城市次日送达</span>
		        </a>
		      </li>
		      <li class="footer-services-item">
		        <a class="footer-services-link" href="#">
		          <img alt="#" src="/javaweb_project2/orderPage/image/fanhui.png">
		          <span class="footer-services-text">7 天无理由退货</span>
		        </a>
		      </li>
		      <li class="footer-services-item">
		        <a class="footer-services-link" href="#">
		          <img alt="#" src="/javaweb_project2/orderPage/image/xunhuan.png">
		          <span class="footer-services-text">15 天换货保障</span>
		        </a>
		      </li>
		      <li class="footer-services-item">
		        <a class="footer-services-link" href="#">
		          <img alt="#" src="/javaweb_project2/orderPage/image/banshou.png">
		          <span class="footer-services-text">1 年免费保修</span>
		        </a>
		      </li>
		      <li class="footer-services-item">
		        <a class="footer-services-link" href="#">
		          <img alt="#" src="/javaweb_project2/orderPage/image/weizhi.png">
		          <span class="footer-services-text">2300+ 线下体验店</span>
		        </a>
		      </li>
		      <li class="footer-services-item">
		        <a class="footer-services-link" href="#">
		          <img alt="#" src="/javaweb_project2/orderPage/image/diannao.png">
		          <span class="footer-services-text">远程支持服务</span>
		        </a>
		      </li>
		      <li class="footer-services-item">
		        <a class="footer-services-link" href="#">
		          <img alt="#" src="/javaweb_project2/orderPage/image/cangku.png">
		          <span class="footer-services-text">上门快修</span>
		        </a>
		      </li>
		    </ul>
		    <div class="footer-contact">
		      <p class="footer-contact-desc">24小时全国服务热线</p>
		      <a class="footer-contact-tel" href="tel:400-788-3333">400-788-3333</a>
		      <p>
		        <a class="footer-contact-online" href="#" onclick="window.open('http://live-i.meizu.com/live800/chatClient/chatbox.jsp?companyID=8957&configID=4&enterurl='+ encodeURIComponent(document.URL) + '&pagereferrer=' + encodeURIComponent(document.referrer) + '&info=&k=1', '_blank','height=775,width=1200,fullscreen=3,top=100,left=100,status=yes,toolbar=no,menubar=no,resizable=no,scrollbars=no,location=no,titlebar=no,fullscreen=no');">
		          <img alt="#" src="/javaweb_project2/orderPage/image/zaixiankefu.png" style="vertical-align: middle;">
		          <span class="text">在线客服</span>
		        </a>
		      </p>
		    </div>
		  </section>
		  
		  <section class="footer-bottom clearfix">
		    <ul style="margin-left: 200px;">
		      <li class="footer-interlock-item">
		        <a class="footer-interlock-link" style="padding-left: 0;" href="//www.meizu.com/about.html" target="_blank">了解锤子</a>
		      </li>
		      <li class="footer-interlock-item">
		        <a class="footer-interlock-link" href="http://hr.meizu.com/" target="_blank">加入我们</a>
		      </li>
		      <li class="footer-interlock-item">
		        <a class="footer-interlock-link" href="//www.meizu.com/contact.html" target="_blank">联系我们</a>
		      </li>
		      <li class="footer-interlock-item">
		        <a class="footer-interlock-link" href="http://www.flyme.cn/" target="_blank">Flyme</a>
		      </li>
		      <li class="footer-interlock-item">
		        <a class="footer-interlock-link" href="http://bbs.meizu.com" target="_blank">锤子社区</a>
		      </li>
		      <li class="footer-interlock-item">
		        <a class="footer-interlock-link" href="https://meizu.tmall.com/" target="_blank">天猫旗舰店</a>
		      </li>
		      <li class="footer-interlock-item">
		        <a class="footer-interlock-link" href="//www.meizu.com/authorization.html" target="_blank">问题反馈</a>
		      </li>
		      <li class="footer-interlock-item" style="border-right: none;">
		        <a class="footer-interlock-link" href="//www.meizu.com/authorization.html" target="_blank">线上销售授权名单公示</a>
		      </li>
		    </ul>
		    <div></div>
		  </section>
		</div>
	</div> -->
</div>
<script type="text/javascript">
	function showAllPrice(){
	console.debug($("#allPrice").html());
	console.debug($("#totalPrice1"));
	cosole.debug("#totalPrice2");
	$("#totalPrice1").html($("#allPrice").html());
	$("#totalPrice2").html($("#allPrice").html());
	console.debug($("#totalPrice1"));
	cosole.debug("#totalPrice2");
	}
	</script>
  </body>
</html>
