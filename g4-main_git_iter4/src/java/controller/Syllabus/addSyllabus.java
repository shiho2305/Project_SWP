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
import model.Syllabus;

/**
 *
 * @author 84379
 */
@WebServlet(name = "addSyllabus", urlPatterns = {"/addSyllabus"})
public class addSyllabus extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addSyllabus</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addSyllabus at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        String id = request.getParameter("sid");
//        SyllabusDAO dao = new SyllabusDAO();
//        Syllabus s = dao.getAllSyllabusByID(id);
//        List<Subject> sy = dao.getSubjectcode();
//        request.setAttribute("s", s);
//        request.setAttribute("sy", sy);
//        request.getRequestDispatcher("syllabusAdd.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String subjectCode = request.getParameter("subjectCode");
        String sName = request.getParameter("sName");
        String sEnglish = request.getParameter("sEnglish");
        String noCredit = request.getParameter("noCredit");
        String degreeLevel = request.getParameter("degreeLevel");
        String scoringScale = request.getParameter("scoringScale");
        String decisionNo = request.getParameter("decisionNo");
        String minAvgMarkToPass = request.getParameter("minAvgMarkToPass");
        String approvedDate = request.getParameter("approvedDate");
        String isActive = request.getParameter("isActive");
        String isApproved = request.getParameter("isApproved");
        String timeAllocation = request.getParameter("timeAllocation");
        String preRequisite = request.getParameter("preRequisite");
        String description = request.getParameter("description");
        String studentTask = request.getParameter("studentTask");
        String tools = request.getParameter("tools");
        String note = request.getParameter("note");

        SyllabusDAO dao = new SyllabusDAO();
        
        dao.insertSyllabus(sName, sEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode);
        response.sendRedirect("viewSyllabusList");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
