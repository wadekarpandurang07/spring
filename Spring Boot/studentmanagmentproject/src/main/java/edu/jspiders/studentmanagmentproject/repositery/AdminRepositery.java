package edu.jspiders.studentmanagmentproject.repositery;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.jspiders.studentmanagmentproject.entity.Admin;

@Repository
public interface AdminRepositery extends JpaRepository<Admin, Integer> {

	 Optional<Admin>  findByEmailAndPassword(String email , String Password);
	 
	  Optional<Admin>  findByUserNameAndPassword(String userName , String password);
}
