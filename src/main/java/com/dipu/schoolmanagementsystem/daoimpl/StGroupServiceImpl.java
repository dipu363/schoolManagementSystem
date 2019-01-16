/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.daoimpl;

import com.dipu.schoolmanagementsystem.dao.StGroupService;
import com.dipu.schoolmanagementsystem.model.StGroup;
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
public class StGroupServiceImpl  implements StGroupService{
    @Autowired
    SessionFactory sessionfac;

    @Override
    public String insertGroup(StGroup group) {
       Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(group);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateGroup(StGroup group) {
          Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(group);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteGroup(int id) {
          Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        StGroup group = (StGroup) s.get(StGroup.class, id);
        s.delete(group);
        t.commit();
        s.close();

        return null;
    }

    @Override
    public String viewGroup() {
        Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<StGroup> grouplist = s.createQuery("from StGroup").list();
        Gson g = new Gson();
        String grouplistgson = g.toJson(grouplist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return grouplistgson;
    }

    @Override
    public StGroup viewOneGroup(int id) {
          Session s = sessionfac.openSession();
        Transaction t = s.getTransaction();
        t.begin();
      StGroup group = (StGroup) s.get(StGroup.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String subgson = g.toJson(group);
        return group;
    }
    
}
