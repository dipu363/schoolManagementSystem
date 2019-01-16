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
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author HP
 */
@Entity
public class Teacherinfo implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int tid;
    @Column
    private int subid;
    @Column
    private String subname;
    @Column
    private String tname;
    @Column
    private String taddress;
    @Column
    private String temail;
    @Column
    private String tcontact;
    @Temporal(TemporalType.DATE)
    private Date tjoindate;
    @Column
    private String tstatus;
    @Column
    private String tgender;

    public String getSubname() {
        return subname;
    }

    public void setSubname(String subname) {
        this.subname = subname;
    }

    public String getTgender() {
        return tgender;
    }

    public void setTgender(String tgender) {
        this.tgender = tgender;
    }
    
    @Transient
    MultipartFile timage;

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public int getSubid() {
        return subid;
    }

    public void setSubid(int subid) {
        this.subid = subid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTaddress() {
        return taddress;
    }

    public void setTaddress(String taddress) {
        this.taddress = taddress;
    }

    public String getTemail() {
        return temail;
    }

    public void setTemail(String temail) {
        this.temail = temail;
    }

    public String getTcontact() {
        return tcontact;
    }

    public void setTcontact(String tcontact) {
        this.tcontact = tcontact;
    }

    public Date getTjoindate() {
        return tjoindate;
    }

    public void setTjoindate(Date tjoindate) {
        this.tjoindate = tjoindate;
    }

    public String getTstatus() {
        return tstatus;
    }

    public void setTstatus(String tstatus) {
        this.tstatus = tstatus;
    }

    public MultipartFile getTimage() {
        return timage;
    }

    public void setTimage(MultipartFile timage) {
        this.timage = timage;
    }

}
