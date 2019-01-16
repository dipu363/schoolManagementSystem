/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.SubjectService;
import com.dipu.schoolmanagementsystem.model.Subjects;
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
public class SubjectCtrl {
       @Autowired
  SubjectService sub;

    @RequestMapping("/showingsubjectpage")
    public ModelAndView showsubjectpage() {
        String subgsonlist = sub.viewSubject();
        ModelAndView mv = new ModelAndView("subject", "addSubjectObject1", new Subjects());
        mv.addObject("subjectmodelobject", subgsonlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingsubject", params = "addsubject")
    public String addsubject(@ModelAttribute("addSubjectObject1") Subjects s) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        sub.insertSubject(s);
        //mv.addObject("categorymodelobject", categorygsonlist);
        return "redirect:/showingsubjectpage";
    }

    @RequestMapping(value = "/addingsubject", params = "Editsubject")
    public String editsubject(@ModelAttribute("addSubjectObject1") Subjects s) {

        //ModelAndView mv =new ModelAndView("AddCategory");
        sub.updateSubject(s);
        return "redirect:/showingsubjectpage";
    }

    @RequestMapping("removesubject/{Id}")
    public String removesubject(@PathVariable("Id") int subId) {
        sub.deleteSubject(subId);
        return "redirect:/showingsubjectpage";
    }

    @RequestMapping("/editsubjectbutton")
    public ModelAndView passingonesubject(@RequestParam("getsubid") int subId) {

      Subjects onesub = sub.viewOneSubject(subId);
        String subgsonlist = sub.viewSubject();
        ModelAndView mv = new ModelAndView("subject", "addSubjectObject1", onesub);
        mv.addObject("subjectmodelobject", subgsonlist);
        mv.addObject("check", "false");
        return mv;
    }
}
