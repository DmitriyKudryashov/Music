package com.controller;

import com.domain.UserInfo;
import com.service.UserInfoService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;

@Controller

public class MyInfoController {


    @ModelAttribute(value = "userinfo")
    public UserInfo getUserInfo() {
        return UserInfoService.getUserInfo();
    }

    @RequestMapping(value = "/myinfo")
    @PreAuthorize("isAuthenticated()")
    public String myInfoPage(ModelMap modelMap){
        return "myinfo";
    }


    @RequestMapping(value = "/myinfoedit")
    @PreAuthorize("isAuthenticated()")
    public String userInfoEditPage(ModelMap modelMap) {
        modelMap.addAttribute("userinfonew", new UserInfo());
        return "myinfoedit";
    }


    @RequestMapping(value = "/myinfoedit", method = RequestMethod.POST)
    @PreAuthorize("isAuthenticated()")
    public String userInfoEditPageAction(@ModelAttribute("userinfonew") UserInfo userInfo, ModelMap modelMap) {
        UserInfoService.updateUserInfo(userInfo);
        modelMap.put("message_ok", "Изменения приняты");
        return myInfoPage(modelMap);
    }


}
