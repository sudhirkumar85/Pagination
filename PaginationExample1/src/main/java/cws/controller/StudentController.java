package cws.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cws.entity.Student;
import cws.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@GetMapping("/")
	public String Students() {

		return "index";
	}

	@GetMapping("/students")
	public String listStudents(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "10") int size,
			Model model) {

		Page<Student> studentPage = studentService.getStudents(page, size);
		
	
		model.addAttribute("studentPage", studentPage);
		return "studentList";
	}
}
