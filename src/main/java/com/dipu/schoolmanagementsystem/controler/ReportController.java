package com.dipu.schoolmanagementsystem.controler;

import com.dipu.schoolmanagementsystem.dao.ClassService;
import com.dipu.schoolmanagementsystem.dao.ExaminfoService;
import com.dipu.schoolmanagementsystem.dao.YearService;
import com.dipu.schoolmanagementsystem.daoimpl.JasperReportDAO;
import com.dipu.schoolmanagementsystem.reportmodel.AttendenceReport;
import com.dipu.schoolmanagementsystem.reportmodel.ClassroutinReport;
import com.dipu.schoolmanagementsystem.reportmodel.ExaminfoReport;
import com.dipu.schoolmanagementsystem.reportmodel.Marksheetreport;
import com.dipu.schoolmanagementsystem.reportmodel.PaymentReport;
import com.dipu.schoolmanagementsystem.reportmodel.StudentlistReport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import java.util.HashMap;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperReport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author User
 */
@Controller
public class ReportController {
       @Autowired
    ExaminfoService exms;
   @Autowired
    YearService year;
   
        @Autowired
    ClassService classser;

    
           @RequestMapping("/reportView")
    public ModelAndView loadSurveyPg() {
         String examlist = exms.viewExaminfo();
                
        ModelAndView mv = new ModelAndView("report", "reportInputForm", new ExaminfoReport());
        mv.addObject("examlist", examlist);
      
        mv.addObject("check", "true");
        return mv;
    }
    
    
    @RequestMapping(value = "/reportView", method = RequestMethod.POST)
    public String generateReport(@ModelAttribute("reportInputForm") ExaminfoReport reportInputForm,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "examsearch";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
         String examlist = reportInputForm.getExams();
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("exams", examlist);
           
            
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
//    @RequestMapping(value = "/classroutinreportpage", method = RequestMethod.GET)
//    public String classroutinrepage(
//            @ModelAttribute("croutinreport") ClassroutinReport croutinreport, Model model) {
//        model.addAttribute("croutinreport", croutinreport);
//        return "classroutinreport";
//    }
           @RequestMapping("/classroutinreportpage")
    public ModelAndView classroutinrepage() {
      
        String classlist = classser.viewClass();
                
        ModelAndView mv = new ModelAndView("classroutinreport", "croutinreport",new AttendenceReport());
  
        mv.addObject("classlist", classlist);
        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping(value = "/classroutinreportpage", method = RequestMethod.POST)
    public String generateReport(@ModelAttribute("croutinreport") ClassroutinReport croutinreport,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "classroutinsearch";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
          
            String classname = croutinreport.getClassname();
         
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
         
            hmParams.put("classname", classname);
       
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
    @RequestMapping(value = "/paymentreportpage", method = RequestMethod.GET)
    public String paymentrepage(
            @ModelAttribute("paymentreport") PaymentReport paymentreport, Model model) {
        model.addAttribute("paymentreport", paymentreport);
        return "paymentreport";
    }
    
    @RequestMapping(value = "/paymentreportpage", method = RequestMethod.POST)
    public String generateReport(@ModelAttribute("paymentreport") PaymentReport paymentreport,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "paymentsearch";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
          
            String sdate= paymentreport.getStartdate();
            String edate= paymentreport.getEnddate();
         
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
         
            hmParams.put("startdate", sdate);
            hmParams.put("enddate", edate);
       
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
       @RequestMapping("/studentlistreportpage")
    public ModelAndView shownoticepage() {
        String yearlist = year.viewYear();
        String classlist = classser.viewClass();
                
        ModelAndView mv = new ModelAndView("studentlistreport", "addNoticeObject1", new StudentlistReport ());
        mv.addObject("yearlist", yearlist);
        mv.addObject("classlist", classlist);
        mv.addObject("check", "true");
        return mv;
    }
//    @RequestMapping(value = "/studentlistreportpage", method = RequestMethod.GET)
//    public String Stulistreport(
//            
//            
//            
//            @ModelAttribute("studntlistreport") StudentlistReport stlist, Model model) {
//    
//        
//        model.addAttribute("studntlistreport", stlist);
//        return "studentlistreport";
//    }
    
    @RequestMapping(value = "/studentlistreportpage", method = RequestMethod.POST)
    public String generateReport(@ModelAttribute("addNoticeObject1") StudentlistReport stlist,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "studentlist";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
          
            String accyear= stlist.getAccyear();
            String classname= stlist.getClassname();
         
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
         
            hmParams.put("accyear", accyear);
            hmParams.put("Classname", classname);
       
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
       @RequestMapping("/attendencelistreportpage")
    public ModelAndView shownattdencpage() {
      
        String classlist = classser.viewClass();
                
        ModelAndView mv = new ModelAndView("attendencereport", "addNoticeObject1",new AttendenceReport());
  
        mv.addObject("classlist", classlist);
        mv.addObject("check", "true");
        return mv;
    }

    
    @RequestMapping(value = "/attreportpage", method = RequestMethod.POST)
    public String generateReport3(@ModelAttribute("addNoticeObject1") AttendenceReport attlist,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "attendencereport";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
          
          
            String classname= attlist.getClassname();
            String atdate= attlist.getAtdate();
            
         
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
         
        
            hmParams.put("classname", classname);
            hmParams.put("atdate", atdate);
       
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
//    @RequestMapping(value = "/marksheetreportpage", method = RequestMethod.GET)
//    public String markreport(
//            @ModelAttribute("markreport") Marksheetreport mark, Model model) {
//        model.addAttribute("markreport", mark);
//        return "marksheetreport";
//    }
    
          @RequestMapping("/marksheetreportpage")
    public ModelAndView markreport() {
     String yearlist = year.viewYear();
        String examlist = exms.viewExaminfo();
       
       
                
        ModelAndView mv = new ModelAndView("marksheetreport", "markreport",new Marksheetreport());
   mv.addObject("yearlist", yearlist);
    mv.addObject("examlist", examlist);
     
        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping(value = "/marksheetreportpage", method = RequestMethod.POST)
    public String generateReport4(@ModelAttribute("markreport") Marksheetreport mark,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "marksheet";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
          int reg =mark.getRegistrationno();
            String accyear= mark.getAccyear();
            String exam= mark.getExam();
            String roll= mark.getRoll();
            
         
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
         
            hmParams.put("registrationno", reg);
            hmParams.put("accyear", accyear);
            hmParams.put("exam", exam);
            hmParams.put("roll", roll);
       
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
}
