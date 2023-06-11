package com.gc.dao;

import com.gc.bean.User;

public interface UserDao {
    /**
     * 查询用户是否存在
     * @return
     */
    User getUser(User user);
}
