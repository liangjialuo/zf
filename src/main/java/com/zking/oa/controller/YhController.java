package com.zking.oa.controller;

import com.zking.oa.biz.IYhBiz;
import com.zking.oa.model.Fwxx;
import com.zking.oa.model.Yh;
import com.zking.oa.util.UtilSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/Yh")
public class YhController {

    @Autowired
    private IYhBiz iYhBiz;

    @ModelAttribute
    public void init(Model model, Yh yh, Fwxx fwxx) {
        System.out.println("model:" + model);
        model.addAttribute("yh", yh);
        model.addAttribute("fwxx", fwxx);
    }

    @RequestMapping("/login")
    public String login(Model model, @Validated @ModelAttribute Yh yh, BindingResult bindingResult, Errors errors) {

        if (bindingResult.hasErrors()) {
            return "index";
        }
////添加错误信息
//        bindingResult.rejectValue("yhzh", null, "adsad");

        Yh load = iYhBiz.load(yh);
        if (load == null) {
            model.addAttribute("msg", "帐号或密码错误！");
            return "index";
        } else {
            HttpSession session = UtilSession.getSession();
            session.setAttribute("Yh", load);
            model.addAttribute("Yh", load);
            return "index2";
        }
    }


    @RequestMapping("/userAdd")
    public String userAdd(Model model, @Validated Yh yh) {
        Yh load = iYhBiz.loadNotNull(yh);
        if (load == null) {
            iYhBiz.insert(yh);
            model.addAttribute("msg", "注册成功，请登录！");
            return "index";
        } else {
            model.addAttribute("msg", "帐号已存在！");
            return "reg";
        }
    }
}