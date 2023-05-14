<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
	String path = request.getContextPath();
%>
<html>
<head>
<title>新增书籍分类</title>

<%--    bootstrop美化--%>
<link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="page-header">
					<h1>
						<small>新增书籍分类</small>
					</h1>
				</div>
			</div>

			<form action="${pageContext.request.contextPath}/rulebook/addRuleBook"
				method="post">
				<div class="form-group">
					<label>书籍分类名称：</label> <input type="text" name="rName"
						class="form-control" required>
				</div>
				<div class="form-group">
					<label>书籍描述备注：</label> <input type="text" name="rOther"
						class="form-control" >
				</div>
				<div class="form-group">
					<input type="submit" class="form-control" value="添加">
				</div>

			</form>
		</div>


	</div>
</body>
</html>
