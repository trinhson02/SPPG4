/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.classmanager;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.User;
import ulti.Helper;

/**
 *
 * @author kienb
 */
public class classStudent extends HttpServlet {
   
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
            String action = request.getParameter("action");
            String classID = request.getParameter("classID");
            request.setAttribute("classID", classID);
            String id = request.getParameter("id");
            UserDAO udo = new UserDAO();
            List<User> users = udo.getStudentByConditions(classID);
            request.setAttribute("users", users);
            if(action == null || action.trim().isEmpty()){
                int pagenum = request.getParameter("pageNum") != null ? Integer.parseInt(request.getParameter("pageNum")) : 1;
                String searchValue = request.getParameter("search");
                request.setAttribute("search", searchValue);                
                List<User> list = udo.getAllUserByClass(searchValue, Integer.parseInt(classID));
                List<User> pagination = Helper.pagination(list, pagenum, 5);
                int totalPage = list.size() % 5 == 0 ? (list.size() / 5) : (list.size() / 5 + 1);
                request.setAttribute("pageNum", pagenum);
                request.setAttribute("totalPage", totalPage);
                request.setAttribute("studentList", pagination);
                request.setAttribute("active", 4);
                request.getRequestDispatcher("ClassStudent.jsp").forward(request, response);
                return;
            }
            else if(action.equals("delete")){
                udo.removeStudent(Integer.parseInt(id),Integer.parseInt(classID));
            }
            else if(action.equals("add")){
                String[] ids = request.getParameterValues("student");
                udo.addUserToClass(ids,classID);
            }
            response.sendRedirect("classStudent?classID="+classID);
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
        processRequest(request, response);
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
