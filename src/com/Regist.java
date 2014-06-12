package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.catalina.Session;

/**
 * Servlet implementation class Regist
 */
public class Regist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
      public Regist() {
        super();
        // TODO Auto-generated constructor stub
       }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    public void doGet(HttpServletRequest req, HttpServletResponse res){  
	    //业务逻辑  
    	
    	
    	  String            driverclass = /* getServletConfig(). */getServletContext().getInitParameter("driver");
    	     String   username = /* getServletConfig(). */getServletContext().getInitParameter("username");
    	     String   password = /* getServletConfig(). */getServletContext().getInitParameter("password");
    	    String    url = /* getServletConfig(). */getServletContext().getInitParameter("url");
    	                     
	    try{  
	    	req.setCharacterEncoding("UTF-8");
    	res.setContentType("text/html;charset=UTF-8");  
	    	PrintWriter    	pw=res.getWriter();
	        //返回登陆页面  
	    String acc = req.getParameter("acc");  
	    String pass = req.getParameter("pass1");  
	    //String  passwdcheck= req.getParameter("passwdcheck");  
	    String team = req.getParameter("team");  
	    String linkman= req.getParameter("linkman");  
	    String tel = req.getParameter("tel");  
	    String company= req.getParameter("company");  
	    String teamname=req.getParameter("teamname");
	    
	    Class.forName(driverclass).newInstance(); 
	    	Connection  con=DriverManager.getConnection(url,username,password); 
	    	Statement stmt=con.createStatement();
	    		  pw.println("<h1>zhixingqian2</h1>");  
	    			 
	    		 	//	ResultSet	rs=stmt.executeQuery("select * from ndbc_user");
	    		 		java.sql.PreparedStatement pstmt=con.prepareStatement("insert into ndbc_user (acc,pass,team,linkman,tel,company,teamname) values (?,?,?,?,?,?,?)");
	    		 		pstmt.setString(1, acc);
	    		 		pstmt.setString(2, pass);
	    		 		pstmt.setString(3, team);
	    		 		pstmt.setString(4, linkman);
	    		 		pstmt.setString(5, tel);
	    		 		pstmt.setString(6, company);
	    		 		pstmt.setString(7, teamname);
	    		 pstmt.execute();
	    		 HttpSession session=req.getSession();
	    		 session.setAttribute("error", "注册成功");
	    		 res.sendRedirect("ErrorPage.jsp");
	    	
	    if(stmt!=null)stmt.close();
    	if(con!=null)con.close();
    //	if(prs!=null)prs.close();
    	      
	    }  
	    catch(Exception ex){  
	        ex.printStackTrace();  
	       // pw.println("<h1>yichang</h1>");
	        HttpSession session=req.getSession();
   		 session.setAttribute("error", ex.toString());
   		 
   		 try{
   		 res.sendRedirect("ErrorPage.jsp");}
   		 catch(Exception e){}
	      
	  	  
	    }  
	      
	          
	    }  
	      
	    public void doPost(HttpServletRequest req, HttpServletResponse res){  
	          
	        this.doGet(req, res);  
	    }  
}
