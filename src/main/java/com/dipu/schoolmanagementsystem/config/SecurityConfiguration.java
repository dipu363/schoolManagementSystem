package com.dipu.schoolmanagementsystem.config;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 *
 * @author User
 */
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    private DataSource dataSource;

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
                .antMatchers("/").permitAll()
               
                .antMatchers("/noticeboardpage").permitAll()
               
                .antMatchers("/welcome").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/adminsignuppage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showteacherhomepage").access(" hasRole('ROLE_TEACHER')")
                .antMatchers("/showguardianhome").access(" hasRole('ROLE_GUARDIAN')")
                .antMatchers("/showStudenthome").access(" hasRole('ROLE_STUDENT')")
                
                .antMatchers("/showingclasspage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/academicYearpage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showingsubjectpage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showinggrouppage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/studentinfoepage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/noticepage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showsectionpage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showexaminfopage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showteacherpage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showregistrationpage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showclassteacherpage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showclassroutinpage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showpaymentpage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showexammarkpage").access("hasRole('ROLE_ADMIN') or  hasRole('ROLE_TEACHER')")
                .antMatchers("/attendencpage").access("hasRole('ROLE_ADMIN') or  hasRole('ROLE_TEACHER')")
                .antMatchers("/showstudentprofile").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/showstudentprofile").access("hasRole('ROLE_ADMIN')")
                
                
                .and().formLogin().loginPage("/login").loginProcessingUrl("/perform_login")
                .successForwardUrl("/loginsuccess").usernameParameter("usename")
                .passwordParameter("userpassword").failureUrl("/login")
                .and().logout().logoutUrl("/logout")
                .logoutSuccessUrl("/").invalidateHttpSession(true)
                .and().csrf().disable();
    }

    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        System.out.println("in security.............");
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("select emailid, password, status from UserRole where emailid=? and status='True'")
                .authoritiesByUsernameQuery("select emailid,userrole from UserRole where emailid=?");
    }

}
