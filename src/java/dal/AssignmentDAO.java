/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Assignment;
import model.Project;
import ulti.Helper;

/**
 *
 * @author kienb
 */
public class AssignmentDAO extends BaseDAO {

    public List<Assignment> getAssignmentWithSearch() {
        List<Assignment> list = new ArrayList<>();
        String sql = "select * from assignment";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Assignment as = new Assignment();
                as.setId(rs.getInt(1));
                as.setTitle(rs.getString(2));
                as.setAttachment(rs.getString(3));
                as.setStartdate(rs.getTimestamp(4).toLocalDateTime());
                as.setEnddate(rs.getTimestamp(5).toLocalDateTime());
                ProjectDAO projectDAO = new ProjectDAO();
                Project project = projectDAO.getProjectByID(rs.getInt(6));
                as.setProject(project);
                list.add(as);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public List<Assignment> getAssignmentWithSearch(String searchValue,String projectID) {
        List<Assignment> list = new ArrayList<>();
        List<Object> params = new ArrayList<>();
        String sql = "select * from assignment where 1=1";
        if(searchValue != null && !searchValue.trim().isEmpty()){
            sql += " and title like ?";
            params.add("%" + searchValue + "%");
        }
        if(projectID != null && !projectID.trim().isEmpty()){
            sql += " and projectID = ?";
            params.add(Integer.parseInt(projectID));
        }
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            Helper.setParams(st, params);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Assignment as = new Assignment();
                as.setId(rs.getInt(1));
                as.setTitle(rs.getString(2));
                as.setAttachment(rs.getString(3));
                as.setStartdate(rs.getTimestamp(4).toLocalDateTime());
                as.setEnddate(rs.getTimestamp(5).toLocalDateTime());
                ProjectDAO projectDAO = new ProjectDAO();
                Project project = projectDAO.getProjectByID(rs.getInt(6));
                as.setProject(project);
                list.add(as);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void insertAssignment(String title, LocalDateTime startDate, LocalDateTime endDate, String attachment, int projectID) {
        String sql = "insert into assignment (title, attachment, startdate, enddate, projectID)\n"
                + "values (?,?,?,?,?)";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, title);
            st.setString(2, attachment);
            st.setTimestamp(3, Timestamp.valueOf(startDate));
            st.setTimestamp(4, Timestamp.valueOf(endDate));
            st.setInt(5, projectID);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Assignment getAssignmentByID(int id) {
        String sql = "select * from assignment where id = ?";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Assignment as = new Assignment();
                as.setId(rs.getInt(1));
                as.setTitle(rs.getString(2));
                as.setAttachment(rs.getString(3));
                as.setStartdate(rs.getTimestamp(4).toLocalDateTime());
                as.setEnddate(rs.getTimestamp(5).toLocalDateTime());
                ProjectDAO projectDAO = new ProjectDAO();
                Project project = projectDAO.getProjectByID(rs.getInt(6));
                as.setProject(project);
                return as;
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void UpdateAssignment(String title, LocalDateTime startDate, LocalDateTime endDate, String attachment, int projectID, int id) {
        String sql = "update assignment\n"
                + "set projectID = ?,\n"
                + "    attachment = ?,\n"
                + "    startdate = ?,\n"
                + "    enddate = ?,\n"
                + "    title = ?\n"
                + "where id = ?";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, projectID);
            st.setString(2, attachment);
            st.setTimestamp(3, Timestamp.valueOf(startDate));
            st.setTimestamp(4, Timestamp.valueOf(endDate));
            st.setString(5, title);
            st.setInt(6, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteByID(int id) {
        String sql = "delete assignment where id = ?";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
