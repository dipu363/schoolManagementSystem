/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.ExammarkService;
import com.dipu.schoolmanagementsystem.model.Exammark;
import com.google.gson.Gson;
import java.util.List;
import org.hibernate.Query;
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
 public class ExammarkServiceImpl implements ExammarkService{
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertExammark(Exammark em) {
                Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(em);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateExammark(int markid, Exammark em) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Exammark markobject = (Exammark) s.get(Exammark.class, markid);
        markobject.setMarkid(em.getMarkid());
        markobject.setClassid(em.getClassid());
        markobject.setGroupid(em.getGroupid());
        markobject.setSecid(em.getSecid());
        markobject.setStid(em.getStid());
        markobject.setSubid(em.getSubid());
        markobject.setYearid(em.getYearid());
        markobject.setMarkgrade(em.getMarkgrade());
        markobject.setMarkobtain(em.getMarkobtain());
        markobject.setExamid(em.getExamid());

        s.update(markobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteExammark(int markid) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Exammark em = (Exammark) s.get(Exammark.class, markid);
        s.delete(em);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewExammark() {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Exammark> marklist = s.createQuery("from Exammark").list();
        Gson g = new Gson();
        String ctlistgson = g.toJson(marklist);
        t.commit();
        s.close();
        return ctlistgson;
    }

    @Override
    public Exammark viewOneExammark(int markid) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Exammark ct = (Exammark) s.get(Exammark.class, markid);
        t.commit();
        s.close();
        return ct;
    }

    
}
