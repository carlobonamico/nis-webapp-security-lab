package com.nis.jdbc.dao;

import com.nis.jdbc.entity.User;

/**
 * User: zannino
 * Date: 22/05/2015
 * Time: 17:07
 */
public interface UserDAO {

    User getUserByUsername(String username, String password);

}
