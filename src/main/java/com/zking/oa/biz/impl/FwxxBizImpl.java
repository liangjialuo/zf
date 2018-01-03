package com.zking.oa.biz.impl;

import com.zking.oa.biz.IFwxxBiz;
import com.zking.oa.mapper.FwxxMapper;
import com.zking.oa.model.Fwxx;
import com.zking.oa.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FwxxBizImpl implements IFwxxBiz {

    @Autowired
    private FwxxMapper fwxxMapper;

    @Override
    public void insert(Fwxx fwxx) {
        fwxxMapper.insert(fwxx);
    }

    @Override
    public void update(Fwxx fwxx) {
        fwxxMapper.updateByPrimaryKeySelective(fwxx);
    }

    @Override
    public void delete(Fwxx fwxx) {
        fwxxMapper.deleteByPrimaryKey(fwxx.getFwbh());
    }

    @Override
    public Fwxx load(Fwxx fwxx) {
        System.out.println("load" + fwxx);
        return fwxxMapper.selectByPrimaryKey(fwxx);
    }

    @Override
    public List<Fwxx> list(Fwxx fwxx, PageBean pageBean) {
        return fwxxMapper.selectFwxx(fwxx);
    }
}
