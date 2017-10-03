package com.hmz.web.model;

public class WatchRel {
    private Integer id;

    private Integer userId;

    private Integer watchId;

    private Integer state;

    public WatchRel(Integer id, Integer userId, Integer watchId, Integer state) {
        this.id = id;
        this.userId = userId;
        this.watchId = watchId;
        this.state = state;
    }

    public WatchRel() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getWatchId() {
        return watchId;
    }

    public void setWatchId(Integer watchId) {
        this.watchId = watchId;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}