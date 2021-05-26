package com.bunty;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/add")
public class AddServlet extends HttpServlet
{
	public void  doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
	{
		int i=Integer.parseInt(req.getParameter("num1"));
		int j=Integer.parseInt(req.getParameter("num2"));
		
		int k=i+j;
//		PrintWriter out =res.getWriter();
//		out.println("Result is: "+ k);
//		out.println("\nNice....");
		
//		req.setAttribute("key", k);
//		RequestDispatcher rd = req.getRequestDispatcher("sq");         // simple method.   In simple method we do not use sendRedirect()
//		rd.forward(req, res);
		

			
		
		// ----------------------sendRedirect---------------------
		
//		res.sendRedirect("sq?key="+k);                    // (1) URL Rewriting
		
		HttpSession session = req.getSession();           // (2) session method
		session.setAttribute("key", k);
		
//		Cookie cookie = new Cookie("key",k + "");         // (3) Cookie method
//		res.addCookie(cookie);
		
		

		
		res.sendRedirect("sq");
	}
}
