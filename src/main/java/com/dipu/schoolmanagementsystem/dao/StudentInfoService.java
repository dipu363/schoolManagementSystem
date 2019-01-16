/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.dao;

import com.dipu.schoolmanagementsystem.model.StudentInfo;
import org.springframework.stereotype.Service;

/**
 *
 * @author C7
 */
@Service
public interface StudentInfoService {

    public String insertstudent(StudentInfo st);

    public String updatestudent(int stuid, StudentInfo st);

    public String deletestudent(int stuid);

    public String viewstudent();
  
 

    public StudentInfo viewOnestudent(int stuid);
    
    public StudentInfo viewstudentprofile(int stuid);

}
