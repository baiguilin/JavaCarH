package com.dao;

import com.baseData.baseData;
import com.entity.Car;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class carDao {

    //新增
    public int insertCarByObject(Car car){
        int count=0;
        String sql = "INSERT INTO `car`(`name`,`bz`) VALUES(?,?) ";
        try {
            Connection connection =baseData.getConn();
            PreparedStatement statement =connection.prepareStatement(sql);
            statement.setString(1,car.getName());
            statement.setString(2,car.getBz());
            count=statement.executeUpdate();
            baseData.close(connection,statement,null);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return count;
    }

    //修改
    public int updateCarByObject(Car car){
        int count=0;
        String sql ="UPDATE `car` SET `name`=?,`bz`=? WHERE `id`=?";
        try {
            Connection connection =baseData.getConn();
            PreparedStatement statement =connection.prepareStatement(sql);
            statement.setString(1,car.getName());
            statement.setString(2,car.getBz());
            statement.setInt(3,car.getId());
            count=statement.executeUpdate();
            baseData.close(connection,statement,null);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return count;
    }

    //删除
    public int deleteCarById(int id){
        int count = 0;
        String sql = "DELETE FROM `car` WHERE `id`=?";
        try {
            Connection connection =baseData.getConn();
            PreparedStatement statement =connection.prepareStatement(sql);
            statement.setInt(1,id);
            count=statement.executeUpdate();
            baseData.close(connection,statement,null);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return count;
    }

    //总数
    public int GetCarCount(){
        int count = 0;
        String sql = "SELECT count(`id`) FROM `car`";
        try {
            Connection connection =baseData.getConn();
            PreparedStatement statement =connection.prepareStatement(sql);
            ResultSet resultSet =statement.executeQuery();
            while(resultSet.next()){
                count = resultSet.getInt(1);
            }
            baseData.close(connection,statement,resultSet);

        }catch (SQLException e){
            e.printStackTrace();
        }
        return count;
    }

    //查询
    public Car selectCarById(int id){
        Car car =null;
        String sql ="SELECT `id`,`name`,`bz` FROM `car` WHERE `id`=?";
        try {
            Connection connection =baseData.getConn();
            PreparedStatement statement =connection.prepareStatement(sql);
            statement.setInt(1,id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                car =new Car();
                car.setId(resultSet.getInt(1));
                car.setName(resultSet.getString(2));
                car.setBz(resultSet.getString(3));
            }
            baseData.close(connection,statement,resultSet);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return car;
    }

    //查询所以
    public List<Car> selectAllCar(int begin,int end){
        List<Car> list =new ArrayList<>();
        String sql = "SELECT `id`,`name`,`bz` FROM `car` LIMIT ?,?";
        try {
            Connection connection=baseData.getConn();
            PreparedStatement statement =connection.prepareStatement(sql);
            statement.setInt(1,begin);
            statement.setInt(2,end);
            ResultSet resultSet =statement.executeQuery();
            while (resultSet.next()){
                Car car =new Car();
                car.setId(resultSet.getInt(1));
                car.setName(resultSet.getString(2));
                car.setBz(resultSet.getString(3));
                list.add(car);
            }
            baseData.close(connection,statement,resultSet);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }
}






















