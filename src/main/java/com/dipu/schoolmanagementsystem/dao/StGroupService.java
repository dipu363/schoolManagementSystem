/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.dao;

import com.dipu.schoolmanagementsystem.model.StGroup;
import javax.persistence.Entity;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public interface StGroupService {
         public String insertGroup(StGroup group);

    public String updateGroup(StGroup group);

    public Integer deleteGroup(int id);

    public String viewGroup();

    public StGroup viewOneGroup(int id);
    
}
