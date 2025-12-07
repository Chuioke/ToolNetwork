package com.gc.service.impl;

import com.gc.bean.User;
import com.gc.dao.UserDao;
import com.gc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public User getUser(User user) {
        if (user == null || !StringUtils.hasText(user.getUserName()) || !StringUtils.hasText(user.getUserPwd())) {
            return null;
        }
        return userDao.getUser(user);
    }

    @Override
    public boolean register(User user) {
        if (user == null || !StringUtils.hasText(user.getUserName()) || !StringUtils.hasText(user.getUserPwd()) || !StringUtils.hasText(user.getEmail())) {
            return false;
        }
        if (exists(user.getUserName())) {
            return false;
        }
        return userDao.addUser(user) > 0;
    }

    @Override
    public boolean exists(String userName) {
        return StringUtils.hasText(userName) && userDao.findByUserName(userName) != null;
    }
}
