/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.MonthlypaymentService;
import com.dipu.schoolmanagementsystem.dao.StudentregistrationService;
import com.dipu.schoolmanagementsystem.dao.YearService;
import com.dipu.schoolmanagementsystem.model.Monthlypayment;
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
public class MonthlypaymentCtrl {

    @Autowired
    MonthlypaymentService payment;
    @Autowired
    StudentregistrationService streg;
    @Autowired
    YearService year;

    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "paydate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }

    @RequestMapping("/showpaymentpage")
    public ModelAndView showpaypage() {
        String payamount = payment.viewMonthlypayment();
        String stregistration = streg.viewStudentregistration();
        String yeargsonlist = year.viewYear();

        ModelAndView mv = new ModelAndView("payment", "paymentObject", new Monthlypayment());
        mv.addObject("payamount", payamount);
        mv.addObject("stregistration", stregistration);
        mv.addObject("yearmodelobject", yeargsonlist);

        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/paymentadd", params = "Add")
    public String addpaypage(@ModelAttribute("paymentObject") Monthlypayment pay, HttpServletRequest request) {
        payment.insertMonthlypayment(pay);

        return "redirect:/showpaymentpage";
    }

    @RequestMapping(value = "/paymentadd", params = "Edit")
    public String editpaypage(@ModelAttribute("paymentObject") Monthlypayment pay, HttpServletRequest request) {
        payment.updateMonthlypayment(pay.getPayid(), pay);

        return "redirect:/showpaymentpage";
    }

    @RequestMapping("removingpayment/{payid}")
    public String removepaypage(@PathVariable("payid") int payid) {
        payment.deleteMonthlypayment(payid);
        return "redirect:/showpaymentpage";
    }

    @RequestMapping("/editingpaymayment")
    public ModelAndView editpaymentpage(@RequestParam("getpayid") int payid) {
        String payamount = payment.viewMonthlypayment();
        String stregistration = streg.viewStudentregistration();
        String yeargsonlist = year.viewYear();
        ModelAndView mv = new ModelAndView("payment", "paymentObject", payment.viewOneMonthlypayment(payid));
        mv.addObject("payamount", payamount);
        mv.addObject("stregistration", stregistration);
        mv.addObject("yearmodelobject", yeargsonlist);

        mv.addObject("check", "false");
        return mv;
    }

}
