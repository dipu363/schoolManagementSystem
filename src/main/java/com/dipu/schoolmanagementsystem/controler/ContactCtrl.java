/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.ContactService;
import com.dipu.schoolmanagementsystem.model.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author HP
 */
@Controller
public class ContactCtrl  {
    @Autowired
    ContactService con;
      @RequestMapping("/Showindexpage")
    public ModelAndView showclasspage() {
       
        ModelAndView mv = new ModelAndView("index", "contactObject", new Contact());
        
       
        return mv;
    }
    
    
    
    
     @RequestMapping(value = "/addingcontact", params = "Add")
    public String addclass(@ModelAttribute("contactObject") Contact cn) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        con.insertcontact(cn);
        //mv.addObject("categorymodelobject", categorygsonlist);
        return "redirect:/Showindexpage";
    }
    
    @RequestMapping("/shomessage")
    public ModelAndView showclasspagess() {
        String contactlist = con.viewcontact();
        ModelAndView mv = new ModelAndView("showcontact", "contactObject", new Contact());
        mv.addObject("contactlists", contactlist);
        mv.addObject("check", "true");
        return mv;
    }
    
      @RequestMapping("removingmessage/{crid}")
    public String removeroutin(@PathVariable("crid") int crid) {
        con.deletecontact(crid);
        return "redirect:/shomessage";
    }
    
}
