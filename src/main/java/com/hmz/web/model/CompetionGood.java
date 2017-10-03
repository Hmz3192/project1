package com.hmz.web.model;

public class CompetionGood {
    private Integer id;

    private Integer goodId;

    private Integer watchTime;

    private Integer nowTime;

    private String nowPrice;

    private String nowUser;

    public CompetionGood(Integer id, Integer goodId, Integer watchTime, Integer nowTime, String nowPrice, String nowUser) {
        this.id = id;
        this.goodId = goodId;
        this.watchTime = watchTime;
        this.nowTime = nowTime;
        this.nowPrice = nowPrice;
        this.nowUser = nowUser;
    }

    public CompetionGood() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodId() {
        return goodId;
    }

    public void setGoodId(Integer goodId) {
        this.goodId = goodId;
    }

    public Integer getWatchTime() {
        return watchTime;
    }

    public void setWatchTime(Integer watchTime) {
        this.watchTime = watchTime;
    }

    public Integer getNowTime() {
        return nowTime;
    }

    public void setNowTime(Integer nowTime) {
        this.nowTime = nowTime;
    }

    public String getNowPrice() {
        return nowPrice;
    }

    public void setNowPrice(String nowPrice) {
        this.nowPrice = nowPrice == null ? null : nowPrice.trim();
    }

    public String getNowUser() {
        return nowUser;
    }

    public void setNowUser(String nowUser) {
        this.nowUser = nowUser == null ? null : nowUser.trim();
    }
}