/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.ExaminfoService;
import com.dipu.schoolmanagementsystem.model.Examinfo;
import com.dipu.schoolmanagementsystem.model.Subjects;
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
 * @author C7
 */
@Repository
public class ExaminfoServiceImpl implements ExaminfoService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertExaminfo(Examinfo exam) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(exam);
        t.commit();
        s.close();
        return null;        
    }
    
    @Override
    public Integer updateExaminfo(int examid, Examinfo exam) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Examinfo Examinfoobject = (Examinfo) s.get(Examinfo.class, examid);
        Examinfoobject.setSubid(exam.getSubid());
        Examinfoobject.setExamtitle(exam.getExamtitle());
        Examinfoobject.setExamdescrip(exam.getExamdescrip());
        Examinfoobject.setExamdate(exam.getExamdate());
      
        
        s.update(Examinfoobject);
        t.commit();
        s.close();
        return null;        
    }
    
    @Override
    public Integer deleteExaminfo(int examid) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Examinfo exam = (Examinfo) s.get(Examinfo.class, examid);
        s.delete(exam);
        t.commit();
        s.close();
        return null;
    }
    
    @Override
    public String viewExaminfo() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Examinfo> examlist = s.createQuery("from Examinfo").list();
        Gson g = new Gson();
        String examlistgson = g.toJson(examlist);
        t.commit();
        s.close();
        return examlistgson;
    }
    
    @Override
    public Examinfo viewOneExaminfo(int examid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Examinfo exam = (Examinfo) s.get(Examinfo.class, examid);
        t.commit();
        s.close();
        return exam; 
    }

    @Override
    public Examinfo viewOneExamtitle(String extitle) {
      Session s = sessionFactory.openSession();
        Examinfo etitle = new Examinfo();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery("  from Examinfo where examtitle=?");
        q.setParameter(0, extitle);

        List<Examinfo> etitlelist = q.setParameter(0, extitle).list();

        t.commit();
        s.close();
        return etitlelist.get(0);  
    
    }



    
}
