/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.Userservice;
import com.dipu.schoolmanagementsystem.model.Subjects;
import com.dipu.schoolmanagementsystem.model.User;
import com.dipu.schoolmanagementsystem.model.UserRole;
import com.google.gson.Gson;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HP
 */
@Repository
public class UserServiceImpl implements Userservice {

    @Autowired
    SessionFactory sessionfactory;

    @Override
    public String acceptUser(User u) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates. 
    }

    @Override
    public String insertUser(User u) {
       String status;
        try {
            Session s = sessionfactory.openSession();
            Transaction t = s.getTransaction();
            t.begin();
            UserRole role = new UserRole();
            role.setEmailid(u.getEmailid());
            role.setPassword(u.getPassword());
            role.setUserrole(u.getUserrole());
            s.save(u);
            s.save(role);
            t.commit();
            s.close();
            status = "Success";
            //logger.info("End of insert user method in userservice impl");
        } catch (Exception e) {
            //logger.info("inside catch accept user method in userservice impl");
            e.printStackTrace();
            status = "Fail";
        }
        return status;
    }

    @Override
    public String updateUser(User u) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


   

    @Override
    public User viewUser(String s) {
        Session sc = sessionfactory.openSession();
        Transaction t = sc.getTransaction();
        t.begin();
        User us = (User) sc.get(User.class, s);
        t.commit();
        sc.close();
        //logger.info("end of view user method in userservice impl");
        return us;
    }



    @Override
    public String viewUser() {
           Session s = sessionfactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<User> userlist = s.createQuery("from User").list();
        System.out.println(userlist.get(0));
        Gson g = new Gson();
        String userlistgson = g.toJson(userlist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return userlistgson;
    }

    @Override
    public String deleteUser(String email) {
             Session s = sessionfactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        User u = (User) s.get(User.class, email);
        
        System.out.println(u);
        s.delete(u);
        t.commit();
        s.close();

        return null;
    }

  
}
