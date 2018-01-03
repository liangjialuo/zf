package com.zking.oa.biz.impl;

import com.zking.oa.biz.IFwlxBiz;
import com.zking.oa.mapper.FwlxMapper;
import com.zking.oa.model.Fwlx;
import com.zking.oa.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FwlxBizImpl implements IFwlxBiz {

    @Autowired
    private FwlxMapper fwlxMapper;

    @Override
    public void insert(Fwlx fwlx) {
        fwlxMapper.insert(fwlx);
    }

    @Override
    public void update(Fwlx fwlx) {
        fwlxMapper.updateByPrimaryKey(fwlx);
    }

    @Override
    public void delete(Fwlx fwlx) {
        fwlxMapper.deleteByPrimaryKey(fwlx.getLxbh());
    }

    @Override
    public Fwlx load(Fwlx fwlx) {
        return fwlxMapper.selectByPrimaryKey(fwlx.getLxbh());
    }

    @Override
    public List<Fwlx> list(Fwlx fwlx, PageBean pageBean) {
        return fwlxMapper.list(fwlx,pageBean);
    }
}
