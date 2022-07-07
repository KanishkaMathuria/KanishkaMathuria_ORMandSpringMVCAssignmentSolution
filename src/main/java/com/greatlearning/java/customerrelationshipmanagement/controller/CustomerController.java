package com.greatlearning.java.customerrelationshipmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatlearning.java.customerrelationshipmanagement.entity.Customer;
import com.greatlearning.java.customerrelationshipmanagement.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	
		//update information regarding customer
		@RequestMapping ("/showFormForUpdate")
		public String handleBeginUpdate (@RequestParam("customerId") int theId, Model theModel) {
			Customer customer = customerService.findById(theId);
			theModel.addAttribute("customer", customer);
			return "customer-details";
		}

		// create a new customer object
		@RequestMapping ("/showFormForAdd")
		public String handleBeginAdd (Model theModel) {
			Customer customer = new Customer();
			theModel.addAttribute("customer", customer);
			return "customer-details";
		}
		
		//add customer info in the database
		@PostMapping("/save")
		public String handleSave(@RequestParam("id") int theId,@RequestParam("firstName") String firstName,@RequestParam("lastName") String lastName,@RequestParam("email") String email ) {
			Customer customer;
			if (theId!=0) {
				customer = customerService.findById(theId);
				customer.setFirstName(firstName);
				customer.setLastName(lastName);
				customer.setEmail(email);
			} else {
				customer = new Customer (firstName,lastName,email);
				customerService.save(customer);
			}
			return "redirect:/customers/list";
			}
		
		//delete the info regarding selected customer
		@RequestMapping ("/delete")
		public String handleDelete(@RequestParam("customerId") int theId) {
			customerService.deleteById(theId);
			return "redirect:/customers/list";
		}
}
