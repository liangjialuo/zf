package com.zking.oa.biz;

import com.zking.oa.model.Fwlx;
import com.zking.oa.util.PageBean;

import java.util.List;


public interface IFwlxBiz {
    void insert(Fwlx fwlx);

    void update(Fwlx fwlx);

    void delete(Fwlx fwlx);

    Fwlx load(Fwlx fwlx);

    List<Fwlx> list(Fwlx fwlx, PageBean pageBean);
}
