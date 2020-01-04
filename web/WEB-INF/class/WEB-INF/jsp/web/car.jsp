<%--
  Created by IntelliJ IDEA.
  User: guichun
  Date: 2019/12/18
  Time: 9:30 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/jsp/include/headCss.jsp"></jsp:include>
<div class="row">
<%--    新增--%>
    <div class="col-sm-6">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>新增数据</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-wrench"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user"></ul>
                    <a class="close-link">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
            </div>
            <form role="form">
                <div class="col-md-12">
                    <div class="form-group"></div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">名称：</label>
                        <div class="col-sm-9">
                            <input type="text" name="" id="addCarName" class="form-control tips" placeholder="请输入名称...">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">备注：</label>
                        <div class="col-sm-9">
                            <input type="text" name="" id="addCarBz" class="form-control tips" placeholder="请输入备注...">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12 col-sm-offset-3">
                            <button class="btn btn-primary carSave">保存</button>
                            <button class="btn btn-white" onclick="carClose()">关闭</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="col-sm-6">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>数据表格</h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-wrench"></i>
                </a>
                <ul class="dropdown-menu dropdown-user"></ul>
                <a class="close-link">
                    <i class="fa fa-times"></i>
                </a>
            </div>
        </div>
<div class="ibox-content">
    <div class="row">
        <div class="col-sm-3">
            <div class="input-group">
                <button class="btn btn-primary" onclick="openIfr()">新增</button>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="input-group">
                <input type="text" placeholder="请输入关键词" class="input-sm form-control"> <span class="input-group-btn">
                <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="input-group">
<%--                <jsp:include page="/WEB-INF/jsp/include/page.jsp"></jsp:include>--%>
            </div>
        </div>
    </div>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
            <tr>
                <th align="center">#</th>
                <th align="center">名称</th>
                <th align="center">备注</th>
                <th align="center">操作</th>
            </tr>
            </thead>
            <tbody>
           <c:forEach items="${requestScope.page.list}" var="car">
            <tr id="data_car_${car.id}">
                <td>
                        ${car.id}
                </td>
                <td class="col-md-2 car_name">
                        ${car.name}
                </td>
                <td class="car_bz">
                        ${car.bz}
                </td>
                <td>
                    <a class="btn btn-info btn-xs edit_car" id="edit_car_${car.id}"><i class="fa fa-edit"></i> 编辑</a>
                    <a class="btn btn-danger btn-xs delete_car" id="delete_car_${car.id}"><i class="fa fa-edit"></i> 删除</a>
                </td>
            </tr>
           </c:forEach>
            </tbody>
        </table>
    </div>
</div>
    </div>
</div>
<%--    修改--%>
    <div class="col-sm-6">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>修改数据</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-wrench"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user"></ul>
                    <a class="close-link">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
            </div>
    <form role="form">
        <div class="col-md-12">
            <div class="form-group"></div>
            <div class="form-group">
                <label class="col-sm-3 control-label">名称：</label>
                <div class="col-sm-9">
                    <input type="text" name="" id="editCarName" class="form-control tips" placeholder="请输入名称...">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">备注：</label>
                <div class="col-sm-9">
                    <input type="text" name="" id="editCarBz" class="form-control tips" placeholder="请输入备注...">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12 col-sm-offset-3" style="margin-top: 12px">
                    <button class="btn btn-primary carSave_edit">保存</button>
                </div>
            </div>
        </div>
    </form>
</div>
    </div>
</div>
</div>
<jsp:include page="/WEB-INF/jsp/include/footerScript.jsp"></jsp:include>
<script src="${jcs}/H+/js/Iframe.js"></script>
<script src="${jcs}/H+/js/carjs.js"></script>
<script type="text/javascript">
    function openIfr() {
        openIframe.type02("新增数据",['add.html','no']);
    }
</script>