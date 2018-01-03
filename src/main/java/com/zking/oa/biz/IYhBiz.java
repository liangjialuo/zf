package com.zking.oa.biz;

import com.zking.oa.model.Yh;
import com.zking.oa.util.PageBean;

import java.util.List;

public interface IYhBiz {
    void insert(Yh yh);

    void update(Yh yh);

    void delete(Yh yh);

    Yh load(Yh yh);

    Yh loadNotNull(Yh yh);

    List<Yh> list(Yh yh, PageBean pageBean);
}
