package com.hmz.web.model;

public class Goods {
    private Integer id;

    private String goodName;

    private String goodEssay;

    private Double goodPrice;

    private String url;

    private String uploadTime;

    private String beginTime;

    private String lessMoney;

    private String oneTimeMoney;

    private String url1;

    private String url2;

    private String url3;

    private String yikoujia;

    private Integer num;

    private Integer state;

    private String endTime;

    private String kind;

    public Goods(Integer id, String goodName, String goodEssay, Double goodPrice, String url, String uploadTime, String beginTime, String lessMoney, String oneTimeMoney, String url1, String url2, String url3, String yikoujia, Integer num, Integer state, String endTime, String kind) {
        this.id = id;
        this.goodName = goodName;
        this.goodEssay = goodEssay;
        this.goodPrice = goodPrice;
        this.url = url;
        this.uploadTime = uploadTime;
        this.beginTime = beginTime;
        this.lessMoney = lessMoney;
        this.oneTimeMoney = oneTimeMoney;
        this.url1 = url1;
        this.url2 = url2;
        this.url3 = url3;
        this.yikoujia = yikoujia;
        this.num = num;
        this.state = state;
        this.endTime = endTime;
        this.kind = kind;
    }

    public Goods() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName == null ? null : goodName.trim();
    }

    public String getGoodEssay() {
        return goodEssay;
    }

    public void setGoodEssay(String goodEssay) {
        this.goodEssay = goodEssay == null ? null : goodEssay.trim();
    }

    public Double getGoodPrice() {
        return goodPrice;
    }

    public void setGoodPrice(Double goodPrice) {
        this.goodPrice = goodPrice;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(String uploadTime) {
        this.uploadTime = uploadTime == null ? null : uploadTime.trim();
    }

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime == null ? null : beginTime.trim();
    }

    public String getLessMoney() {
        return lessMoney;
    }

    public void setLessMoney(String lessMoney) {
        this.lessMoney = lessMoney == null ? null : lessMoney.trim();
    }

    public String getOneTimeMoney() {
        return oneTimeMoney;
    }

    public void setOneTimeMoney(String oneTimeMoney) {
        this.oneTimeMoney = oneTimeMoney == null ? null : oneTimeMoney.trim();
    }

    public String getUrl1() {
        return url1;
    }

    public void setUrl1(String url1) {
        this.url1 = url1 == null ? null : url1.trim();
    }

    public String getUrl2() {
        return url2;
    }

    public void setUrl2(String url2) {
        this.url2 = url2 == null ? null : url2.trim();
    }

    public String getUrl3() {
        return url3;
    }

    public void setUrl3(String url3) {
        this.url3 = url3 == null ? null : url3.trim();
    }

    public String getYikoujia() {
        return yikoujia;
    }

    public void setYikoujia(String yikoujia) {
        this.yikoujia = yikoujia == null ? null : yikoujia.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime == null ? null : endTime.trim();
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind == null ? null : kind.trim();
    }
}