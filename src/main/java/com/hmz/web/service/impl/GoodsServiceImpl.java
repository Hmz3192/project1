package com.hmz.web.service.impl;

import com.hmz.web.dao.GoodsMapper;
import com.hmz.web.model.Goods;
import com.hmz.web.model.GoodsExample;
import com.hmz.web.service.GoodsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


@Service
@Transactional
public class GoodsServiceImpl implements GoodsService {
    @Resource
    GoodsMapper goodsMapper;

    @Override
    public List<Goods> selectByKind(Integer kind) {
        GoodsExample goodsExample = new GoodsExample();
        GoodsExample.Criteria criteria = goodsExample.createCriteria();
        criteria.andKindEqualTo(String.valueOf(kind));
        List<Goods> list = goodsMapper.selectByExample(goodsExample);
        return list;
    }

    @Override
    public Goods selectOne(Integer id) {
        Goods good = goodsMapper.selectByPrimaryKey(id);
        return good;
    }
}
