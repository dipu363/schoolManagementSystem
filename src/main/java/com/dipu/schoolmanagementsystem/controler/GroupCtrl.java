/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.controler;



import com.dipu.schoolmanagementsystem.dao.StGroupService;
import com.dipu.schoolmanagementsystem.model.StGroup;
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
public class GroupCtrl {
    @Autowired
    StGroupService gs;
        @RequestMapping("/showinggrouppage")
    public ModelAndView showgrouptpage() {
        String grgsonlist = gs.viewGroup();
        ModelAndView mv = new ModelAndView("group", "addGroupObject1", new StGroup());
        mv.addObject("groupmodelobject", grgsonlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/Addinggroup", params = "Addgroup")
    public String addgroup(@ModelAttribute("addGroupObject1") StGroup g) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        gs.insertGroup(g);
        //mv.addObject("categorymodelobject", categorygsonlist);
        return "redirect:/showinggrouppage";
    }

    @RequestMapping(value = "/Addinggroup", params = "Editgroup")
    public String editgroup(@ModelAttribute("addGroupObject1") StGroup g) {

        //ModelAndView mv =new ModelAndView("AddCategory");
        gs.updateGroup(g);
        return "redirect:/showinggrouppage";
    }

    @RequestMapping("removegroup/{Id}")
    public String removesubject(@PathVariable("Id") int groupId) {
        gs.deleteGroup(groupId);
        return "redirect:/showinggrouppage";
    }

    @RequestMapping("/editgroupbutton")
    public ModelAndView passingonesubject(@RequestParam("getgid") int groupId) {

      StGroup onegroup = gs.viewOneGroup(groupId);
        String groupgsonlist = gs.viewGroup();
        ModelAndView mv = new ModelAndView("group", "addGroupObject1", onegroup);
        mv.addObject("groupmodelobject", groupgsonlist);
        mv.addObject("check", "false");
        
        System.out.println("group"+groupgsonlist);
        return mv;
    }

    
}
