package com.test;

import com.dao.carDao;
import com.entity.Car;
import com.service.carService;
import org.junit.Test;

public class carTest {
    @Test
    public static void main(String[] args) {
        carDao carDao =new carDao();
        Car car =new Car();

        car.setName("02CarTestName");
        car.setBz("02CarTestBz");

        //新增
        int num =carDao.insertCarByObject(car);
        System.out.println(num);



    }
}
