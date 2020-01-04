package com.utils;

public class Tools {

    // 判断字符串是否为空
    public static boolean empty(String str){
        if(str==null){
            return true;
        }else{
            str = str.trim();
            if("".equals(str) || "null".equals(str)){
                return true;
            }
        }
        return false;
    }

}
