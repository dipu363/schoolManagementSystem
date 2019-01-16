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
 * @author HP
 */
@Entity
public class Notice implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int noticeid;
    @Column
    private String noticetitle;
     @Column
    private String noticedescrip;
     @Temporal(TemporalType.DATE)
    private Date  noticedate;
      @Column
    private String noticestatus="Authority";

    public int getNoticeid() {
        return noticeid;
    }

    public void setNoticeid(int noticeid) {
        this.noticeid = noticeid;
    }

    public String getNoticetitle() {
        return noticetitle;
    }

    public void setNoticetitle(String noticetitle) {
        this.noticetitle = noticetitle;
    }

    public String getNoticedescrip() {
        return noticedescrip;
    }

    public void setNoticedescrip(String noticedescrip) {
        this.noticedescrip = noticedescrip;
    }

    public Date getNoticedate() {
        return noticedate;
    }

    public void setNoticedate(Date noticedate) {
        this.noticedate = noticedate;
    }

    public String getNoticestatus() {
        return noticestatus;
    }

    public void setNoticestatus(String noticestatus) {
        this.noticestatus = noticestatus;
    }
    
}
