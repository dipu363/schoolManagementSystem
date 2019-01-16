/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.dao;

import com.dipu.schoolmanagementsystem.model.AcademicYear;
import com.dipu.schoolmanagementsystem.model.Classname;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public interface YearService {
     public String insertYear(AcademicYear year);

    public String updateYear(AcademicYear year);

    public Integer deleteYear(int id);

    public String viewYear();

    public AcademicYear viewOneYear(int id);
    
    
    public AcademicYear viewOneyearbyaccyear(String acyear);
    
}
