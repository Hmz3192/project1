package com.hmz.web.dao;

import com.hmz.web.model.CompetionGood;
import com.hmz.web.model.CompetionGoodExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CompetionGoodMapper {
    long countByExample(CompetionGoodExample example);

    int deleteByExample(CompetionGoodExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CompetionGood record);

    int insertSelective(CompetionGood record);

    List<CompetionGood> selectByExample(CompetionGoodExample example);

    CompetionGood selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CompetionGood record, @Param("example") CompetionGoodExample example);

    int updateByExample(@Param("record") CompetionGood record, @Param("example") CompetionGoodExample example);

    int updateByPrimaryKeySelective(CompetionGood record);

    int updateByPrimaryKey(CompetionGood record);
}