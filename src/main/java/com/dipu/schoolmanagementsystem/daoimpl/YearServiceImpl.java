/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.YearService;
import com.dipu.schoolmanagementsystem.model.AcademicYear;
import com.dipu.schoolmanagementsystem.model.Classname;
import com.dipu.schoolmanagementsystem.model.User;
import com.dipu.schoolmanagementsystem.model.UserRole;
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
public class YearServiceImpl implements YearService{
      @Autowired
    SessionFactory sessionfac;

   

    @Override
    public String insertYear(AcademicYear year) {
           Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(year);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateYear(AcademicYear year) {
         Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(year);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteYear(int id) {
            Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        AcademicYear year = (AcademicYear) s.get(AcademicYear.class, id);
        s.delete(year);
        t.commit();
        s.close();

        return null;
    }

    @Override
    public String viewYear() {
             Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<AcademicYear> yearlist = s.createQuery("from AcademicYear").list();
        Gson g = new Gson();
        String yearlistgson = g.toJson(yearlist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return yearlistgson;
    }

    @Override
    public AcademicYear viewOneYear(int id) {
           Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
       AcademicYear year = (AcademicYear) s.get(AcademicYear.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String yeargson = g.toJson(year);
        return year;
    }

    @Override
    public AcademicYear viewOneyearbyaccyear(String acyear) {
         Session s = sessionfac.openSession();
        AcademicYear accyear = new AcademicYear();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery("  from AcademicYear where academicYear=?");
        q.setParameter(0, acyear);

        List<AcademicYear> yearlist = q.setParameter(0, acyear).list();

        t.commit();
        s.close();
        return yearlist.get(0); 
    }
    
}
