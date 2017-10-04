package com.hmz.web.service;

import com.hmz.web.model.Goods;

import java.util.List;

public interface GoodsService {

    List<Goods> selectByKind(Integer kind);
}
