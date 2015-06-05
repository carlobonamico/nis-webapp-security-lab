package com.nis.jdbc.dao;

import com.nis.jdbc.entity.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * User: zannino
 * Date: 25/05/2015
 * Time: 14:05
 */
@Repository
@Qualifier("hbmDAOImpl")
public class UserDAOHbmImpl implements UserDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public User getUserByUsername(String username, String password) {

        Session session = sessionFactory.getCurrentSession();
        User user = null;
        try {
            Query query = session
                    .createSQLQuery("SELECT * FROM users WHERE username='" + username + "' and password='" + password + "'")
                    .addEntity(User.class);
            List<User> users = query.list();
            if(users != null && users.size()==1){
                return users.get(0);
            }
        } catch (Exception e){
            e.printStackTrace();
        }

        return user;

    }
}
