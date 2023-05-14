<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<style type=text/css>
		body {
			text-align: center;
			padding-bottom: 0px;
			background-color: #ddeef2;
			margin: 0px;
			padding-left: 0px;
			padding-right: 0px;
			padding-top: 0px
		}

		A:link {
			COLOR: #000000;
			text-decoration: none
		}

		A:visited {
			COLOR: #000000;
			text-decoration: none
		}

		A:hover {
			COLOR: #ff0000;
			text-decoration: underline
		}

		A:active {
			text-decoration: none
		}

		.input {
			border-bottom: #ccc 1px solid;
			border-left: #ccc 1px solid;
			line-height: 20px;
			width: 182px;
			height: 20px;
			border-top: #ccc 1px solid;
			border-right: #ccc 1px solid
		}

		.input1 {
			border-bottom: #ccc 1px solid;
			border-left: #ccc 1px solid;
			line-height: 20px;
			width: 120px;
			height: 20px;
			border-top: #ccc 1px solid;
			border-right: #ccc 1px solid;
		}
	</style>
</head>
<body>

		<form action="${pageContext.request.contextPath}/user/login" method="post">
			<center>
		<table>
			<tr>
				<td>用户名:</td>
				<td><input id="username" name="username" type="text" /></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input id="password" name="password" type="password" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="登录"></td>
			</tr>
		</table>
			</center>
	</form>
</body>
</html>
