package com.bunty;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bunty.dao.SignUpDao;
import com.bunty.model.*;
import com.bunty.dao.StudentDao;

import java.sql.*;

@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	
	private StudentDao studentDao;

    public void init() {
    	studentDao = new StudentDao();
    }
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String st = "skip";
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		 student student = new student();
		 
		 student.setUsername(uname);
		 student.setPassword(pass);
		 
		 try {
			 	
			 	studentDao.registerEmployee(student);
			 	
//	            employeeDao.registerEmployee(employee);
	        } catch (Exception e) {
	            
	            e.printStackTrace();
	        }
		 
		 HttpSession session = request.getSession();
		 session.setAttribute("username", uname);
		 response.sendRedirect("welcome.jsp");
		 
		
//		
	}

}
