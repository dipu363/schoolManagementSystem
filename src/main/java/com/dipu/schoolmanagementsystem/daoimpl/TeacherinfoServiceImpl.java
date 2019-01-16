/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.TeacherinfoService;
import com.dipu.schoolmanagementsystem.model.Teacherinfo;
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
public class TeacherinfoServiceImpl implements TeacherinfoService {

    @Autowired
    SessionFactory sessionFactory;

    @Override

    public String insertTeacher(Teacherinfo teacher) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(teacher);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateTeacher(int teacher_id, Teacherinfo teacher) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Teacherinfo oneteacherobject = (Teacherinfo) s.get(Teacherinfo.class, teacher_id);
        oneteacherobject.setTid(teacher.getTid());
        oneteacherobject.setSubid(teacher.getSubid());
        oneteacherobject.setTname(teacher.getTname());
        oneteacherobject.setTaddress(teacher.getTaddress());
        oneteacherobject.setTcontact(teacher.getTcontact());
        oneteacherobject.setTemail(teacher.getTemail());
        oneteacherobject.setTjoindate(teacher.getTjoindate());
        oneteacherobject.setTgender(teacher.getTgender());
        oneteacherobject.setTstatus(teacher.getTstatus());
        s.update(oneteacherobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteTeacher(int teacher_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Teacherinfo teacher = (Teacherinfo) s.get(Teacherinfo.class, teacher_id);
        s.delete(teacher);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewTeacher() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Teacherinfo> teacherlist = s.createQuery("from Teacherinfo").list();
        Gson g = new Gson();
        String teacherlistgson = g.toJson(teacherlist);
        t.commit();
        s.close();
        return teacherlistgson;
    }

    @Override
    public Teacherinfo viewOneTeacher(int teacher_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Teacherinfo teacher = (Teacherinfo) s.get(Teacherinfo.class, teacher_id);
        t.commit();
        s.close();
        return teacher;
    }

}
