<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link  href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script> -->
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	font-size: 14px;
	font-family: "Microsoft YaHei";
}

ul,li {
	list-style: none;
}

#tab {
	position: relative;
}

#tab .tabList ul li {
	float: left;
	background: #fefefe;
	background: -moz-linear-gradient(top, #fefefe, #ededed);
	background: -o-linear-gradient(left top, left bottom, from(#fefefe),
		to(#ededed) );
	background: -webkit-gradient(linear, left top, left bottom, from(#fefefe),
		to(#ededed) );
	border: 1px solid #ccc;
	padding: 5px 0;
	width: 100px;
	text-align: center;
	margin-left: -1px;
	position: relative;
	cursor: pointer;
}

#tab .tabCon {
	position: absolute;
	left: -1px;
	top: 32px;
	border: 1px solid #ccc;
	border-top: none;
	width: 403px;
	height: 100px;
}

#tab .tabCon div {
	padding: 10px;
	position: absolute;
	opacity: 0;
	filter: alpha(opacity = 0);
}

#tab .tabList li.cur {
	border-bottom: none;
	background: #fff;
}

#tab .tabCon div.cur {
	opacity: 1;
	filter: alpha(opacity = 100);
}
</style>
</head>
<body>
	<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">资料</a>
				</li>
				<li class="disabled">
					<a href="#">信息</a>
				</li>
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li>
							<a href="#">操作</a>
						</li>
						<li>
							<a href="#">设置栏目</a>
						</li>
						<li>
							<a href="#">更多设置</a>
						</li>
						<li class="divider">
						</li>
						<li>
							<a href="#">分割线</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
	<div id="tab" style="margin-left:460px;margin-top:20px">
		<div class="tabList">
			<ul>
				<li class="cur">菜单1</li>
				<li>菜单2</li>
				<li>菜单3</li>
				<li>菜单4</li>
			</ul>
		</div>
		<div class="tabCon">
			<div>内容11111111111111111111111111</div>
			<div class="cur">内容222222222222222222222222222</div>
			<div>内容33333333333333333333333</div>
			<div>内容4444444444444444444444444444</div>
		</div>
	</div>

	<script>
window.onload = function() {
    var oDiv = document.getElementById("tab");
    var oLi = oDiv.getElementsByTagName("div")[0].getElementsByTagName("li");
    var aCon = oDiv.getElementsByTagName("div")[1].getElementsByTagName("div");
    var timer = null;
    for (var i = 0; i < oLi.length; i++) {
        oLi[i].index = i;
        oLi[i].onmouseover = function() {
            show(this.index);
        }
    }
    function show(a) {
        index = a;
        var alpha = 0;
        for (var j = 0; j < oLi.length; j++) {
            oLi[j].className = "";
            aCon[j].className = "";
            aCon[j].style.opacity = 0;
            aCon[j].style.filter = "alpha(opacity=0)";
        }
        oLi[index].className = "cur";
        clearInterval(timer);
        timer = setInterval(function() {
            alpha += 2;
            alpha > 100 && (alpha = 100);
            aCon[index].style.opacity = alpha / 100;
            aCon[index].style.filter = "alpha(opacity=" + alpha + ")";
            alpha == 100 && clearInterval(timer);
        },
        5)
    }
}
</script>

</body>
</html>