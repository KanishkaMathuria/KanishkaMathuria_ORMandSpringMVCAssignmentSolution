package com.greatlearning.java.customerrelationshipmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {

	@RequestMapping("/")
	public String handleWelcome() {
		return "welcomepage";
	}
}