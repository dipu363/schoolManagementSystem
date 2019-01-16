/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.SubjectService;
import com.dipu.schoolmanagementsystem.model.Subjects;
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
public class SubjectServiceImpl implements SubjectService{
    @Autowired
    SessionFactory sessionfac;

    @Override
    public String insertSubject(Subjects sub) {
          Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(sub);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateSubject(Subjects sub ) {
               Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(sub);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteSubject(int id) {
              Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Subjects sub = (Subjects) s.get(Subjects.class, id);
        s.delete(sub);
        t.commit();
        s.close();

        return null;
    }

    @Override
    public String viewSubject() {
        Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Subjects> sublist = s.createQuery("from Subjects").list();
        Gson g = new Gson();
        String sublistgson = g.toJson(sublist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return sublistgson;
    }

    @Override
    public Subjects viewOneSubject(int id) {
          Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
       Subjects sub = (Subjects) s.get(Subjects.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String subgson = g.toJson(sub);
        return sub;
    }
    
}
