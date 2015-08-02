package com.controller;

import com.domain.User;
import com.domain.UserInfo;
import com.service.UserInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegistrationController {

    @RequestMapping(value = "/registration")
    public String loginPage(ModelMap modelMap){
        modelMap.put("user", new User());
        modelMap.put("userinfo", new UserInfo());
        return "registration";
    }


    @RequestMapping(value = "/addnewuser", method = RequestMethod.POST)
    public String addNewUser(@ModelAttribute("user") User user,
                             @ModelAttribute("userinfo")UserInfo userInfo,
                             BindingResult result){
        UserInfoService.addNewUser(user, userInfo);
        return "index";
    }


}
