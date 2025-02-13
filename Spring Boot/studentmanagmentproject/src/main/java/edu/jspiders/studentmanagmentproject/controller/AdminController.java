package edu.jspiders.studentmanagmentproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import edu.jspiders.studentmanagmentproject.entity.Admin;
import edu.jspiders.studentmanagmentproject.service.AdminService;

@RestController
public class AdminController {
	
	@Autowired
	AdminService adminService;

	@PostMapping(path = "/add-Admin")
	protected Admin addAdmin(@RequestBody Admin admin) {
		
		return adminService.addAdmin(admin);
	}
	
	@GetMapping(path = "admins-email")
	protected String findByName(@RequestParam String email , @RequestParam String password) {
		
		boolean adminIsPresent = adminService.findByEmailAndPassword(email , password);
		
		if(adminIsPresent) {
			return "admin authenticate";
		}
		else 
			return "invalid Email Or Password";
	}
	
	@GetMapping(path = "/admins-user")
	protected String findByUser (String userName , String password ) {
		
	boolean adminIsPresent = adminService.findByUserName(userName , password);
		if(adminIsPresent) {
			return "Admin Authenticated";
		}
		else 
			return "Invalid UserName or password";
	}
	
	@PutMapping(path = "/update-admin")
	protected Admin updateAdmin(@RequestBody Admin admin) {
		
		return adminService.updateAdmin(admin);
		
	}
	
	
	@DeleteMapping(path = "/delete-admin")
	protected String deleteAdmin(@RequestParam int id) {
		
		adminService.deleteById(id);
		
		return "Admin Deleted";
	}
}
