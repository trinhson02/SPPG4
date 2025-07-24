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
import model.Class;
import ulti.Helper;

/**
 *
 * @author nocol
 */
public class ClassDAO extends BaseDAO {

    public List<Class> getAll() {
        List<Class> list = new ArrayList<>();
        String sql = "select * from class";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Class cls = new Class();
                cls.setClassId(rs.getInt(1));
                cls.setClassCode(rs.getString(2));
                cls.setClassDetail(rs.getString(3));
                cls.setStatus(rs.getBoolean(4));
                list.add(cls);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public List<Class> getAllWithSearch(String code,String status) {
        List<Class> list = new ArrayList<>();
        List<Object> params = new ArrayList<>();
        String sql = "select * from class where 1=1";
        if(code != null && !code.trim().isEmpty()){
            sql += " and class_code = ?";
            params.add(code);
        }
        if(status != null && !status.trim().isEmpty()){
            sql += " and status = ?";
            params.add(status.equals("1"));
        }
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            Helper.setParams(st, params);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Class cls = new Class();
                cls.setClassId(rs.getInt(1));
                cls.setClassCode(rs.getString(2));
                cls.setClassDetail(rs.getString(3));
                cls.setStatus(rs.getBoolean(4));
                list.add(cls);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }


    public void updateClass(int parseInt, String code, String detail, String status) {
        String sql = "update class\n"
                + "set class_code = ?,\n"
                + "    class_detail = ?,\n"
                + "    status = ?\n"
                + "where class_id = ?";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, code);
            st.setString(2, detail);
            st.setBoolean(3, status.equals("1"));
            st.setInt(4, parseInt);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertClass(String code, String detail, String status) {
        String sql = "insert into class (class_code, class_detail, status)\n"
                + "values (?,?,?)";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, code);
            st.setString(2, detail);
            st.setBoolean(3, status.equals("1"));
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteByID(int parseInt) {
        String sql = "delete\n"
                + "from class\n"
                + "where class_id = ?";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, parseInt);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
