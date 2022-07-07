package com.greatlearning.java.customerrelationshipmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greatlearning.java.customerrelationshipmanagement.entity.Customer;
import com.greatlearning.java.customerrelationshipmanagement.service.CustomerService;

@Controller
@RequestMapping ("/customers")
public class ListCustomersController {

	@Autowired
	private CustomerService customerService;
	
	//display the list of all customers saved in the database
	@RequestMapping ("/list")
	public String handleListCustomers (Model theModel) {
		List <Customer > customers = customerService.listAll();
		theModel.addAttribute("customers", customers);
		return "customers-listing";
	}
}
