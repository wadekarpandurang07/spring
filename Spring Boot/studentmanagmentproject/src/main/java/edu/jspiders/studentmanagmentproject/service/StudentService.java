package edu.jspiders.studentmanagmentproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.jspiders.studentmanagmentproject.entity.Student;
import edu.jspiders.studentmanagmentproject.repositery.StudentRepositery;

@Service
public class StudentService {
	
	@Autowired
	StudentRepositery studentRepositery;

	public void addStudent(Student student) {
	
		studentRepositery.save(student);
		
	}

	public List<Student> findAllStudents() {
		
	List<Student> students = studentRepositery.findAll();
		return students;
	}

	public void updateStudent(Student student) {
		
		studentRepositery.save(student);
		
	}

	public void deleteStudent(int id) {

      studentRepositery.deleteById(id);
		
	}

	public Optional<Student> findByName(String name) {
		
		Optional<Student> students = studentRepositery.findByName(name);
		
		return students;
	}

}
