/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.ClassService;
import com.dipu.schoolmanagementsystem.model.Classname;
import com.google.gson.Gson;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author C7
 */
@Repository
public class ClassServiceImpl implements ClassService{
    @Autowired
    SessionFactory sessionfac;

    @Override
    public String insertClass(Classname cn) {
         Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(cn);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateClass(Classname cn) {
           Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(cn);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteClass(int id) {
         Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Classname cn = (Classname) s.get(Classname.class, id);
        
        s.delete(cn);
        t.commit();
        s.close();

        return null;
    }

    @Override
    public String viewClass() {
         Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Classname> classlist = s.createQuery("from Classname").list();
        Gson g = new Gson();
        String classlistgson = g.toJson(classlist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return classlistgson;
    }

    @Override
    public Classname viewOneClass(int id) {
        Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
       Classname cn = (Classname) s.get(Classname.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String classgson = g.toJson(cn);
        return cn;
    }
    
    
}
