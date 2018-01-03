package com.zking.oa.biz.impl;

import com.zking.oa.biz.IFwlxBiz;
import com.zking.oa.biz.IFwxxBiz;
import com.zking.oa.model.Fwlx;
import com.zking.oa.model.Fwxx;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class FwlxBizImplTest {

    @Autowired
    private IFwlxBiz iFwlxBiz;

    @Autowired
    private IFwxxBiz iFwxxBiz;

    @Test
    public void selectByPrimaryKey() throws Exception {
        Fwxx fwxx = new Fwxx();
        fwxx.setFwbh(2);
        Fwxx load = iFwxxBiz.load(fwxx);
        System.out.println(load);
//        Fwlx fwlx = iFwlxBiz.selectByPrimaryKey();
//        System.out.println(fwlx);
    }

}