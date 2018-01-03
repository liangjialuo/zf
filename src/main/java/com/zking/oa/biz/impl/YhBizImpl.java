package com.zking.oa.biz.impl;

import com.zking.oa.biz.IYhBiz;
import com.zking.oa.mapper.YhMapper;
import com.zking.oa.model.Yh;
import com.zking.oa.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class YhBizImpl implements IYhBiz {

    @Autowired
    private YhMapper yhMapper;

    @Override
    public void insert(Yh yh) {
        yhMapper.insert(yh);
    }

    @Override
    public void update(Yh yh) {
        yhMapper.updateByPrimaryKey(yh);
    }

    @Override
    public void delete(Yh yh) {
        yhMapper.deleteByPrimaryKey(yh.getYhbh());
    }

    @Override
    public Yh load(Yh yh) {
        return yhMapper.selectByPrimaryKey(yh);
    }

    @Override
    public Yh loadNotNull(Yh yh) {
        return yhMapper.loadNotNull(yh);
    }


    @Override
    public List<Yh> list(Yh yh, PageBean pageBean) {
        return yhMapper.list(yh);
    }
}