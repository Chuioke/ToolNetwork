package com.gc.bean;

import java.math.BigInteger;

public class User {
    private BigInteger user_id;
    private String userName;
    private String userPwd;
    private String email;
    public User(){}

    public User(BigInteger user_id, String userName, String userPwd, String email) {
        this.user_id = user_id;
        this.userName = userName;
        this.userPwd = userPwd;
        this.email = email;
    }

    public BigInteger getUser_id() {
        return user_id;
    }

    public void setUser_id(BigInteger user_id) {
        this.user_id = user_id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", userName='" + userName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
