/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import static dal.BaseDAO.getJDBCConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ClassIssueSetting;

/**
 *
 * @author kienb
 */
public class ClassSettingDAO extends BaseDAO {

    public List<ClassIssueSetting> getAll(String searchName) {
        List<ClassIssueSetting> list = new ArrayList<>();
        List<Object> params = new ArrayList<>();
        String sql = "Select * from class_setting ";
        try {
            if(searchName != null && !searchName.trim().isEmpty()){
                sql += "where name like ? or workprocess like ? or status like ?";
                params.add(searchName);
                params.add(searchName);
                params.add(searchName);
            }
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ClassIssueSetting cis = new ClassIssueSetting();
                cis.setId(rs.getInt(1));
                cis.setName(rs.getString(4));
                cis.setProcess(rs.getString(3));
                cis.setStatus(rs.getString(2));
                list.add(cis);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void deleteByID(int id) {
        String sql = "delete\n"
                + "from class_setting\n"
                + "where id = ?";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insert(String name, String status, String process) {
        String sql = "insert into class_setting ( status, workprocess, name)\n"
                + "values (?,?,?)";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(3, status);
            st.setString(2, process);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClassIssueSetting.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void update(String id, String name, String status, String process) {
        String sql = "update class_setting\n"
                + "set name = ?,\n"
                + "    status = ?,\n"
                + "    workprocess = ?\n"
                + "where id = ?";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, status);
            st.setString(3, process);
            st.setInt(4, Integer.parseInt(id));
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClassIssueSetting.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
