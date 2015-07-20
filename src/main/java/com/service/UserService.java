package com.service;

import com.domain.User;
import com.factory.Factory;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    public User getUser(String login) {
        User user = (User) Factory.getInstance().getDao().getLogin(User.class, login);
        return user;
    }

}
