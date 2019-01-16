/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;


import com.dipu.schoolmanagementsystem.dao.Userservice;
import com.dipu.schoolmanagementsystem.model.User;
import java.util.Collection;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author C7
 */
@Controller
public class LoginCtrl {
   
    
    @Autowired
    Userservice user;
    
    @RequestMapping(value = "/login" , method = RequestMethod.GET)
    public String login(){
    
    return "login";
    }
    @RequestMapping(value = "/adminwelcome", method = RequestMethod.GET)
    public String showWelcome() {
        return "adminwelcome";
    }
    @RequestMapping(value = "/teacherwelcome", method = RequestMethod.GET)
    public String showteacherprofile() {
        return "teacherwelcome";
    }
    @RequestMapping(value = "/studentwelcome", method = RequestMethod.GET)
    public String showstprofile() {
        return "studentwelcome";
    }
    @RequestMapping(value = "/guardianwelcome", method = RequestMethod.GET)
    public String showguardianprofile() {
        return "guardianwelcome";
    }

    @RequestMapping(value = "/loginsuccess")
    public String loginsuccess(HttpSession session) {
        System.out.println("success..........");

        String userid = SecurityContextHolder.getContext().getAuthentication().getName();
        User us = user.viewUser(userid);
        
        Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
        String page = "";
        String role1 = "ROLE_ADMIN";
        String role2 = "ROLE_TEACHER";
        String role3 = "ROLE_STUDENT";
        String role4 = "ROLE_GUARDIAN";
        for (GrantedAuthority authority : authorities) {
            if (authority.getAuthority().equals(role1)) {
                session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("phone", us.getPhone());
                
                session.setAttribute("UserId", userid);
                page= "redirect:/adminwelcome";
            }
            else if (authority.getAuthority().equals(role2)) {
                session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("phone", us.getPhone());
                
                session.setAttribute("UserId", userid);
                page= "redirect:/teacherwelcome";
            }
            else if (authority.getAuthority().equals(role3)) {
                session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("phone", us.getPhone());
                
                session.setAttribute("UserId", userid);
                page= "redirect:/studentwelcome";
            }
            else if (authority.getAuthority().equals(role4)) {
                session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("phone", us.getPhone());
                
                session.setAttribute("UserId", userid);
                page= "redirect:/guardianwelcome";
            }
            else{
            page= "redirect:/";
            }
        }
        return page;
    }
    
}
