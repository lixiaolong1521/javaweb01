<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


  <!DOCTYPE html>
<html >
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品购买</title>
<meta name="keywords" content="商品购买" />
<meta name="description" content="商品购买" />
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
 <link rel="stylesheet" type="text/css" href="/javaweb_project2/product/css/normalize.css"/>
 <script type="text/javascript" src="/javaweb_project2/product/js/jquery-1.9.1.min.js"></script>
 <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
 <script src="/javaweb_project2/product/js/common.js" type="text/javascript" charset="utf-8"></script>
   <script type="text/javascript">
  $(document).ready(function(){
	  var showproduct = {
		  "boxid":"showbox",
		  "sumid":"showsum",
		  "boxw":400,
		  "boxh":400,
		  "sumw":60,
		  "sumh":60,
		  "sumi":7,
		  "sums":5,
		  "sumsel":"sel",
		  "sumborder":1,
		  "lastid":"showlast",
		  "nextid":"shownext"
		  };//参数定+义	  
	 $.ljsGlasses.pcGlasses(showproduct);
  });
</script>
<style type='text/css'>
	*{ margin:0; padding:0;}
	
	#wrap{
		width:600px;
		height:400px;
		margin:50px auto;
	}
	#top{
		width:600px;
		height:140px;
		border-bottom:1px solid #bbb;
		font-family:'Microsoft yahei';
	}
	#top p{
		margin-bottom:15px;
	}
	#top p font{
		font-size:14px;
		color:#000;
		margin-right:15px;
	}
	#top p span{
		font-size:14px;
		color:#666;
		border:1px solid #999;
		display:inline-block;
		padding:8px;
		cursor:pointer;
	}
	#top p span.on{
		border:2px solid #f60;
		padding:7px;
		background:url(img/on.png) no-repeat right bottom;
	}
	#bottom{
		width:600px;
		height:159px;
		padding-top:20px;
		font-family:'Microsoft yahei';
	}
	#bottom p font{
		color:#f60;
		font-size:20px;
		margin-right:20px;
	}
	#bottom p a{
		font-size:14px;
		color:blue;
	}
	#bottom p a i{
		margin:0 5px;
		color:#90c;
	}
	#bottom button{
		width:330px;
		height:50px;
		font-family:'Microsoft yahei';
		margin-top:20px;
		font-size:20px;
		background:#f60;
		color:#fff;
		border:none;
		
	}
</style>
</head>
<body>
 <div class="showall">
	                <!--left -->
	                <div class="showbot">
                    <div id="showbox">
                        <img src="/javaweb_project2/product/images/1.jpg" width="400" height="400" />
                        <img src="/javaweb_project2/product/images/2.jpg" width="400" height="400" />
                        <img src="/javaweb_project2/product/images/3.jpg" width="400" height="400" />
                        <img src="/javaweb_project2/product/images/4.jpg" width="400" height="400" />
                        
                        
                    </div><!--展示图片盒子-->
                        <div id="showsum">
                        	<!--展示图片里边-->
                        </div>
                        <p class="showpage">
                            <a href="javascript:void(0);" id="showlast"> < </a>
                            <a href="javascript:void(0);" id="shownext"> > </a>
                        </p>
                        </div>
                        <!--conet -->
                        <div class="tb-property">
                        	<div class="tr-nobdr">
        
                        	    <h3>${productDetail.model}</h3>
                        		</div>
                        		
                        	<div id="wrap">
	<div id="top">
		
		<p id='color'>
			<font>机身颜色</font>
			<c:forEach items="${colors}" var="color">
			<span>${color}</span>
			
			</c:forEach>
			
		</p>
		<p id='rom'>
			<font>存储容量</font>
			<c:forEach items="${storages}" var="storage">
			<span>${storage}</span>
			</c:forEach>
		</p>
		<p id='banben'>
			<font>版本</font>
			<c:forEach items="${versions}" var="version">
			<span>${version}</span>
			</c:forEach>
			<!-- <span>公开版</span>
			<span>移动赠费版</span>
			<span>联通合约版</span> -->
			
		</p>
	</div>
	<form id="calprice">
	<input type="hidden" id="chidden">
	<input type="hidden" id="shidden">
	<input type="hidden" id="vhidden">
	</form>
	<form action="/javaweb_project2/shoppingcart" id="form_cart">
	<input type="hidden" id="proId" name="proId" value="0" >
	</form>
	<div id="bottom">
		<p>价格： <font>￥ <span id='price'>${productDetail.price}</span></font></p>
		<!--<button>立即购买</button>-->
		<div class="gcIpt">
                        		<span class="guT">数量</span>
                        		<input id="min" name="" type="button" value="-" />  
                        		<input id="text_box" name="" type="text" value="1"style="width:30px; text-align: center; color: #0F0F0F;"/>  
                        		<input id="add" name="" type="button" value="+" />
                        		<span class="Hgt" id="inventoryNumber">库存（${productDetail.inventoryNumber}）</span>
                        	</div>
                        	
	</div>
	<div class="nobdr-btns">
                        		<button class="addcart hu"><img src="/javaweb_project2/product/images/shop.png" width="25" height="25"/><a href="javascript:join_cart()" >加入购物车</a></button>
                        		<button class="addcart yh"><img src="/javaweb_project2/product/images/ht.png" width="25" height="25"/><a href="/javaweb_project2/buyorder">立即购买</button>
                        	</div>
