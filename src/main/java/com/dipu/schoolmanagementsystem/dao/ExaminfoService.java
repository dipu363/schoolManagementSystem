/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.dao;

import com.dipu.schoolmanagementsystem.model.Examinfo;
import org.springframework.stereotype.Service;

/**
 *
 * @author C7
 */
@Service
public interface ExaminfoService {
  public String insertExaminfo(Examinfo exam);

    public Integer updateExaminfo(int examid, Examinfo exam);

    public Integer deleteExaminfo(int examid);

    public String viewExaminfo();
    
  

    public Examinfo viewOneExaminfo(int examid);  
    
    
    public Examinfo viewOneExamtitle(String extitle);  
}
