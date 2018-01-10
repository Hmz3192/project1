package com.hmz.web.model;

import java.io.Serializable;

public class ComUser implements Serializable {
    private Integer id;

    private Integer comid;

    private String username;

    private String comtime;

    public ComUser(Integer id, Integer comid, String username, String comtime) {
        this.id = id;
        this.comid = comid;
        this.username = username;
        this.comtime = comtime;
    }

    public ComUser() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getComtime() {
        return comtime;
    }

    public void setComtime(String comtime) {
        this.comtime = comtime == null ? null : comtime.trim();
    }
}