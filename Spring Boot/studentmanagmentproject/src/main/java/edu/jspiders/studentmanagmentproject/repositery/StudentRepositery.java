package edu.jspiders.studentmanagmentproject.repositery;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.jspiders.studentmanagmentproject.entity.Student;

@Repository
public interface StudentRepositery extends JpaRepository<Student, Integer> {

	
	     Optional<Student> findByName(String name);
}
