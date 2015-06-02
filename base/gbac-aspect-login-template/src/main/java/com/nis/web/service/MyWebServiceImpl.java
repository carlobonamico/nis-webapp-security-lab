package com.nis.web.service;

import org.springframework.stereotype.Service;

/**
 * User: zannino
 * Date: 02/06/2015
 * Time: 16:01
 */
@Service
public class MyWebServiceImpl implements MyWebService {
    @Override
    public void doSomething() {
        System.out.println("something cool!");
    }
}
