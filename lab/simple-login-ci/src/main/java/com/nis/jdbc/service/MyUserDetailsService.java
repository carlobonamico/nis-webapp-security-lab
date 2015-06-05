package com.nis.jdbc.service;

import com.nis.jdbc.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * User: zannino
 * Date: 22/05/2015
 * Time: 17:04
 */
@Service
public class MyUserDetailsService {

    @Autowired
    @Qualifier("jdbcDAOImpl")
    private UserDAO userDAO;

    @Transactional
    public UserDetails loadUserByUsernameAndPassword(String username, String password) throws UsernameNotFoundException {
        return userDAO.getUserByUsername(username,password);
    }


}
