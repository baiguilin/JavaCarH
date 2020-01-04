<%--
  Created by IntelliJ IDEA.
  User: guichun
  Date: 2019/12/16
  Time: 9:14 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--head开始--%>
<jsp:include page="/WEB-INF/jsp/include/headCss.jsp"></jsp:include>
<%--head结束--%>
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
<%--左开始--%>
    <jsp:include page="/WEB-INF/jsp/include/leftNav.jsp"></jsp:include>


<%--    右开始--%>
    <jsp:include page="/WEB-INF/jsp/include/rightNav.jsp"></jsp:include>
</div>
<%--fooder开始--%>
<jsp:include page="/WEB-INF/jsp/include/footerScript.jsp"></jsp:include>
<%--fooder结束--%>