/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.Syllabus;

import dal.SyllabusDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Subject;
import model.Subject1;
import model.Syllabus;

/**
 *
 * @author 84379
 */
@WebServlet(name="EditSyllabus", urlPatterns={"/EditSyllabus"})
public class EditSyllabus extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditSyllabus</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditSyllabus at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String id = request.getParameter("sid");
        SyllabusDAO dao = new SyllabusDAO();
        Syllabus s = dao.getAllSyllabusByID(id);
        List<Subject1> sy = dao.getSubjectcode();
        request.setAttribute("s", s);
        request.setAttribute("sy", sy);
        request.getRequestDispatcher("edit_Syllabus.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String sid = request.getParameter("sID");
        String sName = request.getParameter("sName");
        String sEnglish = request.getParameter("sEnglish");
        String subjectCode = request.getParameter("subjectCode");
        String noCredit = request.getParameter("noCredit");
        String degreeLevel = request.getParameter("degreeLevel");
        String timeAllocation = request.getParameter("timeAllocation");
        String preRequisite = request.getParameter("preRequisite");
        String description = request.getParameter("description");
        String studentTask = request.getParameter("studentTask");
        String tools = request.getParameter("tools");
        String scoringScale = request.getParameter("scoringScale");
        String decisionNo = request.getParameter("decisionNo");
        String isApproved = request.getParameter("isApproved");
        String note = request.getParameter("note");
        String minAvgMarkToPass = request.getParameter("minAvgMarkToPass");
        String isActive = request.getParameter("isActive");
        String approvedDate = request.getParameter("approvedDate");
        SyllabusDAO dao = new SyllabusDAO();     
        dao.editSyllabus(sid, sName, sEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode);
        response.sendRedirect("SyllabusDetail?sid=" + sid);
        //SyllabusDetail
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
