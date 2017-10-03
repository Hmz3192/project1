package com.hmz.web.dao;

import com.hmz.web.model.ComUser;
import com.hmz.web.model.ComUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ComUserMapper {
    long countByExample(ComUserExample example);

    int deleteByExample(ComUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ComUser record);

    int insertSelective(ComUser record);

    List<ComUser> selectByExample(ComUserExample example);

    ComUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ComUser record, @Param("example") ComUserExample example);

    int updateByExample(@Param("record") ComUser record, @Param("example") ComUserExample example);

    int updateByPrimaryKeySelective(ComUser record);

    int updateByPrimaryKey(ComUser record);
}