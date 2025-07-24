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
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.SubjectSetting;
import ulti.Helper;

/**
 *
 * @author kienb
 */
public class SubjectSettingDAO extends BaseDAO {

    public List<SubjectSetting> getAll() {
        List<SubjectSetting> list = new ArrayList<>();
        String sql = "Select * from subject_setting";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                SubjectSetting as = new SubjectSetting();
                as.setId(rs.getInt(1));
                as.setLevel(rs.getString(4));
                as.setType(rs.getString(3));
                as.setActive(rs.getBoolean(2));
                list.add(as);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public List<SubjectSetting> getAllWithSearch(String searchvalue,String status) {
        List<SubjectSetting> list = new ArrayList<>();
        List<Object> params = new ArrayList<>();
        String sql = "Select * from subject_setting where 1=1";
        if(searchvalue != null && !searchvalue.trim().isEmpty()){
            sql += " and (level like ? or type like ?)";
            params.add("%" + searchvalue + "%");
            params.add("%" + searchvalue + "%");
        }
        if(status != null && !status.trim().isEmpty()){
            sql += " and is_active = ?";
            params.add(status.equals("1"));
        }
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            Helper.setParams(st, params);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                SubjectSetting as = new SubjectSetting();
                as.setId(rs.getInt(1));
                as.setLevel(rs.getString(4));
                as.setType(rs.getString(3));
                as.setActive(rs.getBoolean(2));
                list.add(as);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void updateSubjectSetting(int id, String type, String level, boolean status) {
        String sql = "update subject_setting\n"
                + "set level = ?,\n"
                + "    type = ?,\n"
                + "    is_active = ?\n"
                + "    where id = ?";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, level);
            st.setString(2, type);
            st.setBoolean(3, status);
            st.setInt(4, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insert(String type, String level, Boolean status) {
        String sql = "insert into subject_setting ( is_active, type, level)\n"
                + "values (?,?,?)";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(3, level);
            st.setString(2, type);
            st.setBoolean(1, status);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteByID(int id) {
        String sql = "delete\n"
                + "from subject_setting\n"
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
}
