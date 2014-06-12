package com;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.mail.internet.MimeUtility;

//import org.apache.catalina.Session;
import org.apache.commons.mail.EmailAttachment;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.MultiPartEmail;
import org.apache.commons.mail.SimpleEmail;

/**
 * Servlet implementation class ForgetPass
 */
public class tongzhi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tongzhi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try{
		String emailServer = "smtp.qq.com"; 
		 String userName = "2272760120@qq.com";  
		 String emailpassword = "wanweiwang";  
	String emailEncoding = "UTF-8";  //Email编码
	
	String  webaccString=null;
	String  webpass=null;
		 /**
		   * 测试发送不包含附件的简单纯文本邮件
		   * @throws EmailException
		   */
	request.setCharacterEncoding("utf-8");
	 String            driverclass = /* getServletConfig(). */getServletContext().getInitParameter("driver");
     String   username = /* getServletConfig(). */getServletContext().getInitParameter("username");
     String   password = /* getServletConfig(). */getServletContext().getInitParameter("password");
    String    url = /* getServletConfig(). */getServletContext().getInitParameter("url");
                                        
                HttpSession session=request.getSession();      
	    	Class.forName(driverclass).newInstance(); 
	    	Connection  con=DriverManager.getConnection(url,username,password); 
	    	Statement stmt=con.createStatement();
	    		//String ss="select *  from ndbc_user where  acc='"+u+"' and pass='"+p+"'";
	    			 
	    		 	//	ResultSet	rs=stmt.executeQuery("select * from ndbc_user");
	    		 		java.sql.PreparedStatement pstmt=con.prepareStatement("select acc  from ndbc_user  ");
	    		 	String msg=	request.getParameter("username");  
	    		 	//	pstmt.setString(1,acc );
	    		 		//pw.println("<h1>zhixingzhong  "+ss+"</h1>"); 
	    		 		 	ResultSet	prs=pstmt.executeQuery();
	    		 //	rs.next();
	    		 //	prs.next();
	    		 	
	    		 	//webpass=;
	    		 while (prs.next()!=false)	
	    		 {    		 	
   String e=prs.getString("acc");
   //String pString=prs.getString("pass");
	    			 SimpleEmail email = new SimpleEmail();
		   email.setHostName(emailServer);  
		   //服务器名
		   email.setAuthentication(userName, emailpassword);    //用户名，密码
		   email.setCharset(emailEncoding);    //邮件编码方式
		   
		   email.addTo(e,"万维网知识提取竞赛"); //收信人
		   email.setFrom("2272760120@qq.com","万维网知识提取竞赛"); //发信人
		   email.setSubject("第一届搜狗-中国数据库学术年会智慧杯万维网知识提取竞赛");  //标题
		   email.setMsg(msg);  //正文

		   email.send();   
		   session.setAttribute("error", "发送成功");
		   
		//   response.sendRedirect("ErrorPage.jsp");
		   }//发送"}
	
	//else {
	//	session.setAttribute("error", "您输入的邮箱不存在");
	    		 
	//	}
	
	//response.sendRedirect("ErrorPage.jsp");
	//}
		   
		}catch(Exception e)
		
		{
			 HttpSession session=request.getSession();
			session.setAttribute("error", "您输入的邮箱不存在");
		
		response.sendRedirect("ErrorPage.jsp");   }
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}