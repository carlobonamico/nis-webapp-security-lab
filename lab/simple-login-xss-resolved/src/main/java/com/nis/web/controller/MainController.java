package com.nis.web.controller;

import com.nis.jdbc.service.MyUserDetailsService;
import org.owasp.esapi.ESAPI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class MainController {

	@Autowired
	private MyUserDetailsService myUserDetailsService;

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		return model;

	}

	@RequestMapping(value = { "/welcome" }, method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView welcomePage(
			@RequestParam(value = "msgText", required = false) String msgText,
			HttpServletRequest request,
            HttpServletResponse response) {
        ModelAndView model = new ModelAndView();
		System.out.println("### msgText: "+msgText+" ###");
        if(request.getSession().getAttribute("userDetails")!=null){
			model.addObject("msgText",ESAPI.encoder().encodeForHTML(msgText));
            model.setViewName("welcome");
        } else {
            model.addObject("error", "Authentication required!");
            model.setViewName("login");
        }

        ESAPI.httpUtilities().addCookie(response, new Cookie("cname", "cvalue"));
		return model;

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,
							  @RequestParam(value = "username", required = true) String username,
							  @RequestParam(value = "password", required = true) String password,
                              HttpServletRequest request,
                              HttpServletResponse response) {

		System.out.println("### username: "+username+" password: "+password+" ###");
		ModelAndView model = new ModelAndView();
		UserDetails userDetails = myUserDetailsService.loadUserByUsernameAndPassword(username,password);
		if(userDetails!=null){
			request.getSession().setAttribute("userDetails",userDetails);
			model.setViewName("welcome");
		} else {
			model.addObject("error", "Invalid username and password!");
			model.setViewName("login");
		}

        ESAPI.httpUtilities().addCookie(response,new Cookie("cname","cvalue"));
		return model;

	}

    @RequestMapping(value = "/logout", method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
                              @RequestParam(value = "logout", required = false) String logout,
                              HttpServletRequest request) {

        request.getSession().invalidate();
        ModelAndView model = new ModelAndView();

        if (logout != null) {
            model.addObject("msg", "You've been logged out successfully.");
            model.setViewName("login");
        }

        return model;

    }

}