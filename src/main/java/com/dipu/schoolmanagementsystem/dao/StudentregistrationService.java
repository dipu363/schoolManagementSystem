/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.dao;

import com.dipu.schoolmanagementsystem.model.Studentregistration;
import com.dipu.schoolmanagementsystem.model.Teacherinfo;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public interface StudentregistrationService {

    public String insertStudentregistration(Studentregistration registration);

    public String updateStudentregistration(int reg_id, Studentregistration registration);

    public String deleteStudentregistrationr(int reg_id);

    public String viewStudentregistration();

    public Studentregistration viewOneStudentregistration(int reg_id);
    public Studentregistration viewOneStudentregid(int reg_id);
   
    
  

}
