package com.jspiders.springmvc.service;

import java.util.List;

import com.jspiders.springmvc.dto.StudentDTO;

public interface StudentServiceInterface {
	void addStudent(String name,String username,String email,String password);
	StudentDTO login(String username,String password);
	List<StudentDTO> viewAllStudents();
	StudentDTO removeStudent(int id);
	StudentDTO searchStudent(int id);
	StudentDTO updateStudent(int id, String name, String email, String userName, String password);
	
}
