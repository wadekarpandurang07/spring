package edu.jspiders.studentmanagmentproject.service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.jspiders.studentmanagmentproject.entity.Admin;
import edu.jspiders.studentmanagmentproject.repositery.AdminRepositery;



@Service
public class AdminService {
	
	@Autowired
	AdminRepositery adminRepositery;

	public Admin addAdmin(Admin admin) {
		
	return adminRepositery.save(admin);
	}

	public boolean findByEmailAndPassword(String email ,String password) {
		
		Optional<Admin> admin = adminRepositery.findByEmailAndPassword(email , password);
		
		if(admin.isPresent()) {
			if(admin.get().getEmail().equals(email) && admin.get().getPassword().equals(password)) {
				return true;
			}
			else
				return false;
		}		
	else
		return false;

	}

	public boolean findByUserName(String userName, String password) {
		
		 Optional<Admin> admin =  adminRepositery.findByUserNameAndPassword(userName,password);
		if(admin.isPresent()) {
			if(admin.get().getUserName().equals(userName) && admin.get().getPassword().equals(password)) {
				return true;
			}
			else 
				return false;
		}
		
		else
			return false;
	}

	public Admin updateAdmin(Admin admin) {
		
		 return adminRepositery.save(admin);
		
	}

	public void deleteById(int id) {
		
	      adminRepositery.deleteById(id);
		
	}
}
