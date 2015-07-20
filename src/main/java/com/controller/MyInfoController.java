package com.controller;

import com.domain.UserInfo;
import com.service.UserInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyInfoController {

    @ModelAttribute(value = "userinfo")
    public UserInfo getUserInfo() {
        return UserInfoService.getUserInfo();
    }

    @RequestMapping(value = "/myinfo")
    public String myInfoPage(){
        return "myinfo";
    }

    @RequestMapping(value = "/edit")
    public String userInfoEditPage(ModelMap modelMap) {
        modelMap.addAttribute("userinfonew", new UserInfo());
        return "myinfoedit";
    }

    @RequestMapping(value = "/myinfo", method = RequestMethod.POST)
    public void userInfoEditPage(@ModelAttribute("userinfonew") UserInfo userInfo) {
        UserInfoService.updateUserInfo(userInfo);

    }

}
