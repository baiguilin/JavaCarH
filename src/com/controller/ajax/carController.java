package com.controller.ajax;

import com.utils.Tools;
import org.json.JSONArray;
import com.entity.Car;
import com.service.carService;
import org.apache.commons.beanutils.BeanUtils;
import org.json.JSONException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "carController",urlPatterns = {"/ajax/carController.do"})
public class carController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //创建json和map集合
        Map<String,String> tipsMap=new HashMap<>();
        JSONArray jsonArray =new JSONArray();
        Car car =new Car();
        try {
            BeanUtils.populate(car,req.getParameterMap());
        } catch (Exception e) {
            e.printStackTrace();
        }
        String type=req.getParameter("type");
        if ("insert".equals(type) && !Tools.empty(car.getName()) && !Tools.empty(car.getBz())){
            tipsMap =new carService().insertCar(car);
        }else if ("update".equals(type) && !Tools.empty(car.getName()) && !Tools.empty(car.getBz())){
            if (car.getId() !=0){
                tipsMap =new carService().updateCar(car);
            }else {
                tipsMap.put("code","403");
                tipsMap.put("msg","不存在，无法操作！");
            }
        }else if ("select".equals(type) && car.getId()!=0){
            tipsMap =new carService().getCarById(car.getId());
        }else {
            tipsMap.put("code","403");
            tipsMap.put("msg","无效请求！");
        }
        jsonArray.put(tipsMap);
        try {
            resp.getWriter().print(jsonArray.getString(0));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
