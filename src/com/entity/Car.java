package com.entity;

import java.util.HashMap;
import java.util.Map;

public class Car {
    private int id;
    private String name;
    private String bz;
    private Map attr =new HashMap();

    public Car() {

    };

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }

    public Map getAttr() {
        return attr;
    }

    public void setAttr(Map attr) {
        this.attr = attr;
    }
}
