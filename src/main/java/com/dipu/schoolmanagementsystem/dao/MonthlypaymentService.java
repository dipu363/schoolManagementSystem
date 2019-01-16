/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.dao;

import com.dipu.schoolmanagementsystem.model.Monthlypayment;
import org.springframework.stereotype.Service;

/**
 *
 * @author C7
 */
@Service
public interface MonthlypaymentService {
        public String insertMonthlypayment(Monthlypayment pay);

    public String updateMonthlypayment(int payid, Monthlypayment pay);

    public String deleteMonthlypayment(int payid);

    public String viewMonthlypayment();

    public Monthlypayment viewOneMonthlypayment(int payid);
    
}
