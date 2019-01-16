/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.dao;

import com.dipu.schoolmanagementsystem.model.Classname;
import com.dipu.schoolmanagementsystem.model.Subjects;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public interface SubjectService {

    public String insertSubject(Subjects sub);

    public String updateSubject(Subjects sub);

    public Integer deleteSubject(int id);

    public String viewSubject();

    public Subjects viewOneSubject(int id);

}
