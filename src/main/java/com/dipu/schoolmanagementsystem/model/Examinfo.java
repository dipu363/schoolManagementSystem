/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author C7
 */
@Entity
public class Examinfo implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int examid;
    @Column
    private int subid;
    @Column
    private String examtitle;
    @Temporal(TemporalType.DATE)
    private Date examdate;
    @Column
    private String examdescrip;

    public int getExamid() {
        return examid;
    }

    public void setExamid(int examid) {
        this.examid = examid;
    }

    public int getSubid() {
        return subid;
    }

    public void setSubid(int subid) {
        this.subid = subid;
    }

    public String getExamtitle() {
        return examtitle;
    }

    public void setExamtitle(String examtitle) {
        this.examtitle = examtitle;
    }

    public Date getExamdate() {
        return examdate;
    }

    public void setExamdate(Date examdate) {
        this.examdate = examdate;
    }

    public String getExamdescrip() {
        return examdescrip;
    }

    public void setExamdescrip(String examdescrip) {
        this.examdescrip = examdescrip;
    }
}
