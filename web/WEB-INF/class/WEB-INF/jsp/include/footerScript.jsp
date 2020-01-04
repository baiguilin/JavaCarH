<%--
  Created by IntelliJ IDEA.
  User: guichun
  Date: 2019/12/16
  Time: 9:12 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set value="${pageContext.request.contextPath}" scope="page" var="jcs"></c:set>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<base href="<%=basePath%>">

<script src="${jcs}/H+/js/jquery.min.js?v=2.1.4"></script>
<script src="${jcs}/H+/js/bootstrap.min.js?v=3.3.6"></script>
<script src="${jcs}/H+/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${jcs}/H+/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${jcs}/H+/js/plugins/layer/layer.min.js"></script>
<script src="${jcs}/H+/js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="${jcs}/H+/js/contabs.min.js"></script>
<script src="${jcs}/H+/js/plugins/pace/pace.min.js"></script>

</body>
</html>