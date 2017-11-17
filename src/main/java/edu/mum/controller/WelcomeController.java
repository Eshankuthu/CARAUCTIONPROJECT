package edu.mum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
@RequestMapping("")
@RequestMapping("/welcome")
public class WelcomeController {

	public String welcome() {
		return "welcome";
	}

}
