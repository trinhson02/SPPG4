/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.subjectmanager;

import dal.AssignmentDAO;
import dal.ClassDAO;
import dal.ProjectDAO;
import dal.SubjectSettingDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Assignment;
import model.Class;
import model.Project;
import model.SubjectSetting;
import ulti.Helper;

/**
 *
 * @author kienb
 */
@WebServlet(name = "SubjectManager", urlPatterns = {"/SubjectManager"})
public class SubjectManager extends HttpServlet {

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
            int active = request.getParameter("active") != null ? Integer.parseInt(request.getParameter("active")) : 1;
            String action = request.getParameter("action");
            AssignmentDAO assignmentDAO = new AssignmentDAO();
            request.setAttribute("active", active);
            if (action == null) {  
                String searchValue = request.getParameter("searchValue");
                request.setAttribute("searchValueClass", searchValue);
                String statusClass = request.getParameter("statusClass");
                request.setAttribute("statusClass", statusClass);
                String searchSubject = request.getParameter("searchSubject");
                request.setAttribute("searchSubjectSetting", searchSubject);
                String statusSubject = request.getParameter("statusSubject");
                request.setAttribute("statusSubject", statusSubject);
                String searchAssignment = request.getParameter("searchAssignment");
                request.setAttribute("searchValueAssignment", searchAssignment);
                String projectID = request.getParameter("searchProjectID");
                request.setAttribute("searchProjectID", projectID);
                int pagenum = request.getParameter("pagenum") != null ? Integer.parseInt(request.getParameter("pagenum")) : 1;
                int pageAssignments = request.getParameter("pageAS") != null ? Integer.parseInt(request.getParameter("pageAS")) : 1;
                int pageSubejectSettings = request.getParameter("pageSB") != null ? Integer.parseInt(request.getParameter("pageSB")) : 1;
                List<Assignment> assignments = assignmentDAO.getAssignmentWithSearch(searchAssignment,projectID);
                List paginationAssignments = Helper.pagination(assignments, pageAssignments, 5);
                int totalPageAssignments = assignments.size() % 5 == 0 ? assignments.size() / 5 : (assignments.size() / 5 + 1);
                request.setAttribute("assignments", paginationAssignments);
                request.setAttribute("totalPageAssignments", totalPageAssignments);
                SubjectSettingDAO subjectSettingDAO = new SubjectSettingDAO();
                List<SubjectSetting> listSubjectSettings = subjectSettingDAO.getAll();
                List paginationDB = Helper.pagination(listSubjectSettings, pageSubejectSettings, 5);
                int totalPageDB = listSubjectSettings.size() % 5 == 0 ? listSubjectSettings.size() / 5 : (listSubjectSettings.size() / 5 + 1);
                request.setAttribute("totalPageDB", totalPageDB);
                request.setAttribute("subjectSettings", paginationDB);
                ProjectDAO projectDAO = new ProjectDAO();
                List<Project> list = projectDAO.getAll(null,null);
                ClassDAO classDAO = new ClassDAO();
                List<Class> classes = classDAO.getAllWithSearch(searchValue, statusClass);
                List pagination = Helper.pagination(classes, pagenum, 5);
                int totalPage = classes.size() % 5 == 0 ? classes.size() / 5 : (classes.size() / 5 + 1);
                request.setAttribute("classes", pagination);
                request.setAttribute("totalPage", totalPage);
                request.setAttribute("list", list);
                request.getRequestDispatcher("SubjectManager.jsp").forward(request, response);
            } else if (action.equals("delete")) {
                String id = request.getParameter("id");
                assignmentDAO.deleteByID(Integer.parseInt(id));
                response.sendRedirect("SubjectManager");
            } else if (action.equals("deleteSettingSubject")) {
                String id = request.getParameter("id");
                SubjectSettingDAO subjectSettingDAO = new SubjectSettingDAO();
                subjectSettingDAO.deleteByID(Integer.parseInt(id));
                response.sendRedirect("SubjectManager");
            } else if(action.equals("deleteClass")){
                String id = request.getParameter("id");
                ClassDAO classDAO = new ClassDAO();
                classDAO.deleteByID(Integer.parseInt(id));
                response.sendRedirect("SubjectManager");
            }
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
