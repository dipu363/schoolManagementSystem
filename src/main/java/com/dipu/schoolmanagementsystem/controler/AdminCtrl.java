/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author HP
 */
@Controller
public class AdminCtrl {
     @RequestMapping("/showwelcomepage")
    public ModelAndView welcomepage() {
        ModelAndView mv = new ModelAndView("welcome");
        
        return mv;
    }
    
}
