package com.zking.oa.mapper;

import com.zking.oa.model.Fwlx;
import com.zking.oa.util.PageBean;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FwlxMapper {
    int deleteByPrimaryKey(Integer lxbh);

    int insert(Fwlx record);

    int insertSelective(Fwlx record);

    Fwlx selectByPrimaryKey(Integer lxbh);

    int updateByPrimaryKeySelective(Fwlx record);

    int updateByPrimaryKey(Fwlx record);

    List<Fwlx> list(Fwlx fwlx, PageBean pageBean);
}