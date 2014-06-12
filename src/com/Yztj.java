package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.catalina.Session;

/**
 * Servlet implementation class Yztj
 */
public class Yztj extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Yztj() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 	                     
		PrintWriter    	pw=response.getWriter();
        
        pw.println("<html>");  
        pw.println("<body>");  
        pw.println("<h1>yaztj</h1></body></html>"); 
		//response.sendRedirect("/yztj.jsp");
		HttpSession session=request.getSession();
		Object obj=session.getAttribute("acc");
		
		pw.println("yanzhengtijiao"); 
		if(obj!=null)
		{  response.sendRedirect("/ndbccup2014/yztj.jsp");}
		else {
			response.sendRedirect("/ndbccup2014/login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 this.doGet(request, response);  
	}

}
