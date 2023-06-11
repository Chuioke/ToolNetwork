package com.gc.service.impl;

import com.gc.bean.User;
import com.gc.dao.UserDao;
import com.gc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    public User getUser(User user) {
        return userDao.getUser(user);
    }
}
