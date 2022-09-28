
package com.jspiders.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.jspiders.springmvc.dto.StudentDTO;
import com.jspiders.springmvc.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	private StudentService service;

	@GetMapping("/addStudent")
	private String addStudentPage(ModelMap map, @SessionAttribute(name = "login", required = false) StudentDTO login) {
			return "AddStudentForm";

	}

	@PostMapping("/addStudent")
	public String addStudent(Model map, @RequestParam String name, @RequestParam String username,
			@RequestParam String email, @RequestParam String password,
			@SessionAttribute(name = "login", required = false) StudentDTO login) {
		if (login != null) {
			service.addStudent(name, username, email, password);
			return "AddStudentForm";
		}
		map.addAttribute("msg", "Please login first");
		return "LoginPage";
	}

	@PostMapping("/login")
	private String login(HttpSession session, HttpServletRequest request, @RequestParam String username,
			@RequestParam String password, Model map,
			@SessionAttribute(name = "login", required = false) StudentDTO login) {
		StudentDTO student = service.login(username, password);
		if (student != null) {
			session = request.getSession();
			session.setAttribute("login", student);
			session.setMaxInactiveInterval(300);
			map.addAttribute("student", student);
			return "HomePage";
		}
		map.addAttribute("msg", "invalid username or password ");
		return "LoginPage";
	}

	@GetMapping("/logout")
	private String logout(Model map, HttpSession session) {
			session.invalidate();
			map.addAttribute("msg", "Logged out Successfully");
			return "LoginPage";
	}
	@GetMapping("/removeStudent")
	private String removeStudent(Model map, @SessionAttribute(name = "login", required = false) StudentDTO login) {
		if (login != null) {
			List<StudentDTO> students = service.viewAllStudents();
			map.addAttribute("students", students);
			return "RemoveStudent";
		}
		map.addAttribute("msg", "Please login first");
		return "LoginPage";
	}

	@PostMapping("/removeStudent")
	private String removeStudent1(@RequestParam int id, ModelMap map,
			@SessionAttribute(name = "login", required = false) StudentDTO login) {
		if (login != null) {
			StudentDTO student = service.removeStudent(id);
			if (student != null) {
				map.addAttribute("msg", "Student removed from database");
				List<StudentDTO> students = service.viewAllStudents();
				map.addAttribute("students", students);
				return "RemoveStudent";
			}
			map.addAttribute("msg", "Invalid student id entered");
			return "RemoveStudent";

		}
		map.addAttribute("msg", "Please login first");
		return "LoginPage";

	}

	@GetMapping("/updateStudent")
	private String updateStudent(ModelMap map, @SessionAttribute(name = "login", required = false) StudentDTO login) {
		if (login != null) {
			List<StudentDTO> students = service.viewAllStudents();
			map.addAttribute("students", students);
			return "UpdateStudent";
		}
		map.addAttribute("msg", "Please login first");
		return "LoginPage";
	}

	@PostMapping("/updateStudent")
	private String updateStudent1(@RequestParam int id, ModelMap map,
			@SessionAttribute(name = "login", required = false) StudentDTO login) {
		if(login!=null) {
			StudentDTO student = service.searchStudent(id);
			if (student != null) {
				map.addAttribute("student", student);
				return "UpdateStudent";
			}
			map.addAttribute("msg", "Invalid student id entered");
			List<StudentDTO> students = service.viewAllStudents();
			map.addAttribute("students", students);
			return "UpdateStudent";
		}
		map.addAttribute("msg", "Please login first");
		return "LoginPage";
	}

	@PostMapping("/updateStudentData")
	private String updateStudent2(@RequestParam int id, @RequestParam String name, @RequestParam String email,
			@RequestParam String userName, @RequestParam String password, ModelMap map,
			@SessionAttribute(name = "login", required = false) StudentDTO login) {
		if(login!=null) {
			StudentDTO student = service.searchStudent(id);
			if (student != null) {
				service.updateStudent(id, name, email, userName, password);
				map.addAttribute("msg", "Student updated successfully");
				List<StudentDTO> students = service.viewAllStudents();
				map.addAttribute("students", students);
				return "UpdateStudent";
			}
			map.addAttribute("msg", "Student not found");
			List<StudentDTO> students = service.viewAllStudents();
			map.addAttribute("students", students);
			return "UpdateStudent";
		}
		map.addAttribute("msg", "Please login first");
		return "LoginPage";
	}

	@GetMapping("/searchStudent")
	private String searchStudent() {
		return "SearchStudent";
	}
	@PostMapping("/searchStudent")
	public String searchStudent1(ModelMap map,@RequestParam int id) {
	StudentDTO student=service.searchStudent(id);
	if(student!=null) {
		map.addAttribute("student",student);
		return "SearchStudent";
	}
	map.addAttribute("msg","no such id present");
	return "SearchStudent";
	
	}

}
