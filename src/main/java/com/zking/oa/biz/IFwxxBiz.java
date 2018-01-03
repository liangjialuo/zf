package com.zking.oa.biz;

import com.zking.oa.model.Fwxx;
import com.zking.oa.util.PageBean;

import java.util.List;

public interface IFwxxBiz {
    void insert(Fwxx fwxx);

    void update(Fwxx fwxx);

    void delete(Fwxx fwxx);

    Fwxx load(Fwxx fwxx);

    List<Fwxx> list(Fwxx fwxx, PageBean pageBean);
}
