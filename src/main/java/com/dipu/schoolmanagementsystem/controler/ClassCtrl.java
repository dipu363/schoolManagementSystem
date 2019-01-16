/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.ClassService;
import com.dipu.schoolmanagementsystem.model.Classname;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
public class ClassCtrl {
     @Autowired
     ClassService cla;

    @RequestMapping("/showingclasspage")
    public ModelAndView showclasspage() {
        String classgsonlist = cla.viewClass();
        ModelAndView mv = new ModelAndView("addClass", "addClassObject1", new Classname());
        mv.addObject("classmodelobject", classgsonlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingclass", params = "addclass")
    public String addclass(@ModelAttribute("addClassObject1") Classname cn) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        cla.insertClass(cn);
        //mv.addObject("categorymodelobject", categorygsonlist);
        return "redirect:/showingclasspage";
    }

    @RequestMapping(value = "/addingclass", params = "EditClass")
    public String editclass(@ModelAttribute("addClassObject1") Classname cn) {

        //ModelAndView mv =new ModelAndView("AddCategory");
        cla.updateClass(cn);
        return "redirect:/showingclasspage";
    }

    @RequestMapping("removeclass/{Id}")
    public String removeclass(@PathVariable("Id") int classId) {
        cla.deleteClass(classId);
        return "redirect:/showingclasspage";
    }

    @RequestMapping("/editclassbutton")
    public ModelAndView passingoneclass(@RequestParam("getcid") int classId) {

       Classname oneclass = cla.viewOneClass(classId);
        String classgsonlist = cla.viewClass();
        ModelAndView mv = new ModelAndView("addClass", "addClassObject1", oneclass);
        mv.addObject("classmodelobject", classgsonlist);
        mv.addObject("check", "false");
        return mv;
    }
    
}
