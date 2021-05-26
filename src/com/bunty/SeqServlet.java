package com.bunty;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sq")
public class SeqServlet extends HttpServlet {
	public void  doGet(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		PrintWriter out = res.getWriter();
//		out.print("welcome....");
		
		
//		int i = (int) req.getAttribute("key");              // simple method		

		// ----------------- Redirect Method --------------------
		
//		int i = Integer.parseInt(req.getParameter("key"));   //(1) URL sendRedirect method
		
		HttpSession session = req.getSession();
		int i = (int) session.getAttribute("key");           //(2) Session method		
		
//		int i=0;
//		Cookie cookies[]=req.getCookies();
//		for(Cookie c: cookies)                               //(3) Cookie method
//		{
//			if(c.getName().equals("key"))
//				i = Integer.parseInt(c.getValue());
//		}
		
		
		i=i*i;
		out.println("<html><body><center><p style=\"color:red\">");
		out.println("Our result is : "+i);
		out.println("<br><br>using servlet...");
		out.println("</p></center>");
		System.out.println("sq called...");
		
		//------------- ServletConfig and ServletContext ---------------------
//		//( 1 ) ServletContext		
//		ServletContext ctx = getServletContext();
//		String str = ctx.getInitParameter("Name");
//		String str1 = ctx.getInitParameter("Phone");
//		out.println("\n"+str+" uses "+str1+".");
//		
//		//( 2 ) ServletConfig		
//		ServletConfig cg = getServletConfig();
//		String str2 = cg.getInitParameter("Name");
//		out.println("\n"+str2+" uses "+str1+".");
		out.println("</body></html>");
	}

}
