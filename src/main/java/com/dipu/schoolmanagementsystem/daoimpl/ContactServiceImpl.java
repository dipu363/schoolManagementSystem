/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.ContactService;
import com.dipu.schoolmanagementsystem.model.Contact;
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

public class ContactServiceImpl implements ContactService {

    @Autowired
    SessionFactory sessionfac;

    @Override
    public String insertcontact(Contact con) {
        Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(con);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deletecontact(int id) {
        Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Contact cn = (Contact) s.get(Contact.class, id);
        s.delete(cn);
        t.commit();
        s.close();

        return null;
    }

    @Override
    public String viewcontact() {
        Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Contact> contactlist = s.createQuery("from Contact").list();
        Gson g = new Gson();
        String contactlistgson = g.toJson(contactlist);
        t.commit();
        s.close();
    
        return contactlistgson;
    }

}
