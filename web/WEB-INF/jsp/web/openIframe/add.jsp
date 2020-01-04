<%--
  Created by IntelliJ IDEA.
  User: guichun
  Date: 2019/12/20
  Time: 7:47 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/jsp/include/headCss.jsp"></jsp:include>

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

<jsp:include page="/WEB-INF/jsp/include/footerScript.jsp"></jsp:include>
<script type="text/javascript">
$(function () {
    $(".carSave").click(function () {
        var obj =$("#addCarName");
        var obj01 =$("#addCarBz");
        var name =obj.val();
        var bz =obj01.val();
        name=$.trim(name);
        bz=$.trim(bz);
        if (name=="" || bz==""){
            layer.tips('不可为空！','.tips');
        }else {
            $.post("/ajax/carController.do",{name:name,bz:bz,type:"insert"},function (data) {
                if (data.code==200){
                    // alert("操作成功");
                    layer.msg("操作成功！");
                    obj.val("");
                    obj01.val("");
                }else if (data.code==403){
                    layer.msg("操作失败");
                }else {
                    console.log("发生未知错误");
                }
                carClose();
                window.opener.location.reload();
            },"json");
        }
    });
});

function carClose() {
    var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
    parent.layer.close(index); //再执行关闭
}

</script>
