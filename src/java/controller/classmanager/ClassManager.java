/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.classmanager;

import dal.ClassSettingDAO;
import dal.ProjectDAO;
import dal.SubjectDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.ClassIssueSetting;
import model.Project;
import model.Subject;
import ulti.Helper;

/**
 *
 * @author kienb
 */
public class ClassManager extends HttpServlet {
   
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
            String searchName = request.getParameter("searchValue");
            String searchSubject = request.getParameter("searchSubject");
            String searchSetting = request.getParameter("searchSetting");
            request.setAttribute("searchValue", searchSetting);
            request.setAttribute("searchValueProject", searchSubject);
            request.setAttribute("subjectIDSearch", searchSubject);
            int pagenumProject = request.getParameter("pagenumProject") != null ? Integer.parseInt(request.getParameter("pagenumProject")) : 1;
            int pagenumSettings = request.getParameter("pagenumSetting") != null ? Integer.parseInt(request.getParameter("pagenumSetting")) : 1;
            String action = request.getParameter("action");
            ProjectDAO projectDAO = new ProjectDAO();
            ClassSettingDAO classSettingDAO = new ClassSettingDAO();
            SubjectDAO subjectDAO = new SubjectDAO();
            ArrayList<Subject> listSubject = subjectDAO.getAllSubject();
            request.setAttribute("subjects", listSubject);
            if(action == null || action.trim().isEmpty()){
                List<Project> list = projectDAO.getAll(searchName,searchSubject);
                List<ClassIssueSetting> settings = classSettingDAO.getAll(searchSetting);
                List paginationProject = Helper.pagination(list, pagenumProject, 5);
                List paginationSettings = Helper.pagination(settings, pagenumSettings, 5);
                int totalPageProject = list.size() % 5 == 0 ? list.size() / 5 : (list.size() / 5 + 1);
                int totalPageSettings = settings.size() % 5 == 0 ? settings.size() / 5 : (settings.size() / 5 + 1);
                request.setAttribute("listProject", paginationProject);
                request.setAttribute("listSettings", paginationSettings);
                request.setAttribute("totalPageProject", totalPageProject);
                request.setAttribute("totalPageSettings", totalPageSettings);
                request.getRequestDispatcher("ClassManager.jsp").forward(request, response);
                return;
            }
            else if(action.equals("delete")){
                int id = Integer.parseInt(request.getParameter("id"));
                projectDAO.deleteByID(id);
            }
            else if(action.equals("deleteSettingSubject")){
                int id = Integer.parseInt(request.getParameter("id"));
                classSettingDAO.deleteByID(id);
            }
            response.sendRedirect("ClassManager");
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
