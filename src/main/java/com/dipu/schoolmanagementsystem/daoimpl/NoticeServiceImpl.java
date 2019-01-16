/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.NoticeService;
import com.dipu.schoolmanagementsystem.model.Notice;
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

public class NoticeServiceImpl implements NoticeService{
    @Autowired
    SessionFactory sessionfac;

    @Override
    public String insertNotice(Notice n) {
        Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(n);
        System.out.println("Test"+ n);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateNotice(Notice n) {
          Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(n);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteNotice(int id) {
       Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Notice n = (Notice) s.get(Notice.class, id);
        s.delete(n);
        t.commit();
        s.close();

        return null;
    }

    @Override
    public String viewNotice() {
       Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Notice> noticelist = s.createQuery("from Notice").list();
        Gson g = new Gson();
        String noticelistgson = g.toJson(noticelist);
        t.commit();
        s.close();
      
        return noticelistgson;
        
    }

    @Override
    public Notice viewOneNotice(int id) {
         Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
       Notice n = (Notice) s.get(Notice.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String noticgson = g.toJson(n);
        return n;
    }
    
}
