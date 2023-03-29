/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.PO;

import dal.SyllabusDAO;
import dal.poDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.PO;
import model.Syllabus;

/**
 *
 * @author 84379
 */
@WebServlet(name="viewPO", urlPatterns={"/viewPO"})
public class viewPO extends HttpServlet {
   
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
            out.println("<title>Servlet viewPO</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet viewPO at " + request.getContextPath () + "</h1>");
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
        String sid = request.getParameter("sid");
//        poDAO dao = new poDAO();        
//        List<PO> list = dao.getAllPOID(sid);
//        request.setAttribute("list", list); 
//        request.setAttribute("count", list.size());
//        request.getRequestDispatcher("viewPO.jsp").forward(request, response);
        
        poDAO dao = new poDAO();
        
        String search = request.getParameter("name") == null ? "" : request.getParameter("name");
        search = search.trim();
        int totalproduct = dao.countTotalPO(search, sid);
//        int totalproduct = dao.countPO(sid);
        int numberPage = (int) Math.ceil((double) totalproduct / 6);
        int index;
        String currentPage = request.getParameter("index");
        if (currentPage == null) {
            index = 1;
        } else {
            index = Integer.parseInt(currentPage);
        }
        
        List<PO> listPO = dao.SearchPO(search, index, 6, sid);
        
        request.setAttribute("numberPage", numberPage);
        request.setAttribute("list", listPO);
        request.setAttribute("count", dao.countTotalPO2(sid));
        request.getRequestDispatcher("viewPO.jsp").forward(request, response);
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
        processRequest(request, response);
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
