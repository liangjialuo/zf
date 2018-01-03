package com.zking.oa.controller;

import com.zking.oa.model.Fwxx;
import com.zking.oa.model.Yh;
import com.zking.oa.util.UtilSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
/**
 * 处理页面跳转
 */
public class UtilController {

    @ModelAttribute
    public void init(Model model, Yh yh, Fwxx fwxx) {
        model.addAttribute("yh", yh);
        model.addAttribute("fwxx", fwxx);
    }

    @RequestMapping("/toReg")
    public String reg() {
        return "reg";
    }

    @RequestMapping("/toCancel")
    public String cancel() {
        HttpSession session = UtilSession.getSession();
        session.removeAttribute("Yh");
        return "index";
    }

    @RequestMapping("/toAddFwxx")
    public String addFwxx() {
        return "addFwxx";
    }

    @RequestMapping("/toDetailFwxx")
    public String detailFwxx() {
        return "detailFwxx";
    }

    @RequestMapping("/toIndex")
    public String index() {
        return "index2";
    }

    @RequestMapping("/toEditFwxx")
    public String editFwxx() {

        return "editFwxx";
    }
}