package com.nis.jdbc.dao;

import com.nis.jdbc.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

        String sql = "select * from users where username=? and password=?";
        User user = null;
        try(
                Connection c = dataSource.getConnection();
                PreparedStatement ps = c.prepareStatement(sql);
        ){
            ps.setString(1,username);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
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
