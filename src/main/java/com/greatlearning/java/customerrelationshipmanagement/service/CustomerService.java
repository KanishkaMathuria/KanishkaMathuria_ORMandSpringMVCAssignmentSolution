package com.greatlearning.java.customerrelationshipmanagement.service;

import java.util.List;
import com.greatlearning.java.customerrelationshipmanagement.entity.Customer;

public interface CustomerService {
List <Customer> listAll ();
	
	Customer findById (int  theId);
	
	void save (Customer theStudent);
	
	void deleteById (int theId);
}
