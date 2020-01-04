package com.service;

import com.dao.carDao;
import com.entity.Car;
import com.entity.Page;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class carService {
    private carDao carDao =new carDao();

    //查询
    public Map<String,String> getCarById(int id){
        Map<String,String> tipsMap=new HashMap<>();
        Car car =carDao.selectCarById(id);
        if (car !=null){
            tipsMap.put("code","200");
            tipsMap.put("msg","查询成功！");
            tipsMap.put("name",car.getName());
            tipsMap.put("bz",car.getBz());
        }else {
            tipsMap.put("code","403");
            tipsMap.put("msg","查询失败！");
        }
        return tipsMap;
    }

    //总数
    public int getCarCount(){
        return carDao.GetCarCount();
    }

    //获取当前页面
    public List<Car> getCar(int begin,int end){
        return carDao.selectAllCar(begin, end);
    }

    //新增
    public Map<String,String> insertCar(Car car){
        Map<String,String> tipsMap =new HashMap<>();
        int num=carDao.insertCarByObject(car);
        if (num>0){
            tipsMap.put("code","200");
            tipsMap.put("msg","添加成功！");
        }else {
            tipsMap.put("code","403");
            tipsMap.put("msg","添加失败！");
        }
        return tipsMap;
    }

    //修改
    public Map<String,String> updateCar(Car car){
        Map<String,String> tipsMap =new HashMap<>();
        int num =carDao.updateCarByObject(car);
        if (num>0){
            tipsMap.put("code","200");
            tipsMap.put("msg","修改成功！");
        }else {
            tipsMap.put("code","403");
            tipsMap.put("msg","修改失败！");
        }
        return tipsMap;
    }

    public Page getSearchCar(int nowPageNum,String url){
        int count =getCarCount();
        Page page =new Page(nowPageNum,count,url);
        List<Car> list = getCar(page.getStartIndex(),page.getPageSize());
        page.setList(list);
        return page;
    }
}
