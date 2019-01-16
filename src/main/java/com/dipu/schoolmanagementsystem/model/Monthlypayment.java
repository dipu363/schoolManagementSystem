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
public class Monthlypayment implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int payid;
    @Column
    private int regid;
    @Column
    private double payammount;
    @Temporal(TemporalType.DATE)
    private Date paydate;
    @Column
    private String payofmonth;
    @Column
 private int yearid;

    public int getYearid() {
        return yearid;
    }

    public void setYearid(int yearid) {
        this.yearid = yearid;
    }

    public String getPayofmonth() {
        return payofmonth;
    }

    public void setPayofmonth(String payofmonth) {
        this.payofmonth = payofmonth;
    }


    public int getPayid() {
        return payid;
    }

    public void setPayid(int payid) {
        this.payid = payid;
    }

    public int getRegid() {
        return regid;
    }

    public void setRegid(int regid) {
        this.regid = regid;
    }

    public double getPayammount() {
        return payammount;
    }

    public void setPayammount(double payammount) {
        this.payammount = payammount;
    }

    public Date getPaydate() {
        return paydate;
    }

    public void setPaydate(Date paydate) {
        this.paydate = paydate;
    }
}
