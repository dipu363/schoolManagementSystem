/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.dao;

import com.dipu.schoolmanagementsystem.model.Contact;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public interface ContactService {

    public String insertcontact(Contact con);

    public Integer deletecontact(int id);

    public String viewcontact();

 

}
