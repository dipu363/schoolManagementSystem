/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.StudentInfoService;
import com.dipu.schoolmanagementsystem.model.StudentInfo;
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
public class StudentInfoServiceImpl implements StudentInfoService{
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertstudent(StudentInfo st) {
          Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(st);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updatestudent(int stuid, StudentInfo st) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        StudentInfo onestuobject = (StudentInfo) s.get(StudentInfo.class, stuid);
        onestuobject.setStid(st.getStid());
        onestuobject.setStname(st.getStname());
        onestuobject.setStfathername(st.getStfathername());
        onestuobject.setStmothername(st.getStmothername());
        onestuobject.setParmanentaddress(st.getParmanentaddress());
        onestuobject.setPresentaddress(st.getPresentaddress());
        onestuobject.setStage(st.getStage());
        onestuobject.setStcontact(st.getStcontact());
        onestuobject.setStdob(st.getStdob());
        onestuobject.setStgender(st.getStgender());
        onestuobject.setStstatus(st.getStstatus());
        onestuobject.setStimage(st.getStimage());
        s.update(onestuobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deletestudent(int stuid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        StudentInfo teacher = (StudentInfo) s.get(StudentInfo.class, stuid);
        s.delete(teacher);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewstudent() {
          Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<StudentInfo>stulist = s.createQuery("from StudentInfo").list();
        Gson g = new Gson();
        String stulistgson = g.toJson(stulist);
        t.commit();
        s.close();
        return stulistgson;
    }


    @Override
    public StudentInfo viewOnestudent(int stuid) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        StudentInfo student = (StudentInfo) s.get(StudentInfo.class, stuid);
        t.commit();
        s.close();
        return student;
    }

    @Override
    public StudentInfo viewstudentprofile(int stuid) {
                   Session s = sessionFactory.openSession();
        StudentInfo stinfo = new StudentInfo();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select  StudentInfo  where stid=?");

        List<StudentInfo> stulist = q.setParameter(0, stuid).list();

        t.commit();
        s.close();
        return stulist.get(0);
    }



  

    
    
}
