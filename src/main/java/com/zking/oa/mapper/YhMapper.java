package com.zking.oa.mapper;

import com.zking.oa.model.Yh;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface YhMapper {

    int deleteByPrimaryKey(Integer yhbh);

    int insert(Yh record);

    int insertSelective(Yh record);

    Yh selectByPrimaryKey(Yh yh);

    Yh loadNotNull(Yh yh);

    int updateByPrimaryKeySelective(Yh record);

    int updateByPrimaryKey(Yh record);

    List<Yh> list(Yh yh);
}