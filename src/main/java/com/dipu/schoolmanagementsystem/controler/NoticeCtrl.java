/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.NoticeService;
import com.dipu.schoolmanagementsystem.model.Notice;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author C7
 */
@Controller
public class NoticeCtrl {

    @Autowired
    NoticeService ns;
     @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "noticedate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }

    @RequestMapping("/noticepage")
    public ModelAndView shownoticepage() {
        String noticegsonlist = ns.viewNotice();
        ModelAndView mv = new ModelAndView("notice", "addNoticeObject1", new Notice());
        mv.addObject("noticemodelobject", noticegsonlist);
        mv.addObject("check", "true");
        return mv;
    }
    @RequestMapping("/noticeboardpage")
    public ModelAndView shownoticboardepage() {
        String noticegsonlist = ns.viewNotice();
        ModelAndView mv = new ModelAndView("noticeboard", "addNoticeObject1", new Notice());
        mv.addObject("noticemodelobject", noticegsonlist);
        mv.addObject("check", "true");
        return mv;
    }


    @RequestMapping(value = "/addingnotice", params = "addnotice")
    public String addnotice(@ModelAttribute("addNoticeObject1") Notice n) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        ns.insertNotice(n);
        //mv.addObject("categorymodelobject", categorygsonlist);
        return "redirect:/noticepage";
    }

    @RequestMapping(value = "/addingnotice", params = "Editnotice")
    public String editnotice(@ModelAttribute("addNoticeObject1") Notice n) {

        //ModelAndView mv =new ModelAndView("AddCategory");
        ns.updateNotice(n);
        return "redirect:/noticepage";
    }

    @RequestMapping("removenotice/{Id}")
    public String removenotice(@PathVariable("Id") int noticeId) {
        ns.deleteNotice(noticeId);
        return "redirect:/noticepage";
    }

    @RequestMapping("/editnoticebutton")
    public ModelAndView passingonenotice(@RequestParam("getnoticeid") int noticeId) {

        Notice onenotice = ns.viewOneNotice(noticeId);
        String noticegsonlist = ns.viewNotice();
        ModelAndView mv = new ModelAndView("notice", "addNoticeObject1", onenotice);
        System.out.println(mv);
        mv.addObject("noticemodelobject", noticegsonlist);
        mv.addObject("check", "false");
        return mv;
    }
    @RequestMapping("/onenoticebutton")
    public ModelAndView passonenotice(@RequestParam("getnoticeid") int noticeId) {

        Notice onenotice = ns.viewOneNotice(noticeId);
        String noticegsonlist = ns.viewNotice();
        ModelAndView mv = new ModelAndView("onenotice", "addNoticeObject1", onenotice);
        System.out.println(mv);
        mv.addObject("noticemodelobject", noticegsonlist);
        mv.addObject("check", "false");
        return mv;
    }

}
