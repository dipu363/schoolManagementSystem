/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.MonthlypaymentService;
import com.dipu.schoolmanagementsystem.model.Monthlypayment;
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
public class MonthlypaymentServiceImpl implements MonthlypaymentService{
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertMonthlypayment(Monthlypayment pay) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(pay);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateMonthlypayment(int payid, Monthlypayment pay) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Monthlypayment onepayobject = (Monthlypayment) s.get(Monthlypayment.class, payid);
        onepayobject.setPayid(pay.getPayid());
        onepayobject.setRegid(pay.getRegid());
        onepayobject.setPayofmonth(pay.getPayofmonth());
        
        onepayobject.setPayammount(pay.getPayammount());
        onepayobject.setPaydate(pay.getPaydate());
      
      

        s.update(onepayobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteMonthlypayment(int payid) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Monthlypayment pay = (Monthlypayment) s.get(Monthlypayment.class, payid);
        s.delete(pay);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewMonthlypayment() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Monthlypayment> paylist = s.createQuery("from Monthlypayment").list();
        Gson g = new Gson();
        String ctlistgson = g.toJson(paylist);
        t.commit();
        s.close();
        return ctlistgson;
    }

    @Override
    public Monthlypayment viewOneMonthlypayment(int payid) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Monthlypayment pay = (Monthlypayment) s.get(Monthlypayment.class, payid);
        t.commit();
        s.close();
        return pay;
    }
    
}
