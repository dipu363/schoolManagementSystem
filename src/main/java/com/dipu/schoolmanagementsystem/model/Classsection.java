/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @ausecid, classid, secname, secstatusthor HP
 */
@Entity
public class Classsection {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int secid;
    @Column
    private int classid;
    @Column
    private String secname;
    @Column
    private String secstatus="Runing";

    public int getSecid() {
        return secid;
    }

    public void setSecid(int secid) {
        this.secid = secid;
    }

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }

    public String getSecname() {
        return secname;
    }

    public void setSecname(String secname) {
        this.secname = secname;
    }

    public String getSecstatus() {
        return secstatus;
    }

    public void setSecstatus(String secstatus) {
        this.secstatus = secstatus;
    }
}
