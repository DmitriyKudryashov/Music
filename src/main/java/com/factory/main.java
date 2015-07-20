package com.factory;

import com.domain.User;
import com.domain.UserInfo;
import com.service.enums.UserRoleEnum;

public class main {

    public static void main(String[] args) {
        User user = new User("Дима", "дима", UserRoleEnum.USER.name());
        Factory.getInstance().getDao().save(user);
    }

}
