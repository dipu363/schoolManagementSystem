/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.NoticeService;
import com.dipu.schoolmanagementsystem.model.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author C7
 */
   @Controller
public class IndexCtrl {
 @Autowired
    NoticeService ns;
    @RequestMapping(value = "/",method = RequestMethod.GET)
 public ModelAndView showindex(){
    String noticegsonlist = ns.viewNotice();
        ModelAndView mv = new ModelAndView("index", "addNoticeObject1", new Notice());
        mv.addObject("noticemodelobject", noticegsonlist);
        mv.addObject("check", "true");
 return mv;
 }    
}

