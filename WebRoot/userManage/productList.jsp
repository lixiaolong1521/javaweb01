<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">

</script>
<title>Insert title here</title>
</head>
<body>
	<form action="/javaweb_project2/shoppingcart?cmd=show1" method="post">
	<input type="submit" id="a" value="刷新">
	
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<table class="table">
					<thead>
						<tr>
							<th>编号</th>
							<th>产品</th>
							<th>交付时间</th>
							<th>状态</th>
						</tr>
					</thead>
					<tbody>
						
						<c:forEach items="${prolist}" var="po" varStatus="vs">
							<tr style="background-color: ${vs.count%2==0?'pink':''}">
								<td>${po.proId}</td>
								<td>${po.proName}</td>
								<td>${po.proPrice}</td>
								<td>${po.proNum}</td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	</form>
</body>
</html>