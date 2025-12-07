package com.gc.service;

import com.gc.bean.User;

public interface UserService {
    User getUser(User user);

    boolean register(User user);

    boolean exists(String userName);
}
