package com.service;

import com.dao.carDao;

import java.util.HashMap;
import java.util.Map;

public class deleteService {
    Map<String,String> tips =new HashMap<>();

    public Map<String,String> deleteCarById(int id){
        int num =new carDao().deleteCarById(id);
        if (num>0){
            tips.put("code","200");
            tips.put("msg","操作成功！");
        }else {
            tips.put("code","403");
            tips.put("msg","操作失败！");
        }
        return tips;
    }
}
