package com.hmz.web.model;

public class User {
    private Integer id;

    private String username;

    private String password;

    private Double money;

    public User(Integer id, String username, String password, Double money) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.money = money;
    }

    public User() {
        super();
    }

    public User(String username, String password, double v) {
        this.username = username;
        this.password = password;
        this.money = v;
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

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }
}