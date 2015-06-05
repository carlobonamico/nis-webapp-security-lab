package com.nis.jdbc.dao;

import com.nis.jdbc.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * User: zannino
 * Date: 22/05/2015
 * Time: 17:07
 */
@Repository
@Qualifier("jdbcDAOImpl")
public class UserDAOImpl implements UserDAO {

    @Autowired
    private DataSource dataSource;

    @Override
    public User getUserByUsername(String username, String password) {

        String sql = "select * from users where username='"+username+"' and password='"+password+"'";
        System.out.println("### SQL: "+sql+" ###");
        User user = null;
        try(
                Connection c = dataSource.getConnection();
                Statement s = c.createStatement();
        ){
            ResultSet rs = s.executeQuery(sql);
            while(rs.next()){
                user = new User();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEnabled(Boolean.getBoolean(rs.getString("enabled")));
            }

        } catch (Exception e){
            e.printStackTrace();
        }

        return user;

    }
    
    public User getUserByLastName(String username, String password) {

        String sql = "select * from users where username='"+username+"' and password='"+password+"'";
        System.out.println("### SQL: "+sql+" ###");
        User user = null;
        try(
                Connection c = dataSource.getConnection();
                Statement s = c.createStatement();
        ){
            ResultSet rs = s.executeQuery(sql);
            while(rs.next()){
                user = new User();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEnabled(Boolean.getBoolean(rs.getString("enabled")));
            }

        } catch (Exception e){
            e.printStackTrace();
        }

        return user;

    }
}
