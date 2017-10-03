package com.hmz.web.model;

import java.math.BigDecimal;

public class User {
    private Integer id;

    private String username;

    private String password;

    private BigDecimal money;

    public User(Integer id, String username, String password, BigDecimal money) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.money = money;
    }

    public User() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }
}