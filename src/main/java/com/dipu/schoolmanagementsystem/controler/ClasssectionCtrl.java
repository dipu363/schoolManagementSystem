/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.ClassService;
import com.dipu.schoolmanagementsystem.dao.ClasssectionService;
import com.dipu.schoolmanagementsystem.model.Classsection;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author HP
 */@Controller
public class ClasssectionCtrl {
   @Autowired
    ClasssectionService cls;
    @Autowired
    ClassService cs;
    @Autowired
    private ServletContext servletContext;
    
  
   

    @RequestMapping("/showsectionpage")
    public ModelAndView showsection() {
        String sectionlist = cls.viewClasssection();
        String ClassServicelist = cs.viewClass();
       

        ModelAndView mv = new ModelAndView("addsection", "newClasssectionObject", new Classsection());
        mv.addObject("sectionlist", sectionlist);
        mv.addObject("ClassServicelist", ClassServicelist);
       
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/sectionadd", params = "Add")
    public String addproductpage(@ModelAttribute("newClasssectionObject") Classsection section, HttpServletRequest request) {
        cls.insertClasssection(section);
        
        return "redirect:/showsectionpage";
    }

    @RequestMapping(value = "/sectionadd", params = "Edit")
    public String editProduct(@ModelAttribute("newClasssectionObject") Classsection section, HttpServletRequest request) {
        cls.updateClasssection(section.getSecid(), section);
        
        return "redirect:/showsectionpage";
    }

    @RequestMapping("removingproduct/{productId}")
    public String removeproduct(@PathVariable("productId") int productid) {
        cls.deleteClasssection(productid);
        return "redirect:/showsectionpage";
    }

   

    @RequestMapping("/editingproduct")
    public ModelAndView editproductpage(@RequestParam("getpid") int pid) {
        String sectionlist = cls.viewClasssection();
        String ClassServicelist = cs.viewClass();
        ModelAndView mv = new ModelAndView("addsection", "newClasssectionObject", cls.viewOneClasssection(pid));
        mv.addObject("sectionlist", sectionlist);
        mv.addObject("ClassServicelist", ClassServicelist);
        mv.addObject("check", "false");
        return mv;
    }
    
}
