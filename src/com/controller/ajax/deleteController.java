package com.controller.ajax;

import com.service.deleteService;
import com.utils.Tools;
import org.json.JSONArray;
import org.json.JSONException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "deleteController",urlPatterns = {"/ajax/deleteController.do"})
public class deleteController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /*创建相应JSON和Map集合*/
        Map<String,String> tipsMap = new HashMap<>();
        JSONArray jsonArray = new JSONArray();
        /*判断是否存在类型*/
        String type = req.getParameter("type");
        String id = req.getParameter("id");
        if(Tools.empty(type) && Tools.empty(id)){
            tipsMap.put("code","403");
            tipsMap.put("msg","非法请求!");
            jsonArray.put(tipsMap);
            return;
        }
        if("car".equals(type)){
            tipsMap = new deleteService().deleteCarById(Integer.parseInt(id));
            jsonArray.put(tipsMap);
            try {
                resp.getWriter().print(jsonArray.getString(0));
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return;
        }

    }
}
