/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ulti;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Collections;
import java.util.List;

/**
 *
 * @author kienb
 */
public class Helper {

    public static void setParams(PreparedStatement ps, List<Object> args) throws SQLException {
        int i = 1;
        for (Object arg : args) {
            if (arg instanceof Date) {
                ps.setTimestamp(i++, new Timestamp(((Date) arg).getTime()));
            } else if (arg instanceof Integer) {
                ps.setInt(i++, (Integer) arg);
            } else if (arg instanceof Long) {
                ps.setLong(i++, (Long) arg);
            } else if (arg instanceof Double) {
                ps.setDouble(i++, (Double) arg);
            } else if (arg instanceof Float) {
                ps.setFloat(i++, (Float) arg);
            } else if(arg instanceof Boolean){
                ps.setBoolean(i++, (Boolean) arg);
            }  
            else {
                ps.setString(i++, (String) arg);
            } 
        }
    }
    
    public static List pagination(List list,int pagenum,int pagesize){
        if(list == null || list.isEmpty()){
            return Collections.EMPTY_LIST;
        }
        return list.subList((pagenum - 1) * pagesize, Math.min(pagenum * pagesize, list.size()));
    }
}
