package com.zking.oa.mapper;

import com.zking.oa.model.Fwxx;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FwxxMapper {
    int deleteByPrimaryKey(Integer fwbh);

    int insert(Fwxx record);

    int insertSelective(Fwxx record);

    Fwxx selectByPrimaryKey(Fwxx fwxx);

    int updateByPrimaryKeySelective(Fwxx record);

    int updateByPrimaryKey(Fwxx record);

    List<Fwxx> selectFwxx(Fwxx fwxx);

}