<%--
  Created by IntelliJ IDEA.
  User: guichun
  Date: 2019/12/16
  Time: 9:07 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>--%>
<c:set value="${pageContext.request.contextPath}" scope="page" var="jc"></c:set>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>JavaCarH+</title>

    <link rel="shortcut icon" href="${jc}/H+/favicon.ico">
    <link href="${jc}/H+/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${jc}/H+/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="${jc}/H+/css/animate.min.css" rel="stylesheet">
    <link href="${jc}/H+/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body>