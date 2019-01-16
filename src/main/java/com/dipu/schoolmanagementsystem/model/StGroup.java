/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author HP
 */
@Entity
public class StGroup implements Serializable{
         @Id
         @GeneratedValue(strategy = GenerationType.AUTO)
    private int groupid;
    @Column
    private String groupname;
    @Column
    private String groupstatus;

    public int getGroupid() {
        return groupid;
    }

    public void setGroupid(int groupid) {
        this.groupid = groupid;
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname;
    }

    public String getGroupstatus() {
        return groupstatus;
    }

    public void setGroupstatus(String groupstatus) {
        this.groupstatus = groupstatus;
    }
    
}
