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

    var EditCarId=0;
    $("[id*=edit_]").on("click",function () {
        var obj00 =$("#editCarName");
        var obj01=$("#editCarBz");
        obj00.val("");
        obj01.val("");
        var objs=$(this).parents("tr[id*=data_]");
        var ids=objs.attr("id");
        var s =ids.split("_");
        var type =s[1];
        EditCarId =s[2];
        if ($.trim(EditCarId)==""){
            alert("不可为空!");
        }else {
            $.post("/ajax/carController.do",{id:EditCarId,type:"select"},function (data) {
                if (data.code==200){
                    obj00.val(data.name);
                    obj01.val(data.bz);
                }else if (data.code==403){
                    alert("操作失败！");
                }else {
                    alert("发生未知错误！");
                }
            },"json");
        }
    });

    //保存修改
    $(".carSave_edit").on("click",function () {
        var obj00=$("#editCarName");
        var obj01=$("#editCarBz");
        var name =obj00.val();
        var bz = obj01.val();
        name=$.trim(name);
        bz=$.trim(bz);
        if (name=="" || bz==""){
            alert("不可为空！");
        }else if ($.trim(EditCarId)==""){
            alert("无法获取数据，无法操作！");
        }else {//update
            $.post("/ajax/carController.do",{name:name,bz:bz,id:EditCarId,type:"update",},function (data){
                if (data.code==200){
                    obj00.val("");
                    obj01.val("");
                    var dataobj = $("#data_car_"+EditCarId);
                    dataobj.children(".car_name").html(name);
                    dataobj.children(".car_bz").html(bz);
                }else if (data.code==403){
                    alert("修改失败！");
                }else {
                    console.log("发生未知错误！");
                }
            });
        }
    });

    //删除
    $("[id*=delete_]").on("click",function () {
        var obj = $(this).parents("tr[id*=data_]");
        var ids = obj.attr("id");
        var s = ids.split("_");
        var type = s[1];
        var id = s[2];
        if ($.trim(type)=="" && $.trim(id)==""){
            alert("无法获取，无法操作！");
        }else {
            layer.open({
                title: '是否删除此条数据？',
                content: '此操作为不可逆操作，一旦删除不可找回数据。',
                btn:['确定删除'],
                shadeClose:true,
                yes:function () {
                    $.post("/ajax/deleteController.do",{type:type,id:id},function (data) {
                        if (data.code==200){
                            layer.msg("删除成功！");
                        }else if (data.code==403){
                            layer.msg("删除失败！")
                        }else {
                            layer.msg("无法操作!")
                        }
                        window.location.reload();
                    },"json");
                }
            });
        }
    });
})
