$(function () {
    $(".carSave").click(function () {
        var carName =$("#addCarName").val();
        var carBz =$("#addCarBz").val();
        var name =carName.val();
        var bz =carBz.val();
        name=$.trim(name);
        bz=$.trim(bz);
        if (carName=="" || carBz==""){
            layer.tips('不可为空！','.tips');
        }else {
            $.post("/ajax/carController.do",{name:name,bz:bz,type:"insert"},function (data) {
                if (data.code==200){
                    layer.msg('操作成功！');
                    carName.val("");
                    carBz.val("");
                }else if (data.code==403){
                    layer.msg('操作失败！');
                }else {
                    layer.msg('发生未知错误！');
                }
            },"json");
        }
    });
})