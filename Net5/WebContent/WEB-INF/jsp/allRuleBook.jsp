<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书籍分类</title>
<link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍分类--------显示所有数据</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/rulebook/toAddRuleBook">新增书籍分类</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/rulebook/allRuleBook">显示全部书籍分类</a>
            </div>
            <div class="col-md-8 column">
                <form class="form-inline" action="${pageContext.request.contextPath}/rulebook/queryRuleBook" method="post" style="float: right">
                    <span style="color: red;font-weight: bold">
                        ${error}
                    </span>
                    <input type="text" name="queryRuleBookName" class="form-control" placeholder="请输入要查询的书籍分类名称">
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>分类编号</th>
                    <th>分类名称</th>
                    <th>分类备注</th>
                    <th>操作</th>
                </tr>
                </thead>

<%--                书籍从数据库查询 从list遍历--%>
                <tbody>
                <c:forEach var="rulebook" items="${list}">
                    <tr>
                        <td>${rulebook.rID}</td>
                        <td>${rulebook.rName}</td>
                        <td>${rulebook.rOther}</td>
                        <td>

                            <a href="${pageContext.request.contextPath}/rulebook/toUpdate?rID=${rulebook.rID}">修改</a>
                            &nbsp;  | &nbsp;
                            <a href="${pageContext.request.contextPath}/rulebook/deleteRuleBook/${rulebook.rID}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>