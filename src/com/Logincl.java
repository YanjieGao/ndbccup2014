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

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class Logincl
 */
public class Logincl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static int balance=0;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	  public Logincl() {
        super();
        // TODO Auto-generated constructor stub
       }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    public void doGet(HttpServletRequest req, HttpServletResponse res){  
	    //业务逻辑  
    //	res.setCharacterEncoding("UTF-8");
    	//res.setContentType("text/html;charset=UTF-8");
    	  String            driverclass = /* getServletConfig(). */getServletContext().getInitParameter("driver");
    	     String   username = /* getServletConfig(). */getServletContext().getInitParameter("username");
    	     String   password = /* getServletConfig(). */getServletContext().getInitParameter("password");
    	    String    url = /* getServletConfig(). */getServletContext().getInitParameter("url");
    	                     
	    try{  
	    	PrintWriter    	pw=res.getWriter();
	        //返回登陆页面  
	       String u = req.getParameter("username");  
	    String p = req.getParameter("passwd");  
	    //验证  
	   // try{
	    //	String  url="jdbc:mysql://localhost:3306/test";
	    	Class.forName(driverclass).newInstance(); 
	    	Connection  con=DriverManager.getConnection(url,username,password); 
	    	Statement stmt=con.createStatement();
	     	String ss="select count(*)  from ndbc_user ";
	    		 		java.sql.PreparedStatement pstmt=con.prepareStatement("select count(*) c from ndbc_user where acc=? and pass=?");
	     		 		pstmt.setString(1, u);
	    		 		pstmt.setString(2, p);
	    		 	ResultSet	prs=pstmt.executeQuery();
	    		 	prs.next();
		    	HttpSession session = req.getSession(); 
	    		 	
	    if(prs.getInt("c")>0){  
	        //合法  
	        //跳转到welcome  
	    //	 res.sendRedirect("wel");//你要跳转的servlet的url  
	   
          session.setAttribute("acc", u);
          session.setAttribute("pass", p);
     	 // pw.println("<h1>登陆成功！</h1><br/><input type=\"button\" value=\"返回登陆界面\" onClick=\"javascript:location.href=&apos;login.jsp&apos;\"><br/>"
	    //	  		+ "<input type=\"button\" value=\"返回主页\" onClick=\"javascript:location.href=&apos;index.jsp&apos;\">");  
          balance++;
          //增加负载均衡逻辑 在两个地方部署服务器
          if(balance%2==0)
	         res.sendRedirect("index.jsp"); 
          else res.sendRedirect("http://222.29.197.232:8080/ndbccup2014/login.jsp");
	    }  
	    else{  
	        //不合法  
	        //跳转  
	       // res.sendRedirect("login");//你要跳转的servlet的url  
	    	session.setAttribute("error", "用户名或密码错误");
	    	res.sendRedirect("ErrorPage.jsp");
	    	//  pw.println("<h1>用户名或密码错误</h1><br/><input type=\"button\" value=\"返回登陆界面\" onClick=\"javascript:location.href=&apos;login.jsp&apos;\"><br/>"
	    	  //		+ "<input type=\"button\" value=\"返回主页\" onClick=\"javascript:location.href=&apos;index.jsp&apos;\">");  
	    	  
	    }  
	    if(stmt!=null)stmt.close();
    	if(con!=null)con.close();
    	if(prs!=null)prs.close();
    	res.setHeader( "Pragma", "no-cache" );  
    	res.setDateHeader("Expires", 0);  

    	res.addHeader( "Cache-Control", "no-cache" );  
    	res.addHeader( "Cache-Control", "no-store" );  
    	res.addHeader( "Cache-Control", "must-revalidate" );
	      
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
