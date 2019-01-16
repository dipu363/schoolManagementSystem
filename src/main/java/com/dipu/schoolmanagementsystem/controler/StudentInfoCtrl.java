/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.StudentInfoService;
import com.dipu.schoolmanagementsystem.model.StudentInfo;
import com.google.gson.Gson;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author C7
 */
@Controller
public class StudentInfoCtrl {
    @Autowired
    StudentInfoService stis;
     @Autowired
    private ServletContext servletContext;
    
    
     @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "stdob", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }

    @RequestMapping("/studentinfoepage")
    public ModelAndView showteacherpage() {
        String studentlist=stis.viewstudent();
      
       

        ModelAndView mv = new ModelAndView("studentinfo", "addStuObject1", new StudentInfo() );
        mv.addObject("studentlists", studentlist);
      
      
        mv.addObject("check", "true");
        return mv;
    }
    @RequestMapping("/showStudentlist")
    public ModelAndView showstudentlist() {
        String studentlist=stis.viewstudent();
      
       

        ModelAndView mv = new ModelAndView("showstudentlist", "addStuObject1", new StudentInfo() );
        mv.addObject("studentlists", studentlist);
      
      
        mv.addObject("check", "true");
        return mv;
    }
    @RequestMapping("/showStudenthome")
    public ModelAndView showstudenthome() {

        ModelAndView mv = new ModelAndView("studenthome" );
        return mv;
    }
    @RequestMapping("/showguardianhome")
    public ModelAndView showgurdianpage() {

        ModelAndView mv = new ModelAndView("guardianhome" );
        return mv;
    }
 


    @RequestMapping(value = "/addingstudent", params = "Add")
    public String addteacher(@ModelAttribute("addStuObject1") StudentInfo st, HttpServletRequest request) {
        stis.insertstudent(st);
      String path = servletContext.getRealPath("/");
        System.out.println(path);
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
//        String projectcuts = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcut.lastIndexOf("\\"));
         String targetcuts = targetcut.substring(0, targetcut.lastIndexOf("\\"));
       
        //System.out.println(targetcut+".......");
        //System.out.println(request.getSession().getServletContext());
        //String p = servletContext.getContextPath();
        String p = targetcuts + "\\src\\main\\webapp\\resources\\stimage\\" + String.valueOf(st.getStid()) + "" + ".jpg";
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        System.out.println(p);
        MultipartFile filedet =st.getStimage();
        if (!filedet.isEmpty()) {
            try {
                byte[] bytes = filedet.getBytes();
                System.out.println(bytes.length);
                FileOutputStream fos = new FileOutputStream(new File(p));
                BufferedOutputStream bs = new BufferedOutputStream(fos);
                bs.write(bytes);
                bs.close();
                fos.close();
                Thread.sleep(10000);
                System.out.println("File Uploaded Successfully");
            } catch (Exception e) {
                System.out.println("Exception Arised" + e);
            }
        } else {
            System.out.println("File is Empty not Uploaded");
        }
       
        return "redirect:/studentinfoepage";
    }

    @RequestMapping(value = "/addingstudent", params = "Edit")
    public String editteacherr(@ModelAttribute("addStuObject1") StudentInfo st, HttpServletRequest request) {
        stis.updatestudent(st.getStid(), st);
        String path = servletContext.getRealPath("/");
        System.out.println(path);
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
//        String projectcuts = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcut.lastIndexOf("\\"));
         String targetcuts = targetcut.substring(0, targetcut.lastIndexOf("\\"));
       
        //System.out.println(targetcut+".......");
        //System.out.println(request.getSession().getServletContext());
        //String p = servletContext.getContextPath();
        String p = targetcuts + "\\src\\main\\webapp\\resources\\stimage\\" + String.valueOf(st.getStid()) + "" + ".jpg";
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        System.out.println(p);
        MultipartFile filedet =st.getStimage();
        if (!filedet.isEmpty()) {
            try {
                byte[] bytes = filedet.getBytes();
                System.out.println(bytes.length);
                FileOutputStream fos = new FileOutputStream(new File(p));
                BufferedOutputStream bs = new BufferedOutputStream(fos);
                bs.write(bytes);
                bs.close();
                fos.close();
                Thread.sleep(10000);
                System.out.println("File Uploaded Successfully");
            } catch (Exception e) {
                System.out.println("Exception Arised" + e);
            }
        } else {
            System.out.println("File is Empty not Uploaded");
        }
        return "redirect:/studentinfoepage";
    }

    @RequestMapping("removingstudent/{stuid}")
    public String removeteacher(@PathVariable("stuid") int stuid) {
      stis.deletestudent(stuid);
        return "redirect:/studentinfoepage";
    }

    @RequestMapping("/viewstudent")
    public ModelAndView viewteacher(@RequestParam("getId") int studentid, HttpSession session) {
        Gson g = new Gson();
        String onestuinfo = g.toJson(stis.viewstudent());
        
        ModelAndView mv = new ModelAndView("studentdescription");
        mv.addObject("onestudent", onestuinfo);
        return mv;
    }

   

    @RequestMapping("/editingstudent")
    public ModelAndView editoneteacher(@RequestParam("getsid") int sid) {
       String studentlist=stis.viewstudent();
        
        ModelAndView mv = new ModelAndView("studentinfo", "addStuObject1", stis.viewOnestudent(sid));
         mv.addObject("studentlists", studentlist);
      
        mv.addObject("check", "false");
        return mv;
    }
 
    
  
}
