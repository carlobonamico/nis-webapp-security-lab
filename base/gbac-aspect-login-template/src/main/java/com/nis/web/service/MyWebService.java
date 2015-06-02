package com.nis.web.service;

import org.springframework.security.access.annotation.Secured;

/**
 * User: zannino
 * Date: 02/06/2015
 * Time: 16:01
 */
public interface MyWebService {

    @Secured({"ROLE_ADMIN"})
    void doSomething();
}
