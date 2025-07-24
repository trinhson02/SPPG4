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
import model.Subject;

/**
 *
 * @author phuc2
 */
public class SubjectDAO extends BaseDAO {

    public ArrayList<Subject> getAllSubject() {
        ArrayList<Subject> sub = new ArrayList<>();
        String query = "Select * from `subject`";
        try {
            Connection connection = getJDBCConnection();
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Subject a = new Subject(rs.getInt("subject_id"),
                        rs.getString("subject_code"),
                        rs.getString("subject_name"),
                        rs.getString("is_active"));
                sub.add(a);
            }
        } catch (SQLException e) {

        }
        return sub;
    }

    public void insertSubject(String code, String name, String descript, String status) {

        try {
            Connection connection = getJDBCConnection();
            String sql = "insert into subject(`subject_code`, `subject_name`, `is_active`) values (?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, code);
            ps.setString(2, name);
            ps.setString(3, status);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public Subject getAllSubjectById(int id) {

        String sql = "Select * from subject where `subject_id` =?";
        try {
            Connection connection = getJDBCConnection();

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Subject subject = new Subject();
                subject.setSubjectId(rs.getInt("subject_id"));
                subject.setSubjectCode(rs.getString("subject_code"));
                subject.setSubjectName(rs.getString("subject_name"));
                subject.setIsActive(rs.getString("is_active"));
                return subject;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void updateSubject(String code, String name, String descript, String status, int id) {
        String sql = "UPDATE subject SET subject_code=?, subject_name =?,subject_description =?, is_active =? WHERE subject_id = ?";
        try {
            Connection connection = getJDBCConnection();

            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, code);
            st.setString(2, name);
            st.setString(3, descript);
            st.setString(4, status);
            st.setInt(5, id);
            st.executeUpdate();

        } catch (SQLException e) {

        }
    }

    public void delete(int id) {
        String sql = "delete from subject Where `subject_id` =?";

        try {
            Connection connection = getJDBCConnection();

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Subject> getListByPage(ArrayList<Subject> list, int start, int end) {
        ArrayList<Subject> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public static void main(String[] args) {

        SubjectDAO c = new SubjectDAO();
        List<Subject> list = c.getAllSubject();

        for (Subject o : list) {
            System.out.println(o);
        }
    }
}
