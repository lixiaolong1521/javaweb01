<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script type="text/javascript">
//检查账号是否存在
function checkUserName() {
	var username = document.getElementsByName("nickname").value;
	//1.创建Ajax对象
	var ajax = createAjax();
	ajax.open("get","/javaweb_project2/changeInfo?nickname="+nickname);
	//获取请求状态  异步  回调函数
	ajax.onreadystatechange = function() {
		if(ajax.readyState == 4 && ajax.status == 200){//接收响应数据
			var text =  ajax.responseText;
			document.getElementById("checkNick").innerHTML = text;
		}
	};
	//3.发送请求
	ajax.send();	
}
//创建Ajax对象
function createAjax() {
	var ajax;
	try {
		ajax = new XMLHttpRequest();
		
	} catch (e) {
		// : handle exception
		ajax = new ActiveXObject();
	}
	return ajax;
}
</script> 
</head>
<body>
	<div>
		<h1>基本信息</h1>
		<form action="/javaweb_project2/changeInfo?cmd=changeinfo" method="post">
		<p>头&nbsp;像&nbsp;:&nbsp;</p>
		<p>昵&nbsp;称&nbsp;:&nbsp;<input type="text" onblur="checkUserName()" name="nickname" placeholder="${sessionScope.USER_IN_SESSION.nickname}"><span id="checkNick"></span></p>
		<script>document.getElementsByName("sex")[0].checked="checked";</script>
		<p>
		性&nbsp;别&nbsp;:
		<label for="male">&nbsp;男&emsp;<input type="radio" name="sex" id="male" value="男"></label>
		<label for="female">&nbsp;女&emsp;<input type="radio" name="sex" id="female" value="女"></label>
		</p>
		<p>手机号&nbsp;:&nbsp;<input type="text" name="tel" placeholder="${sessionScope.USER_IN_SESSION.tel}"></p>
		<p>电子邮件&nbsp;:&nbsp;<input type="text" name="email" placeholder="${sessionScope.USER_IN_SESSION.email}"></p>
		<input type="submit" value="保存">
		</form>
	</div>
</body>
</html>