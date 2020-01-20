package com.hello.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user-module")

public class MainController {
	  @Autowired
	    UserListService service;
	 
	    @RequestMapping(value = "/getUserListService", method = RequestMethod.GET)
	    public String getUserListService(Model model)
	    {
	        model.addAttribute("userlist", service.getUserListService());
	        return "mainview";
	    }

}

