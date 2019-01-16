/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.ClassService;
import com.dipu.schoolmanagementsystem.dao.ClasssectionService;
import com.dipu.schoolmanagementsystem.dao.ClassteacherService;
import com.dipu.schoolmanagementsystem.dao.StGroupService;
import com.dipu.schoolmanagementsystem.dao.TeacherinfoService;
import com.dipu.schoolmanagementsystem.dao.YearService;
import com.dipu.schoolmanagementsystem.model.Classteacher;
import javax.servlet.http.HttpServletRequest;
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
public class ClassteacherCtrl {

    @Autowired
    ClassteacherService classteacher;
    
    @Autowired
    TeacherinfoService teacherinfo;
    
    @Autowired
    StGroupService Stgroup;
    
    @Autowired
    ClassService classser;
    
    @Autowired
    ClasssectionService classsec;

    @Autowired
    YearService yearser;
    
 

    @RequestMapping("/showclassteacherpage")
    public ModelAndView showCteacherpage() {
        String ctlist = classteacher.viewClassteacher();      
        String teacherlist = teacherinfo.viewTeacher();
        String grouplist = Stgroup.viewGroup();
        String classlist = classser.viewClass();
        String sectionlist = classsec.viewClasssection();
        String yearslist= yearser.viewYear();

        ModelAndView mv = new ModelAndView("assinclassteacher", "classteacherObject", new Classteacher());
        mv.addObject("classteacherlists", ctlist);
        mv.addObject("teacherlist", teacherlist);
        mv.addObject("grouplists", grouplist);
        mv.addObject("classlists", classlist);
        mv.addObject("sectionlists", sectionlist);
        mv.addObject("yearslists", yearslist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/classteacheradd", params = "Add")
    public String addcteacherpage(@ModelAttribute("classteacherObject") Classteacher ct, HttpServletRequest request) {
        classteacher.insertClassteacher(ct);
       
        return "redirect:/showclassteacherpage";
    }

    @RequestMapping(value = "/classteacheradd", params = "Edit")
    public String editcteacher(@ModelAttribute("classteacherObject") Classteacher ct, HttpServletRequest request) {
        classteacher.updateClassteacher(ct.getAssignid(), ct);
        
        return "redirect:/showclassteacherpage";
    }

    @RequestMapping("removingclassteacher/{ctid}")
    public String removecteacher(@PathVariable("ctid") int ctid) {
        classteacher.deleteClassteachert(ctid);
        return "redirect:/showclassteacherpage";
    }

 

  

    @RequestMapping("/editingclassteacher")
    public ModelAndView editcteacherpage(@RequestParam("getctid") int ctid) {
        String ctlist = classteacher.viewClassteacher();      
        String teacherlist = teacherinfo.viewTeacher();
        String grouplist = Stgroup.viewGroup();
        String classlist = classser.viewClass();
        String sectionlist = classsec.viewClasssection();
        String yearslist= yearser.viewYear();
        ModelAndView mv = new ModelAndView("assinclassteacher", "classteacherObject", classteacher.viewOneClassteacher(ctid));
       mv.addObject("classteacherlists", ctlist);
        mv.addObject("teacherlist", teacherlist);
        mv.addObject("grouplists", grouplist);
        mv.addObject("classlists", classlist);
        mv.addObject("sectionlists", sectionlist);
        mv.addObject("yearslists", yearslist);
       
        mv.addObject("check", "false");
        return mv;
    }

}