</div>

<script type="text/javascript">
	
	/*var mSpan = document.getElementById('color').getElementsByTagName('span');*/
	var cSpan = document.getElementById('color').getElementsByTagName('span');
	var rSpan = document.getElementById('rom').getElementsByTagName('span');
	var bSpan = document.getElementById('banben').getElementsByTagName('span');
	var aSpan = document.getElementsByTagName('span');
	var oModel = document.getElementById('color');
	var oRom = document.getElementById('rom');
	var oPrice = document.getElementById('price');

	/*mSpan[0].className = 'on';*/
	cSpan[0].className = 'on';
	rSpan[0].className = 'on';
	bSpan[0].className = 'on';

	for (var i=0;i<aSpan.length;i++ )
	{
		
	aSpan[i].onclick = function(){
			var siblings = this.parentNode.children;
			for (var j=0;j<siblings.length;j++ )
			{
				siblings[j].className = '';
			}
			this.className = 'on';
			
			if ( this.parentNode == oModel || this.parentNode == oRom )
			{
				price();
			}
		}; 
	};

/* 	function price(){
		var p1 = 0;
		var p2 = 0;
		for (var i=0;i<cSpan.length;i++ )
		{
			if ( rSpan[i].className == 'on' )
			{
				p1 = i?9688:2000;
				break;
			};
		};
		for (var i=0;i<rSpan.length;i++ )
		{
			if ( rSpan[i].className == 'on' )
			{
				switch ( i )
				{
					case 0:
						p2 = 0;
						break;
					case 1:
						p2 = 0;
						break;
					case 2:
						p2 = 0;
						break;
				}
			}
		};
		oPrice.innerHTML = p1+p2;
	}; */
</script>
                        	<script>
                        	$(document).ready(function(){ 
                          	var t = $("#text_box");
                        	$('#min').attr('disabled',true);
                            	$("#add").click(function(){    
                               	 t.val(parseInt(t.val())+1)
                               	 if (parseInt(t.val())!=1){
                                   	 $('#min').attr('disabled',false);
                                	}
      
                           	 }) 
                            
                            	$("#min").click(function(){
                                	t.val(parseInt(t.val())-1);
                                	if (parseInt(t.val())==1){
                                   	 $('#min').attr('disabled',true);
                                	}
      
                            	})  
                        	});
                        	</script>  
                        	
                        	
                        </div>
   </script>
                	<div class="detail">
                		<div class="active_tab" id="outer">
													<ul class="act_title_left" id="tab">
														<li class="act_active">
															<a href="#">商品介绍</a>
														</li>
									
														<li>
															<a href="#">商品评价</a>
														</li>
												
													</ul>
													<div class="clear"></div>
												</div>
												<div id="content" class="active_list"> 
													<!--商品介绍-->     
													<div id="ui-a" class="ui-a">
												        <ul style="display:block;">
												        <li>商品名称：Apple/苹果 iPhone X</li>
												        <li>证书编号：2017011606002271</li>
												        
												        <li>上架时间：2017-10-24</li>
												        <li>机身颜色: 深空灰色 银色</li>
												        <li>存储容量: 64GB 256GB</li>
												        
												        <li><img src="/javaweb_project2/product/images/5.jpg"/></li>
												           
												        </ul>
												   </div>
												   
												       
												 <!--商品评价-->      
												   
												    <div id="ui-c" class="ui-c">
												         <ul style="display:none;">
												         	
												         </ul>
												    </div>
												 
												<script>
													$(function(){
														window.onload = function()
														{
															var $li = $('#tab li');
															var $ul = $('#content ul');
																		
															$li.mouseover(function(){
																var $this = $(this);
																var $t = $this.index();
																$li.removeClass();
																$this.addClass('act_active');
																$ul.css('display','none');
																$ul.eq($t).css('display','block');
															})
														}
													});  
</script>
                	</div>
                </div>
   
 <script type="text/javascript">
/* if(typeof jQuery!='undefined'){
alert("jQuery library is loaded!");
} else{
alert("jQuery library is not found");

}

if(jQuery){  
 
   alert("jQuery library is loaded!");
 
    }else{
 
   alert("jQuery library is not found!");
 
   } */
   $(function(){
   $("#top span").click(function(){
   var color = $("#color span[class='on']").html();
   var rom = $("#rom span[class='on']").html();
   var banben=$("#banben span[class='on']").html();
   $.post("/javaweb_project2/pricenum", { color: color,storage:rom,version:banben },
  function(data,status){
    if (status == "success") {
    console.debug("success");
    $.each(data,function(index,dataxx){
  
    if(index==0)
    {
    $("#price").html(dataxx);
    }
    if(index==1)
    {
    console.debug("dataxxx"+dataxx);
    $("#inventoryNumber").html("库存("+dataxx+")");
    }
    if(index=2)
    {
    $("#proId").val(dataxx);
    }
    
    });
    }
  });
   });
   });
   function join_cart(){
   $("#form_cart").submit();
   }
</script>
	     
</body>
</html>