package com.service;


import com.domain.User;
import com.domain.UserInfo;
import com.factory.Factory;
import com.service.enums.UserRoleEnum;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;

public class UserInfoService {

    public static void addNewUser(User user, UserInfo userInfo){

        user.setRole(UserRoleEnum.USER.name());
        user.setUserInfo(userInfo);

        Factory.getInstance().getDao().save(userInfo);
        Factory.getInstance().getDao().save(user);
    }

    public static UserInfo getUserInfo(){
        UserInfo userInfo = null;

        if (!(SecurityContextHolder.getContext().getAuthentication() instanceof AnonymousAuthenticationToken)) {
            User user = (User)Factory.getInstance().getDao().getLogin(
                    User.class,
                    SecurityContextHolder.getContext().getAuthentication().getName());
            userInfo = user.getUserInfo();
        }
        return userInfo;
    }

    public static void updateUserInfo(UserInfo userInfo){

        userInfo.setId(getUserInfo().getId());
        Factory.getInstance().getDao().update(userInfo);

    }

}
