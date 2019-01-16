/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.ClassService;
import com.dipu.schoolmanagementsystem.dao.ClasssectionService;
import com.dipu.schoolmanagementsystem.dao.StGroupService;
import com.dipu.schoolmanagementsystem.dao.StudentInfoService;
import com.dipu.schoolmanagementsystem.dao.StudentregistrationService;
import com.dipu.schoolmanagementsystem.dao.YearService;
import com.dipu.schoolmanagementsystem.model.Studentregistration;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContext;
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
 * @author HP
 */
@Controller
public class StudentregistrationCtrl {
     @Autowired
    StudentregistrationService streg;
      @Autowired
    StudentInfoService stinfo;

    @Autowired
    ClassService classser;
    @Autowired
    ClasssectionService classsec;
    @Autowired
    StGroupService stgroup;
   
   
    @Autowired
    YearService year;
 

    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "regdate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }

    @RequestMapping("/showregistrationpage")
    public ModelAndView showstudentregpage() {
        String streglist = streg.viewStudentregistration();
        String classlist = classser.viewClass();
        String classseclist = classsec.viewClasssection();
        String stgrouplist = stgroup.viewGroup();
        String stinfolist = stinfo.viewstudent();
        
        String yearlist = year.viewYear();

        ModelAndView mv = new ModelAndView("studentregistration", "stregistrationObject", new Studentregistration());
         mv.addObject("streglists", streglist);
        mv.addObject("classlists", classlist);
        mv.addObject("classseclists", classseclist);
        mv.addObject("stgrouplists", stgrouplist);
        mv.addObject("stinfolists", stinfolist);
       
        mv.addObject("yearlists", yearlist);

        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/registrationpage", params = "Add")
    public String addstudentreg(@ModelAttribute("stregistrationObject") Studentregistration rgid, HttpServletRequest request) {
        try {
            streg.insertStudentregistration(rgid);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/showregistrationpage";
    }

    @RequestMapping(value = "/registrationpage", params = "Edit")
    public String editstudentreg(@ModelAttribute("stregistrationObject") Studentregistration rgid, HttpServletRequest request) {
        streg.updateStudentregistration(rgid.getRegid(), rgid);

        return "redirect:/showregistrationpage";
    }

    @RequestMapping("removingreg/{regtrid}")
    public String removestudentreg(@PathVariable("regtrid") int regitrd) {
        streg.deleteStudentregistrationr(regitrd);
        return "redirect:/showregistrationpage";
    }

    @RequestMapping("/editingreg")
    public ModelAndView editonesteudentreg(@RequestParam("getregid") int regtrid) {
     String streglist = streg.viewStudentregistration();
        String classlist = classser.viewClass();
        String classseclist = classsec.viewClasssection();
        String stgrouplist = stgroup.viewGroup();
        String stinfolist = stinfo.viewstudent();       
        String yearlist = year.viewYear();
        ModelAndView mv = new ModelAndView("studentregistration", "stregistrationObject", streg.viewOneStudentregistration(regtrid));
       mv.addObject("streglists", streglist);
        mv.addObject("classlists", classlist);
        mv.addObject("classseclists", classseclist);
        mv.addObject("stgrouplists", stgrouplist);
        mv.addObject("stinfolists", stinfolist);      
        mv.addObject("yearlists", yearlist);
        return mv;
    }

}
