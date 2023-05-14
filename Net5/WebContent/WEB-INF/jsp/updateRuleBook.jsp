<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
%>
<html>
<head>
    <title>修改书籍分类</title>

    <%--    bootstrop美化--%>
    <link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍分类</small>
                </h1>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/rulebook/updateRuleBook" method="post">

            <input type="hidden" name="rID" value="${QRuleBook.rID}">
            <div class="form-group">
                <label >书籍分类名称：</label>
                <input type="text" name="rName" class="form-control" value="${QRuleBook.rName}" required>
            </div>
            <div class="form-group">
                <label >书籍分类备注：</label>
                <input type="text" name="rOther" class="form-control" value="${QRuleBook.rOther}" >
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="修改"  >
            </div>

        </form>
    </div>


</div>
</body>
</html>