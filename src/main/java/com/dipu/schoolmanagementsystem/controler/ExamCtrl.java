/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.ExaminfoService;
import com.dipu.schoolmanagementsystem.dao.SubjectService;
import com.dipu.schoolmanagementsystem.model.Examinfo;
import com.dipu.schoolmanagementsystem.model.Subjects;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
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
public class ExamCtrl  {
    @Autowired
    ExaminfoService examser;
    @Autowired
    SubjectService subser;
   
     
    
      
     @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "examdate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
     
     @RequestMapping("/showexaminfopage")
    public ModelAndView showsection() {
        String examlist = examser.viewExaminfo();
        String sublist = subser.viewSubject();
       

        ModelAndView mv = new ModelAndView("examinfo", "newExamObject", new Examinfo());
        mv.addObject("examinfolist", examlist);
        mv.addObject("subjectlist", sublist);
         System.out.println("goto page");
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/examadd", params = "Add")
    public String addproductpage(@ModelAttribute("newExamObject") Examinfo exam, HttpServletRequest request) {
        examser.insertExaminfo(exam);
        System.out.println("insert doun");
        return "redirect:/showexaminfopage";
    }

    @RequestMapping(value = "/examadd", params = "Edit")
    public String editProduct(@ModelAttribute("newExamObject") Examinfo exam, HttpServletRequest request) {
        
         System.out.println("update done ");
        examser.updateExaminfo(exam.getExamid(), exam);
         System.out.println("insert doun");
        return "redirect:/showexaminfopage";
    }

    @RequestMapping("removingexam/{examid}")
    public String removeproduct(@PathVariable("examid") int examid) {
        examser.deleteExaminfo(examid);
        return "redirect:/showexaminfopage";
    }

   

    @RequestMapping("/editingexam")
    public ModelAndView editproductpage(@RequestParam("getexid") int examid) {
        String examlist = examser.viewExaminfo();
        String sublist = subser.viewSubject();
        ModelAndView mv = new ModelAndView("examinfo", "newExamObject", examser.viewOneExaminfo(examid));
        mv.addObject("examinfolist", examlist);
        mv.addObject("subjectlist", sublist);
        mv.addObject("check", "false");
        return mv;
    }
}
