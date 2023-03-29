/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.MaterialList;

import dal.MaterialDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Material;

/**
 *
 * @author DELL
 */
@WebServlet(name = "MaterialListServlet", urlPatterns = {"/listMaterial"})
public class MaterialListServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String value = request.getParameter("search");
        String update = request.getParameter("UpdateSuccess");
        String add = request.getParameter("AddSuccess");

        session.removeAttribute("material");
        MaterialDAO md = new MaterialDAO();
        int totalproduct;
        if (value == null || value.equals("")) {
            value = "";
        }
        if (session.getAttribute("roleName") == null) { // đây là user

            totalproduct = md.countTotalMaterials("1");
        } else {

            // lúc hiển thị ra danh sách sang bên kia nó cần lấy add và update để báo thành công
            // nhưng vấn đề có những lúc: khi bấm index để chuyển trang thì nó vẫn load lại và thông báo success
            totalproduct = md.countTotalMaterials(null);
        }
        int index;
        int numberPage = (int) Math.ceil((double) totalproduct / 6);
        String currentPage = request.getParameter("index");
         request.setAttribute("check","search");
         request.setAttribute("valueSearch",value);
        if (currentPage == null) {

            if (update != null && !update.equals("")) {
                request.setAttribute("UpdateSuccess", "success");
            }
            if (add != null && !update.equals("")) {
                request.setAttribute("AddSuccess", "success");
            }
            index = 1;
        } else { // lúc chuyển index là ko search
           
            session.removeAttribute("material");
            index = Integer.parseInt(currentPage);
        }
        if (session.getAttribute("roleName") == null) {
            List<Material> list = md.getAllMateriallBySjCode(value, "1", index, 6); // user
            request.setAttribute("data", list);
            
        request.getRequestDispatcher("view/Material/MaterialListUser.jsp").forward(request, response);
        } else {

            List<Material> list = md.getAllMateriallBySjCode(value, null, index, 6); // admin
            request.setAttribute("data", list);
            
        request.getRequestDispatcher("view/Material/MaterialList.jsp").forward(request, response);
        }
//        request.setAttribute("data", list);
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
        processRequest(request, response);
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
