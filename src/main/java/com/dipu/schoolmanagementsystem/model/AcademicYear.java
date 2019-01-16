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
 * @author HP
 */
@Entity
public class AcademicYear {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int yearid;
   @Column
    private String academicYear;
   @Column
    private String yearStatus;

    public int getYearid() {
        return yearid;
    }

    public void setYearid(int yearid) {
        this.yearid = yearid;
    }


    public String getAcademicYear() {
        return academicYear;
    }

    public void setAcademicYear(String academicYear) {
        this.academicYear = academicYear;
    }

    public String getYearStatus() {
        return yearStatus;
    }

    public void setYearStatus(String yearStatus) {
        this.yearStatus = yearStatus;
    }
}
