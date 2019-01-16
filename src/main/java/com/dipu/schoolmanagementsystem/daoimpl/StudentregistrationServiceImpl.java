/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.StudentregistrationService;
import com.dipu.schoolmanagementsystem.model.Exammark;
import com.dipu.schoolmanagementsystem.model.Studentregistration;
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
public class StudentregistrationServiceImpl implements StudentregistrationService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertStudentregistration(Studentregistration registration) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(registration);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateStudentregistration(int reg_id, Studentregistration registration) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Studentregistration onestregobject = (Studentregistration) s.get(Studentregistration.class, reg_id);
        onestregobject.setRegid(registration.getRegid());
        onestregobject.setStid(registration.getStid());
        onestregobject.setGroupid(registration.getGroupid());
        onestregobject.setSecid(registration.getSecid());
        onestregobject.setClassid(registration.getClassid());
        onestregobject.setYearid(registration.getYearid());
        onestregobject.setRegdate(registration.getRegdate());
        onestregobject.setStroll(registration.getStroll());

        s.update(onestregobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteStudentregistrationr(int reg_id) {

        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Studentregistration streg = (Studentregistration) s.get(Studentregistration.class, reg_id);
        s.delete(streg);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String viewStudentregistration() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Studentregistration> reglist = s.createQuery("from Studentregistration").list();
        Gson g = new Gson();
        String reglistgson = g.toJson(reglist);
        t.commit();
        s.close();
        return reglistgson;
    }

    @Override
    public Studentregistration viewOneStudentregistration(int reg_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Studentregistration streg = (Studentregistration) s.get(Studentregistration.class, reg_id);
        t.commit();
        s.close();
        return streg;
    }

    @Override
    public Studentregistration viewOneStudentregid(int reg_id) {
            Session s = sessionFactory.openSession();
        Studentregistration regid = new Studentregistration();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select  Studentregistration  where regid=?");
        q.setParameter(0, reg_id);

        List<Studentregistration> idlist = q.setParameter(0, reg_id).list();

        t.commit();
        s.close();
        return idlist.get(0);
    }


}
