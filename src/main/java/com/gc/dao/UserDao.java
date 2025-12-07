package com.gc.dao;

import com.gc.bean.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDao {
    /**
     * 查询用户是否存在
     */
    User getUser(User user);

    /**
     * 按用户名查找用户
     */
    User findByUserName(String userName);

    /**
     * 注册新用户
     */
    int addUser(User user);
}
