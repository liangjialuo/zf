package com.zking.oa.controller;

import com.zking.oa.biz.IFwxxBiz;
import com.zking.oa.model.Fwxx;
import com.zking.oa.model.Yh;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class FwxxController {

    @Autowired
    private IFwxxBiz iFwxxBiz;

    @ModelAttribute
    public void init(Model model, Yh yh) {
        model.addAttribute("command", yh);
    }

    @RequestMapping("/listMyFwxx")
    public String listMyFwxx(Model model, Fwxx fwxx) {
//        PageBean pageBean = new PageBean();
        List<Fwxx> list = iFwxxBiz.list(fwxx, null);
        List<Fwxx> editList = new ArrayList<Fwxx>();
        for (Fwxx fwxx1 : list) {
            System.out.println(fwxx1);
            Date fbsj = fwxx1.getFbsj();
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String format = dateFormat.format(fbsj);
            System.out.println(format);
            fwxx1.setSfbsj(format);
            editList.add(fwxx1);
        }
        model.addAttribute("editList", editList);
        return "listMyFwxx";
    }

    @RequestMapping("/list")
    public String list(Model model, String msg) {
        List<Fwxx> list = iFwxxBiz.list(null, null);
        List<Fwxx> editList = new ArrayList<Fwxx>();
        for (Fwxx fwxx1 : list) {
            System.out.println(fwxx1);
            Date fbsj = fwxx1.getFbsj();
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String format = dateFormat.format(fbsj);
            System.out.println(format);
            fwxx1.setSfbsj(format);
            editList.add(fwxx1);
        }
        model.addAttribute("list", editList);
        if (msg.equals("a")) {
            return "index";
        } else {
            return "index2";
        }
    }

    @RequestMapping("/addMyFwxx")
    public String addMyFwxx(Fwxx fwxx) {
        System.out.println(fwxx);
        iFwxxBiz.insert(fwxx);
        return "redirect:listMyFwxx?yhbh=" + fwxx.getYhbh();
    }

    @RequestMapping("/loadFwxx")
    public String loadFwxx(Model model, Fwxx fwxx) {
        Fwxx load = iFwxxBiz.load(fwxx);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String format = dateFormat.format(load.getFbsj());
        load.setSfbsj(format);
        model.addAttribute("load", load);
        return "detailFwxx";
    }

    @RequestMapping("/deleteFwxx")
    public String deleteFwxx(Model model, Fwxx fwxx) {
        iFwxxBiz.delete(fwxx);
        return "redirect:listMyFwxx?yhbh=" + fwxx.getYhbh();
    }

    @RequestMapping("/updateFwxx")
    public String updateFwxx(Model model, Fwxx fwxx) {
        iFwxxBiz.update(fwxx);
        return "redirect:listMyFwxx?yhbh=" + fwxx.getYhbh();
    }

    @RequestMapping("/loadEditFwxx")
    public String loadEditFwxx(Model model, Fwxx fwxx) {
        Fwxx load = iFwxxBiz.load(fwxx);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String format = dateFormat.format(load.getFbsj());
        load.setSfbsj(format);
        model.addAttribute("load", load);
        return "editFwxx";
    }

    @RequestMapping("/likeFwxx")
    public String likeFwxx(Model model, Fwxx fwxx, String msg) {
        System.out.println("****************************************");
        System.out.println("******" + fwxx + "**********" + msg);
        System.out.println("****************************************");
        List<Fwxx> list = iFwxxBiz.list(fwxx, null);
        List<Fwxx> editList = new ArrayList<Fwxx>();
        for (Fwxx fwxx1 : list) {
            System.out.println(fwxx1);
            Date fbsj = fwxx1.getFbsj();
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String format = dateFormat.format(fbsj);
            System.out.println(format);
            fwxx1.setSfbsj(format);
            editList.add(fwxx1);
        }
        model.addAttribute("list", editList);
        if (msg != null && msg.equals("a")) {
            return "index";
        } else {
            return "index2";
        }
    }
}
