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

/**
 * Servlet implementation class xgpass
 */
public class xgpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xgpass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.print("进入修改密码");
		String            driverclass = /* getServletConfig(). */getServletContext().getInitParameter("driver");
	     String   username = /* getServletConfig(). */getServletContext().getInitParameter("username");
	     String   password = /* getServletConfig(). */getServletContext().getInitParameter("password");
	    String    url = /* getServletConfig(). */getServletContext().getInitParameter("url");
	                     
  try{  
  	req.setCharacterEncoding("UTF-8");
	res.setContentType("text/html;charset=UTF-8");  
  	PrintWriter    	pw=res.getWriter();
      //返回登陆页面  
 // String acc =req.getSession().getAttribute("acc").toString();  
 // String pass = req.getParameter("pass1");  
  //String  passwdcheck= req.getParameter("passwdcheck");  
  String acc = req.getParameter("username");  
  String pass= req.getParameter("passwd");  
  String pass1= req.getParameter("newpasswd1");  
  String pass2= req.getParameter("newpasswd2");  
 // String teamname=req.getParameter("teamname");
  
  
  //两个新密码不同
  HttpSession session=req.getSession();
  if(!pass1.equals(pass2)){
  
	 session.setAttribute("error", "两次输入的密码不同");
	 res.sendRedirect("ErrorPage.jsp");
	 
  return; }
  
  
  //如果输入的密码不正确
  
  
	 
  
  Class.forName(driverclass).newInstance(); 
  	Connection  con=DriverManager.getConnection(url,username,password); 
  //	Statement stmt=con.createStatement();
  	
  	
  	
	java.sql.PreparedStatement pstmt=con.prepareStatement("select count(*) c from ndbc_user where acc=? and pass=?");
		pstmt.setString(1, acc);
		pstmt.setString(2, pass);
	ResultSet	prs=pstmt.executeQuery();
	prs.next();

	
if(prs.getInt("c")==0){  
session.setAttribute("error", "您输入的密码不正确");
res.sendRedirect("ErrorPage.jsp");

return;}

prs.close();
  	
  	
  		//  pw.println("<h1>zhixingqian2</h1>");  
  			 
  		 	//	ResultSet	rs=stmt.executeQuery("select * from ndbc_user");
con.close();
Connection  con1=DriverManager.getConnection(url,username,password); 
  		 		java.sql.PreparedStatement pstmt1=con1.prepareStatement("update ndbc_user set pass=? where acc=?");
  		 		pstmt1.setString(1, pass1);
  		 		pstmt1.setString(2, acc);
  		 		
  		 		
  		 pstmt1.execute();
  		  pstmt1.close();
  		 session.setAttribute("error", "更新密码成功");
  		 res.sendRedirect("ErrorPage.jsp");
  		 
  	
 // if(stmt!=null)stmt.close();
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(req, res);
		
	}

}
