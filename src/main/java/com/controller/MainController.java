package com.controller;

import com.domain.UserInfo;
import com.service.UserInfoService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @RequestMapping(value = "/", method = {RequestMethod.HEAD, RequestMethod.GET})
    public String indexPage(ModelMap modelMap) {
        return "index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(ModelMap modelMap) {
        modelMap.put("login_error", "Неверный логин или пароль");
        return "index";
    }


}