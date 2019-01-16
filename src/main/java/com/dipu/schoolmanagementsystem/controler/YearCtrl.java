/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.YearService;
import com.dipu.schoolmanagementsystem.model.AcademicYear;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author HP
 */
@Controller
public class YearCtrl {
    @Autowired
    YearService year;
    
    @RequestMapping("/academicYearpage")
    public ModelAndView showacademicyearpage() {
        String yeargsonlist = year.viewYear();
        ModelAndView mv = new ModelAndView("academicYear", "addYearObject1", new AcademicYear());
        mv.addObject("yearmodelobject", yeargsonlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingyear", params = "addyear")
    public String addyear(@ModelAttribute("addYearObject1") AcademicYear y) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        year.insertYear(y);
        //mv.addObject("categorymodelobject", categorygsonlist);
        return "redirect:/academicYearpage";
    }

    @RequestMapping(value = "/addingyear", params = "Edityear")
    public String edityear(@ModelAttribute("addYearObject1") AcademicYear y) {

        //ModelAndView mv =new ModelAndView("AddCategory");
        year.updateYear(y);
        return "redirect:/academicYearpage";
    }

    @RequestMapping("removeYear/{Id}")
    public String removeyear(@PathVariable("Id") int yearid) {
        year.deleteYear(yearid);
        return "redirect:/academicYearpage";
    }

    @RequestMapping("/edityearbutton")
    public ModelAndView passingoneyear(@RequestParam("getyearid") int yearid) {

       AcademicYear oneyear = year.viewOneYear(yearid);
        String yeargsonlist = year.viewYear();
        ModelAndView mv = new ModelAndView("academicYear", "addYearObject1", oneyear);
        mv.addObject("yearmodelobject", yeargsonlist);
        mv.addObject("check", "false");
        return mv;
    }
    
 
    
}
