/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.dao;

import com.dipu.schoolmanagementsystem.model.Classname;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public interface ClassService {
        public String insertClass(Classname cn);

    public String updateClass(Classname cn);

    public Integer deleteClass(int id);

    public String viewClass();

    public Classname viewOneClass(int id);
    
}
