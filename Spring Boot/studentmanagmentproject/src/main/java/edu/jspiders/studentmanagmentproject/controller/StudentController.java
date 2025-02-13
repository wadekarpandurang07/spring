package edu.jspiders.studentmanagmentproject.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import edu.jspiders.studentmanagmentproject.entity.Student;
import edu.jspiders.studentmanagmentproject.service.StudentService;

@RestController
public class StudentController {
	
	@Autowired
	StudentService studentService;

	@PostMapping(path = "/add-students")
	protected String addStudents( @RequestBody Student student) {
		
		studentService.addStudent(student);
		
		return "Student Added";
	}
	
	
	@GetMapping(path = "/Students")
	protected Object findAllStudents() {
		
		List<Student> students = studentService.findAllStudents();
		
		if(students.isEmpty()) {
			return "student not found";
		}
		else
			return students;
	}
	
	
	@PutMapping(path = "/update-student")
	protected String updateStudent(@RequestBody Student student) {
		
		studentService.updateStudent(student);
		
		return "Student Updated Succesfully";
	}
	
	
	@DeleteMapping(path = "/delete-student")
	protected String deleteStudent(@RequestParam int id) {
		
		studentService.deleteStudent(id);
		
		return "Student Deleted Succesfully";
	}
	
	
	@GetMapping(path = "student-name")
	protected Object findByName (@RequestParam String name) {
		
		Optional<Student> students = studentService.findByName(name);
		
		if(students.isEmpty()) {
			return "Student not found";
		}
		else 
			return students;
	}
}
