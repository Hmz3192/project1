package com.hmz.web.dao;

import com.hmz.web.model.WatchRel;
import com.hmz.web.model.WatchRelExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WatchRelMapper {
    long countByExample(WatchRelExample example);

    int deleteByExample(WatchRelExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WatchRel record);

    int insertSelective(WatchRel record);

    List<WatchRel> selectByExample(WatchRelExample example);

    WatchRel selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WatchRel record, @Param("example") WatchRelExample example);

    int updateByExample(@Param("record") WatchRel record, @Param("example") WatchRelExample example);

    int updateByPrimaryKeySelective(WatchRel record);

    int updateByPrimaryKey(WatchRel record);
}