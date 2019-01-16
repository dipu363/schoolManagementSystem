/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dipu.schoolmanagementsystem.dao;

import com.dipu.schoolmanagementsystem.model.Notice;
import org.springframework.stereotype.Service;

/**
 *
 * @author C7
 */
@Service
public interface NoticeService {
    public String insertNotice(Notice n);

    public String updateNotice(Notice n);

    public Integer deleteNotice(int id);

    public String viewNotice();

    public Notice viewOneNotice(int id);
    
}
