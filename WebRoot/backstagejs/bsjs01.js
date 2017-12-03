function showallorders(){
	liRemoveActive();
	$("#orderM").addClass("active");
	console.debug("showallorders()");
	$.post("/javaweb_project2/AllOrder", function(
			data, status) {
		if (status == "success") {
			console.debug("success");
			$("#breadcrumb").html("<li><a href='#'><i class='fa fa-dashboard'></i> 订单列表</a></li>");
			var info="<table class='table'><caption>订单信息</caption><thead><tr><th>ID</th><th>下单日期</th><th>订单内容</th><th>订单价格</th><th>买家昵称</th><th>联系电话</th><th>收货地址</th><th>订单状态</th><th>买家状态</th></tr></thead><tbody>";
			$("#sqlData").empty();
			$.each(data,function(index,order){
			info+="<tr><td>"+order.orderId+"</td><td>"+order.orderDate+"</td><td>"+order.orderContent+"</td><td>"+order.orderPrice+"</td><td>"+order.userName+"</td><td>"+order.phoneNumber+"</td><td>"+order.address+"</td><td>"+order.orderStatus+"</td><td>"+order.saleStatus+"</td></tr>";
			});
			info+="</tbody></table>";
			$("#sqlData").html(info);
		}
	});
}
/*function showallproducts(){
	liRemoveActive();
	$("#proList").addClass("active");
	console.debug("showallproducts()");
	$.post("/javaweb_project2/prolistbs", function(
			data, status) {
		if (status == "success") {
			console.debug("success");
			console.debug("xxxx"+data);
			$("#breadcrumb").html("<li><a href='#'><i class='fa fa-dashboard'></i>商品管理</a></li> <li class='active'>商品列表</li>");
			var info="<table class='table'><caption><button class='btn btn-primary btn-lg' data-toggle='modal' data-target='#myModal'>新增商品</button></caption><thead><tr><th>ID</th><th>品牌</th><th>手机型号</th><th>图片</th><th>售价</th><th>颜色</th><th>内存</th><th>库存</th><th>版本</th></tr></thead><tbody>";
			$("#sqlData").empty();
			$.each(data,function(index,product){
			info+="<tr><td>"+product.productId+"</td><td>"+product.brand+"</td><td>"+product.model+"</td><td>"+product.img+"</td><td>"+product.price+"</td><td>"+product.color+"</td><td>"+product.storageCapacity+"</td><td>"+product.inventoryNumber+"</td><td>"+product.version+"</td></tr>";
			});
			info+="</tbody></table>";
			$("#sqlData").html(info);
		}
	});
}*/
function liRemoveActive(){
	$("#sidebarMenu li").removeClass("active");
}
function addProduct()
{   /*$("#form_addProduct").submit();*/
	/*$("#addresult").reset();
	$("#form_addProduct").reset();*/
	alert("xxx");
	$.post("/javaweb_project2/addproduct",$("#form_addProduct").serialize(), function(
			data, status) {
		if (status == "success") {
		   $("#addresult").html(data);
		}
		else{
			$("#addresult").html(data);
		}
		
	});
	}

/*function loginClick()
{var str = $("#loginBtnC").html();
	if(str=="登录")
		{alert("login");
		$("#loginBtnC").attr("href","/javaweb_project2/login/login.jsp");}
	else
		{alert("register");
		$("#loginBtnC").attr("href","/javaweb_project2/login/register.jsp");
		 }
	}*/
/*$(function(){
	$("#sidebarMenu li").click(function(){
		$("#sidebarMenu li").removeClass("active");
		
	});

});*/